; bank 6 — PRG $30000-$37FFF, mapped at $8000-$FFFF


sub_B6_8000:                    ; from 37fdc
  8000  6C 13 00  JMP ($0013)                   ; 30000 ×172717

jt_B6_8003:                    ; from 30000
  8003  4C 2F 86  JMP loc_B6_862F               ; 30003 ×62670

jt_B6_8006:                    ; from 30000
  8006  4C BB D5  JMP loc_B6_D5BB               ; 30006 ×52
  8009  .byte 4C FC DA                                          ; 30009

jt_B6_800C:                    ; from 30000
  800C  4C 6D A1  JMP loc_B6_A16D               ; 3000C ×49

jt_B6_800F:                    ; from 30000
  800F  4C F5 A4  JMP loc_B6_A4F5               ; 3000F ×51179

jt_B6_8012:                    ; from 30000
  8012  4C 8E A6  JMP loc_B6_A68E               ; 30012 ×1008

jt_B6_8015:                    ; from 30000
  8015  4C E8 90  JMP loc_B6_90E8               ; 30015 ×49

jt_B6_8018:                    ; from 30000
  8018  4C 54 91  JMP loc_B6_9154               ; 30018 ×3577

jt_B6_801B:                    ; from 30000
  801B  4C BA 91  JMP loc_B6_91BA               ; 3001B ×58

jt_B6_801E:                    ; from 30000
  801E  4C DB 91  JMP loc_B6_91DB               ; 3001E ×3720

jt_B6_8021:                    ; from 30000
  8021  4C 5C 99  JMP loc_B6_995C               ; 30021 ×14940

jt_B6_8024:                    ; from 30000
  8024  4C B9 9C  JMP loc_B6_9CB9               ; 30024 ×48

jt_B6_8027:                    ; from 30000
  8027  4C 53 9E  JMP loc_B6_9E53               ; 30027 ×29551
  802A  .byte 4C 89 AE                                          ; 3002A

jt_B6_802D:                    ; from 30000
  802D  4C B2 90  JMP loc_B6_90B2               ; 3002D ×107

jt_B6_8030:                    ; from 30000
  8030  4C C0 97  JMP loc_B6_97C0               ; 30030 ×3

jt_B6_8033:                    ; from 30000
  8033  4C 8A A8  JMP loc_B6_A88A               ; 30033 ×51

jt_B6_8036:                    ; from 30000
  8036  4C B9 A9  JMP loc_B6_A9B9               ; 30036 ×5546

jt_B6_8039:                    ; from 30000
  8039  4C 70 AA  JMP loc_B6_AA70               ; 30039 ×50
  803C  4C 3B AB  JMP $AB3B                     ; 3003C ×0

jt_B6_803F:                    ; from 30000
  803F  4C 8A AB  JMP loc_B6_AB8A               ; 3003F ×57
  8042  4C E5 AB  JMP $ABE5                     ; 30042 ×0

jt_B6_8045:                    ; from 30000
  8045  4C 24 AC  JMP loc_B6_AC24               ; 30045 ×1
  8048  .byte 4C 28 A2                                          ; 30048
  804B  4C B8 AC  JMP $ACB8                     ; 3004B ×0
  804E  4C AB A9  JMP sub_B6_A9AB               ; 3004E ×0
  8051  4C F7 AC  JMP $ACF7                     ; 30051 ×0
  8054  4C 94 A9  JMP $A994                     ; 30054 ×0
  8057  4C 7A AD  JMP $AD7A                     ; 30057 ×0
  805A  4C 15 AE  JMP sub_B6_AE15               ; 3005A ×0
  805D  4C 74 8E  JMP $8E74                     ; 3005D ×0
  8060  4C 1B 8F  JMP $8F1B                     ; 30060 ×0

jt_B6_8063:                    ; from 30000
  8063  4C B2 8F  JMP loc_B6_8FB2               ; 30063 ×1
  8066  .byte FF FF FF FF FF FF FF FF FF FF                     ; 30066

sub_B6_8070:                    ; from 3007f 31ebf
  8070  A2 13     LDX #$13                      ; 30070 ×3914394

loc_B6_8072:                    ; from 30073
  8072  CA        DEX                           ; 30072 ×74373486
  8073  D0 FD     BNE loc_B6_8072               ; 30073 ×74373486
  8075  EA        NOP                           ; 30075 ×3914394
  8076  EA        NOP                           ; 30076 ×3914394
  8077  98        TYA                           ; 30077 ×3914394
  8078  29 07     AND #$07                      ; 30078 ×3914394
  807A  C9 03     CMP #$03                      ; 3007A ×3914394
  807C  B0 00     BCS $807E                     ; 3007C ×3914394
  807E  C8        INY                           ; 3007E ×3914394
  807F  D0 EF     BNE sub_B6_8070               ; 3007F ×3914394
  8081  60        RTS                           ; 30081 ×23889
  8082  .byte 21 E3 00 00 7A 7B 7C 7D 7E 7F 80 81 82 22 03 00   ; 30082
  8092  .byte 0C 8F 90 91 92 93 94 95 96 97 22 23 00 A6 A7 A8   ; 30092
  80A2  .byte A9 AA AB AC AD AE AF 22 43 00 C0 C1 C2 C3 C4 C5   ; 300A2
  80B2  .byte C6 C7 C8 C9 22 63 00 DC DD DE DF E0 E1 E2 E3 E4   ; 300B2
  80C2  .byte E5 22 83 00 01 02 03 04 05 06 07 08 09 0A 22 A3   ; 300C2
  80D2  .byte 17 18 19 1A 1B 1C 1D 1E 1F 20 21 22 C3 2E 2F 30   ; 300D2
  80E2  .byte 31 32 33 34 35 36 37 38 22 E3 44 45 46 47 48 49   ; 300E2
  80F2  .byte 4A 4B 4C 4D 4E 23 03 00 5B 5C 5D 5E 5F 60 61 62   ; 300F2
  8102  .byte 63 64 23 23 71 72 73 74 75 76 77 78 79 7A 7B 23   ; 30102
  8112  .byte 43 84 85 86 87 88 00 00 89 8A 8B 8C 23 63 00 00   ; 30112
  8122  .byte 93 00 00 00 00 00 00 00 94 01 02 03 04 09 0A 0B   ; 30122
  8132  .byte 0C 11 12 13 14 19 1A 1B 1C 05 06 07 08 0D 0E 0F   ; 30132
  8142  .byte 10 15 16 17 18 1D 1E 1F 20                        ; 30142
  814B  .byte 21 22 23 24 29 2A 2B 2C 31 32 33 34 39 3A 3B 3C   ; 3014B data, read by 3057f 3057a 30575 30570
  815B  .byte 25 26 27 28 2D 2E 2F 30 35 36 37 38 3D 3E 3F 40   ; 3015B data, read by 3057f 3057a 30575 30570
  816B  .byte 41 02 03 04 42 0A 0B 0C 43 12 13 14 44 1A 1B 1C   ; 3016B data, read by 3057f 3057a 30575 305ce (+3)
  817B  .byte 05 06 07 45 0D 0E 0F 46 15 16 17 47 1D 1E 1F 48   ; 3017B data, read by 3057f 3057a 30575 30570
  818B  .byte 25 26 27 49 2D 2E 2F 4A 35 36 37 4B 3D 3E 3F 4C   ; 3018B
  819B  .byte 4D 4E 4F 50 09 0A 0B 0C 11 12 13 14 19 1A 1B 1C   ; 3019B data, read by 3057f 3057a 30575 30570
  81AB  .byte 51 52 53 54 0D 0E 0F 10 15 16 17 18 1D 1E 1F 20   ; 301AB data, read by 3057f 3057a 30575 30570
  81BB  .byte 55 56 57 58 59 5A 5B 5C 5D 5E 5F 60 61 62 63 64   ; 301BB data, read by 3057f 3057a 30575 30570
  81CB  .byte BA BA 65 66 67 68 69 6A 6B 00 6D 99 6F 70 9A 9B   ; 301CB
  81DB  .byte 6C 6C 6B 6F 6E 6F 6F 70 73 74 75 99 76 77 9A 9B   ; 301DB
  81EB  .byte 71 95 94 95 72 71 96 97 6C 72 71 95 6C 6C 72 71   ; 301EB
  81FB  .byte 6C 6C 6C 72 6C 6C 6C 6C 6C 6C 6C 6C A3 A3 A3 A3   ; 301FB
  820B  .byte 71 95 94 95 72 71 96 97 6C 72 71 95 A3 A3 72 71   ; 3020B
  821B  .byte B2 B3 00 00 B4 B5 B6 00 BB BC BD BE 7B 7C 7D 7D   ; 3021B data, read by 3057f 3057a 30575 30570
  822B  .byte B2 B3 00 00 B7 B8 B9 00 BF C0 78 79 7E 7F 80 7A   ; 3022B data, read by 3057f 3057a 30575 30570
  823B  .byte 9C 00 00 00 9D 9E 00 00 9F A0 00 00 A1 A2 00 00   ; 3023B data, read by 3057f 3057a 30575 30570
  824B  .byte BA BA BA BA 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C   ; 3024B data, read by 3057f 3057a 30575 30570
  825B  .byte 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C A3 A3 A3 A3   ; 3025B data, read by 3057f 3057a 30575 30570
  826B  .byte BA BA BA BA 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6E   ; 3026B
  827B  .byte 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C A3 A3 A3 6E   ; 3027B
  828B  .byte 98 99 98 91 9A 9B 91 92 98 91 92 6C 91 92 6C 6C   ; 3028B
  829B  .byte 98 99 98 91 9A 9B 91 92 98 91 92 6C 91 92 A3 A3   ; 3029B
  82AB  .byte 92 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C A3 A3 A3 A3   ; 302AB
  82BB  .byte 51 52 53 93 0D 0E 0F 46 15 16 17 47 1D 1E 1F 48   ; 302BB
  82CB  .byte 81 82 BA BA 83 84 85 6C 94 86 87 88 96 97 89 8A   ; 302CB
  82DB  .byte 87 88 6C 6C 89 8A 8B 6C 94 8C 8D 8E 96 97 8F 90   ; 302DB
  82EB  .byte 94 95 94 95 96 97 96 97 94 95 94 95 96 97 96 97   ; 302EB
  82FB  .byte BA BA BA BA 6C 6C 6C 6C 6C 6C 6C 6C 8B 6C 6C 6C   ; 302FB
  830B  .byte 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 8B A3 A3 A3   ; 3030B
  831B  .byte 98 99 98 99 9A 9B 9A 9B 98 99 98 99 9A 9B 9A 9B   ; 3031B
  832B  .byte 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C 6C   ; 3032B
  833B  .byte 00 00 00 A4 00 00 00 A5 00 00 A6 A7 00 00 A8 A9   ; 3033B
  834B  .byte 00 00 AA AB 00 00 AC AD 00 00 AE AF 00 00 B0 B1   ; 3034B
  835B  .byte B2 B3 AA AB B7 B8 AC AD BF C0 BC 79 7E 7F 80 7A   ; 3035B
  836B  .byte 55 56 57 58 00 5A 5B 5C 00 00 60 00 00 00 00 00   ; 3036B data, read by 3057f 3057a 30575 30570
  837B  .byte B4 B5 B6 00 BB BC BD BE 7B 7C 7D 7D C5 C6 C5 C6   ; 3037B
  838B  .byte 00 00 00 00 00 00 00 00 00 00 00 00 B2 B3 00 00   ; 3038B
  839B  .byte C3 C4 C3 C4 C4 C3 C4 C3 C3 C4 C3 C4 C2 C1 C2 C1   ; 3039B data, read by 3057f 3057a 30575 30570
  83AB  .byte C3 C4 C3 C4 C4 C3 C4 C3 C3 C4 C3 C4 C4 C3 C4 C3   ; 303AB data, read by 3057f 3057a 30575 30570
  83BB  .byte C3 C7 00 92 C7 00 92 6C 00 92 6C 6C 92 6C 6C 6C   ; 303BB data, read by 3057f 3057a 30575 30570
  83CB  .byte C3 C4 C3 C4 C4 C3 C4 C3 C3 C4 C3 C7 C2 C1 C2 C9   ; 303CB data, read by 3057f 3057a 30575 30570
  83DB  .byte C3 C4 C3 C4 C4 C3 C4 C3 C3 C4 C3 C7 C4 C3 C7 00   ; 303DB data, read by 3057f 3057a 30575 30570
  83EB  .byte BB BC BD BE 7B 7C 02 1D CD 44 CC CD C5 C6 C8 08   ; 303EB data, read by 3057f 3057a 30575 30570
  83FB  .byte C1 C2 C3 C4 CB C1 C2 C3 CA CB C1 C2 6C CA CB C1   ; 303FB
  840B  .byte 6C 6C CA CB 6C 6C 6C CA 6C 6C 6C 6C A3 A3 A3 A3   ; 3040B
  841B  .byte BA BA CA CB 6C 6C 6C CA 6C 6C 6C 6C 6C 6C 6C 6C   ; 3041B
  842B  .byte C1 C2 C3 C4 CB C1 C2 C3 CA CB C1 C2 A3 CA CB C1   ; 3042B
  843B  .byte 01 02 03 04 09 0A 00 0C CE 2E 00 CC C5 C6 C5 C6   ; 3043B data, read by 3057f 3057a 30575 30570
  844B  .byte 05 06 07 08 0D 0E 0F 10 CD CC CD CC C5 C6 C5 C6   ; 3044B data, read by 3057f 3057a 30575 30570
  845B  .byte 77 99 98 99 9A 9B 9A 9B 98 99 98 99 9A 9B 9A 9B   ; 3045B
  846B  .byte 94 95 94 86 96 97 96 97 94 95 94 95 96 97 96 97   ; 3046B
  847B  .byte 33 4E 4F 50 08 0A 0B 0C 08 12 13 14 08 1A 1B 1C   ; 3047B
  848B  .byte 45 12 23 24 33 2A 2B 2C 33 32 33 34 33 3A 3B 3C   ; 3048B
  849B  .byte B2 B3 AA AB B7 B8 AC AD BF C0 7B CC 7E 7F 80 45   ; 3049B
  84AB  .byte 9C 00 00 00 9D 9E 00 00 9F A0 00 00 A1 A2 B2 B3   ; 304AB
  84BB  .byte 00 00 00 A4 00 00 00 A5 00 00 A6 A7 B2 B3 A8 A9   ; 304BB
  84CB  .byte 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 304CB data, read by 3057f 3057a 30575 30570
  84DB  .byte 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 304DB
  84EB  .byte 00 00                                             ; 304EB
  84ED  .byte 00 00 00 00                                       ; 304ED data, read by 305ab
  84F1  .byte 00                                                ; 304F1
  84F2  .byte 00 00 AA                                          ; 304F2 data, read by 305ab
  84F5  .byte 55 55 55 55 55                                    ; 304F5
  84FA  .byte 00 00 88 55 55                                    ; 304FA data, read by 305ab
  84FF  .byte 55 55 55 55 55 00 55 55 55 55 55 55 55 00 00 00   ; 304FF
  850F  .byte AA                                                ; 3050F data, read by 305ab
  8510  .byte 00 00                                             ; 30510
  8512  .byte FF FF 57 FF FF F0                                 ; 30512 data, read by 305ab
  8518  .byte DF 55 55 DF                                       ; 30518
  851C  .byte F0 F0                                             ; 3051C data, read by 305ab
  851E  .byte 55 55 00 00 00 00 00                              ; 3051E
  8525  .byte 00                                                ; 30525 data, read by 305ab
  8526  .byte 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 30526
  8536  .byte 00 00 00 00 00 00 00 00 00 00                     ; 30536
  8540  .byte 00                                                ; 30540 data, read by 305ab
  8541  .byte 00 00 00 00 00 00 00 00 00 00                     ; 30541

loc_B6_854B:                    ; from 37f5a
  854B  A2 01     LDX #$01                      ; 3054B ×214
  854D  D0 3E     BNE loc_B6_858D               ; 3054D ×214

loc_B6_854F:                    ; from 305ba
  854F  A2 08     LDX #$08                      ; 3054F ×214
  8551  AD A0 01  LDA $01A0                     ; 30551 ×214
  8554  8D A8 01  STA $01A8                     ; 30554 ×214
  8557  A5 20     LDA $20                       ; 30557 ×214
  8559  F0 22     BEQ loc_B6_857D               ; 30559 ×214
  855B  A4 30     LDY $30                       ; 3055B ×212
  855D  F0 07     BEQ $8566                     ; 3055D ×212
  855F  CA        DEX                           ; 3055F ×212
  8560  AC A0 01  LDY $01A0                     ; 30560 ×212
  8563  8C A7 01  STY $01A7                     ; 30563 ×212
  8566  C9 08     CMP #$08                      ; 30566 ×212
  8568  F0 0E     BEQ $8578                     ; 30568 ×212
  856A  C9 10     CMP #$10                      ; 3056A ×212
  856C  F0 05     BEQ $8573                     ; 3056C ×212

loc_B6_856E:                    ; from 305b3
  856E  A4 18     LDY $18                       ; 3056E ×1498
  8570  B1 19     LDA ($19),Y                   ; 30570 ×1498
  8572  48        PHA                           ; 30572 ×1498
  8573  A4 17     LDY $17                       ; 30573 ×1498
  8575  B1 19     LDA ($19),Y                   ; 30575 ×1498
  8577  48        PHA                           ; 30577 ×1498
  8578  A4 16     LDY $16                       ; 30578 ×1498
  857A  B1 19     LDA ($19),Y                   ; 3057A ×1498
  857C  48        PHA                           ; 3057C ×1498

loc_B6_857D:                    ; from 30559
  857D  A4 15     LDY $15                       ; 3057D ×1500
  857F  B1 19     LDA ($19),Y                   ; 3057F ×1500
  8581  48        PHA                           ; 30581 ×1500
  8582  A5 1B     LDA $1B                       ; 30582 ×1500
  8584  38        SEC                           ; 30584 ×1500
  8585  E5 21     SBC $21                       ; 30585 ×1500
  8587  85 1B     STA $1B                       ; 30587 ×1500
  8589  B0 02     BCS loc_B6_858D               ; 30589 ×1500
  858B  C6 1C     DEC $1C                       ; 3058B ×424

loc_B6_858D:                    ; from 30589 3054d
  858D  A0 00     LDY #$00                      ; 3058D ×1714
  858F  84 1A     STY $1A                       ; 3058F ×1714
  8591  4C 5D FF  JMP loc_B6_FF5D               ; 30591 ×1714

loc_B6_8594:                    ; from 37f69
  8594  A8        TAY                           ; 30594 ×1714
  8595  0A        ASL A                         ; 30595 ×1714
  8596  26 1A     ROL $1A                       ; 30596 ×1714
  8598  0A        ASL A                         ; 30598 ×1714
  8599  26 1A     ROL $1A                       ; 30599 ×1714
  859B  0A        ASL A                         ; 3059B ×1714
  859C  26 1A     ROL $1A                       ; 3059C ×1714
  859E  0A        ASL A                         ; 3059E ×1714
  859F  26 1A     ROL $1A                       ; 3059F ×1714
  85A1  65 C5     ADC $C5                       ; 305A1 ×1714
  85A3  85 19     STA $19                       ; 305A3 ×1714
  85A5  A5 1A     LDA $1A                       ; 305A5 ×1714
  85A7  65 C6     ADC $C6                       ; 305A7 ×1714
  85A9  85 1A     STA $1A                       ; 305A9 ×1714
  85AB  B1 C3     LDA ($C3),Y                   ; 305AB ×1714
  85AD  25 1F     AND $1F                       ; 305AD ×1714
  85AF  9D 9F 01  STA $019F,X                   ; 305AF ×1714
  85B2  CA        DEX                           ; 305B2 ×1714
  85B3  D0 B9     BNE loc_B6_856E               ; 305B3 ×1714
  85B5  BA        TSX                           ; 305B5 ×428
  85B6  30 21     BMI loc_B6_85D9               ; 305B6 ×428
  85B8  E0 10     CPX #$10                      ; 305B8 ×428
  85BA  B0 93     BCS loc_B6_854F               ; 305BA ×428
  85BC  A4 18     LDY $18                       ; 305BC ×214
  85BE  B1 19     LDA ($19),Y                   ; 305BE ×214
  85C0  48        PHA                           ; 305C0 ×214
  85C1  BA        TSX                           ; 305C1 ×214
  85C2  30 15     BMI loc_B6_85D9               ; 305C2 ×214
  85C4  A4 17     LDY $17                       ; 305C4 ×214
  85C6  B1 19     LDA ($19),Y                   ; 305C6 ×214
  85C8  48        PHA                           ; 305C8 ×214
  85C9  BA        TSX                           ; 305C9 ×214
  85CA  30 0D     BMI loc_B6_85D9               ; 305CA ×214
  85CC  A4 16     LDY $16                       ; 305CC ×2
  85CE  B1 19     LDA ($19),Y                   ; 305CE ×2
  85D0  48        PHA                           ; 305D0 ×2
  85D1  BA        TSX                           ; 305D1 ×2
  85D2  30 05     BMI loc_B6_85D9               ; 305D2 ×2
  85D4  A4 15     LDY $15                       ; 305D4 ×0
  85D6  B1 19     LDA ($19),Y                   ; 305D6 ×0
  85D8  48        PHA                           ; 305D8 ×0

loc_B6_85D9:                    ; from 305ca 305d2
  85D9  A9 05     LDA #$05                      ; 305D9 ×214
  85DB  4C 56 FF  JMP loc_B6_FF56               ; 305DB ×214
  85DE  60        RTS                           ; 305DE ×0
  85DF  A5 0C     LDA $0C                       ; 305DF ×0
  85E1  6A        ROR A                         ; 305E1 ×0
  85E2  6A        ROR A                         ; 305E2 ×0
  85E3  6A        ROR A                         ; 305E3 ×0
  85E4  29 C0     AND #$C0                      ; 305E4 ×0
  85E6  09 02     ORA #$02                      ; 305E6 ×0
  85E8  85 19     STA $19                       ; 305E8 ×0
  85EA  B9 93 04  LDA $0493,Y                   ; 305EA ×0
  85ED  F9 83 05  SBC $0583,Y                   ; 305ED ×0
  85F0  85 8C     STA $8C                       ; 305F0 ×0
  85F2  A9 F8     LDA #$F8                      ; 305F2 ×0
  85F4  85 8B     STA $8B                       ; 305F4 ×0
  85F6  B9 84 04  LDA $0484,Y                   ; 305F6 ×0
  85F9  9D 03 02  STA $0203,X                   ; 305F9 ×0
  85FC  A9 BD     LDA #$BD                      ; 305FC ×0
  85FE  9D 01 02  STA $0201,X                   ; 305FE ×0
  8601  A5 19     LDA $19                       ; 30601 ×0
  8603  9D 02 02  STA $0202,X                   ; 30603 ×0
  8606  18        CLC                           ; 30606 ×0
  8607  69 40     ADC #$40                      ; 30607 ×0
  8609  85 19     STA $19                       ; 30609 ×0
  860B  A5 8C     LDA $8C                       ; 3060B ×0
  860D  9D 00 02  STA $0200,X                   ; 3060D ×0
  8610  E8        INX                           ; 30610 ×0
  8611  E8        INX                           ; 30611 ×0
  8612  E8        INX                           ; 30612 ×0
  8613  E8        INX                           ; 30613 ×0
  8614  F0 C8     BEQ $85DE                     ; 30614 ×0
  8616  18        CLC                           ; 30616 ×0
  8617  65 8B     ADC $8B                       ; 30617 ×0
  8619  85 8C     STA $8C                       ; 30619 ×0
  861B  C9 20     CMP #$20                      ; 3061B ×0
  861D  B0 D7     BCS $85F6                     ; 3061D ×0
  861F  A5 8B     LDA $8B                       ; 3061F ×0
  8621  10 09     BPL $862C                     ; 30621 ×0
  8623  B9 93 04  LDA $0493,Y                   ; 30623 ×0
  8626  85 8C     STA $8C                       ; 30626 ×0
  8628  A9 08     LDA #$08                      ; 30628 ×0
  862A  D0 C8     BNE $85F4                     ; 3062A ×0
  862C  4C D5 86  JMP loc_B6_86D5               ; 3062C ×0

loc_B6_862F:                    ; from 30003
  862F  A2 0E     LDX #$0E                      ; 3062F ×62670
  8631  A2 04     LDX #$04                      ; 30631 ×62670
  8633  A5 0B     LDA $0B                       ; 30633 ×62670
  8635  29 01     AND #$01                      ; 30635 ×62670
  8637  F0 02     BEQ loc_B6_863B               ; 30637 ×62670
  8639  A9 0E     LDA #$0E                      ; 30639 ×31354

loc_B6_863B:                    ; from 30637
  863B  A8        TAY                           ; 3063B ×62670

loc_B6_863C:                    ; from 306e0 306eb
  863C  84 15     STY $15                       ; 3063C ×940010
  863E  B9 9E 00  LDA $009E,Y                   ; 3063E ×940010
  8641  A8        TAY                           ; 30641 ×940010
  8642  B9 A2 04  LDA $04A2,Y                   ; 30642 ×940010
  8645  30 0F     BMI loc_B6_8656               ; 30645 ×940010
  8647  A5 10     LDA $10                       ; 30647 ×156714
  8649  C9 05     CMP #$05                      ; 30649 ×156714
  864B  D0 0C     BNE loc_B6_8659               ; 3064B ×156714
  864D  B9 84 04  LDA $0484,Y                   ; 3064D ×8769
  8650  F0 04     BEQ loc_B6_8656               ; 30650 ×8769
  8652  C9 FF     CMP #$FF                      ; 30652 ×7305
  8654  D0 03     BNE loc_B6_8659               ; 30654 ×7305

loc_B6_8656:                    ; from 30645 30650
  8656  4C D5 86  JMP loc_B6_86D5               ; 30656 ×784766

loc_B6_8659:                    ; from 3064b 30654
  8659  84 16     STY $16                       ; 30659 ×155244
  865B  B9 C1 03  LDA $03C1,Y                   ; 3065B ×155244
  865E  C9 67     CMP #$67                      ; 3065E ×155244
  8660  F0 4F     BEQ $86B1                     ; 30660 ×155244
  8662  C9 5F     CMP #$5F                      ; 30662 ×155244
  8664  F0 45     BEQ loc_B6_86AB               ; 30664 ×155244
  8666  C9 30     CMP #$30                      ; 30666 ×153962
  8668  F0 44     BEQ loc_B6_86AE               ; 30668 ×153962
  866A  C9 2D     CMP #$2D                      ; 3066A ×150686
  866C  F0 3A     BEQ $86A8                     ; 3066C ×150686
  866E  C9 2E     CMP #$2E                      ; 3066E ×150686
  8670  F0 33     BEQ $86A5                     ; 30670 ×150686
  8672  C9 11     CMP #$11                      ; 30672 ×150686
  8674  F0 2C     BEQ loc_B6_86A2               ; 30674 ×150686
  8676  C9 12     CMP #$12                      ; 30676 ×150686
  8678  F0 28     BEQ loc_B6_86A2               ; 30678 ×150686
  867A  C9 0F     CMP #$0F                      ; 3067A ×146776
  867C  F0 21     BEQ $869F                     ; 3067C ×146776
  867E  C9 06     CMP #$06                      ; 3067E ×146776
  8680  F0 17     BEQ loc_B6_8699               ; 30680 ×146776
  8682  C9 07     CMP #$07                      ; 30682 ×143719
  8684  F0 13     BEQ loc_B6_8699               ; 30684 ×143719
  8686  C9 09     CMP #$09                      ; 30686 ×143498
  8688  F0 12     BEQ $869C                     ; 30688 ×143498
  868A  C9 04     CMP #$04                      ; 3068A ×143498
  868C  F0 08     BEQ loc_B6_8696               ; 3068C ×143498
  868E  C9 22     CMP #$22                      ; 3068E ×141689
  8690  F0 04     BEQ loc_B6_8696               ; 30690 ×141689
  8692  C9 03     CMP #$03                      ; 30692 ×140957
  8694  D0 1E     BNE loc_B6_86B4               ; 30694 ×140957

loc_B6_8696:                    ; from 3068c 30690
  8696  4C 83 8B  JMP loc_B6_8B83               ; 30696 ×2541

loc_B6_8699:                    ; from 30680 30684
  8699  4C 98 87  JMP loc_B6_8798               ; 30699 ×3278
  869C  4C 78 8A  JMP $8A78                     ; 3069C ×0
  869F  4C F0 8A  JMP $8AF0                     ; 3069F ×0

loc_B6_86A2:                    ; from 30678
  86A2  4C 90 89  JMP loc_B6_8990               ; 306A2 ×3910
  86A5  4C 41 88  JMP $8841                     ; 306A5 ×0
  86A8  4C 7D 88  JMP $887D                     ; 306A8 ×0

loc_B6_86AB:                    ; from 30664
  86AB  4C 3F 8B  JMP loc_B6_8B3F               ; 306AB ×1282

loc_B6_86AE:                    ; from 30668
  86AE  4C 18 89  JMP loc_B6_8918               ; 306AE ×3276
  86B1  4C DF 85  JMP $85DF                     ; 306B1 ×0

loc_B6_86B4:                    ; from 30694 309fa 30b6c
  86B4  B9 74 05  LDA $0574,Y                   ; 306B4 ×146149
  86B7  30 06     BMI loc_B6_86BF               ; 306B7 ×146149
  86B9  C9 20     CMP #$20                      ; 306B9 ×143828
  86BB  90 09     BCC loc_B6_86C6               ; 306BB ×143828
  86BD  B0 03     BCS loc_B6_86C2               ; 306BD ×1479

loc_B6_86BF:                    ; from 306b7
  86BF  4A        LSR A                         ; 306BF ×2321
  86C0  4A        LSR A                         ; 306C0 ×2321
  86C1  4A        LSR A                         ; 306C1 ×2321

loc_B6_86C2:                    ; from 306bd
  86C2  29 01     AND #$01                      ; 306C2 ×3800
  86C4  D0 0F     BNE loc_B6_86D5               ; 306C4 ×3800

loc_B6_86C6:                    ; from 306bb
  86C6  20 0A 8C  JSR sub_B6_8C0A               ; 306C6 ×145152
  86C9  8A        TXA                           ; 306C9 ×145152
  86CA  F0 22     BEQ loc_B6_86EE               ; 306CA ×145152
  86CC  A5 16     LDA $16                       ; 306CC ×145137
  86CE  F0 02     BEQ loc_B6_86D2               ; 306CE ×145137
  86D0  10 03     BPL loc_B6_86D5               ; 306D0 ×141297

loc_B6_86D2:                    ; from 306ce
  86D2  20 EF 86  JSR sub_B6_86EF               ; 306D2 ×63564

loc_B6_86D5:                    ; from 30656 306d0 307f1 30914 30c02 306c4
  86D5  A5 0B     LDA $0B                       ; 306D5 ×939995
  86D7  29 01     AND #$01                      ; 306D7 ×939995
  86D9  F0 08     BEQ loc_B6_86E3               ; 306D9 ×939995
  86DB  A4 15     LDY $15                       ; 306DB ×470300
  86DD  88        DEY                           ; 306DD ×470300
  86DE  30 2C     BMI loc_B6_870C               ; 306DE ×470300
  86E0  4C 3C 86  JMP loc_B6_863C               ; 306E0 ×438956

loc_B6_86E3:                    ; from 306d9
  86E3  E6 15     INC $15                       ; 306E3 ×469695
  86E5  A4 15     LDY $15                       ; 306E5 ×469695
  86E7  C0 0F     CPY #$0F                      ; 306E7 ×469695
  86E9  F0 21     BEQ loc_B6_870C               ; 306E9 ×469695
  86EB  4C 3C 86  JMP loc_B6_863C               ; 306EB ×438384

loc_B6_86EE:                    ; from 306ca
  86EE  60        RTS                           ; 306EE ×15

sub_B6_86EF:                    ; from 306d2
  86EF  A4 8F     LDY $8F                       ; 306EF ×63564
  86F1  F0 FB     BEQ loc_B6_86EE               ; 306F1 ×63564

loc_B6_86F3:                    ; from 30709
  86F3  A5 8E     LDA $8E                       ; 306F3 ×156939
  86F5  29 03     AND #$03                      ; 306F5 ×156939
  86F7  F0 12     BEQ loc_B6_870B               ; 306F7 ×156939
  86F9  C6 8E     DEC $8E                       ; 306F9 ×93375
  86FB  B9 02 02  LDA $0202,Y                   ; 306FB ×93375
  86FE  29 FC     AND #$FC                      ; 306FE ×93375
  8700  09 02     ORA #$02                      ; 30700 ×93375
  8702  99 02 02  STA $0202,Y                   ; 30702 ×93375
  8705  C8        INY                           ; 30705 ×93375
  8706  C8        INY                           ; 30706 ×93375
  8707  C8        INY                           ; 30707 ×93375
  8708  C8        INY                           ; 30708 ×93375
  8709  D0 E8     BNE loc_B6_86F3               ; 30709 ×93375

loc_B6_870B:                    ; from 306f7
  870B  60        RTS                           ; 3070B ×63564

loc_B6_870C:                    ; from 306de 306e9
  870C  A0 00     LDY #$00                      ; 3070C ×62655

loc_B6_870E:                    ; from 30776
  870E  E0 F9     CPX #$F9                      ; 3070E ×939697
  8710  B0 66     BCS sub_B6_8778               ; 30710 ×939697
  8712  B9 C1 03  LDA $03C1,Y                   ; 30712 ×939694
  8715  F0 5C     BEQ loc_B6_8773               ; 30715 ×939694
  8717  B9 75 04  LDA $0475,Y                   ; 30717 ×195189
  871A  F0 57     BEQ loc_B6_8773               ; 3071A ×195189
  871C  4A        LSR A                         ; 3071C ×33861
  871D  4A        LSR A                         ; 3071D ×33861
  871E  4A        LSR A                         ; 3071E ×33861
  871F  4A        LSR A                         ; 3071F ×33861
  8720  C9 03     CMP #$03                      ; 30720 ×33861
  8722  90 02     BCC loc_B6_8726               ; 30722 ×33861
  8724  A9 03     LDA #$03                      ; 30724 ×3260

loc_B6_8726:                    ; from 30722
  8726  85 8B     STA $8B                       ; 30726 ×33861
  8728  B9 A2 04  LDA $04A2,Y                   ; 30728 ×33861
  872B  29 88     AND #$88                      ; 3072B ×33861
  872D  D0 44     BNE loc_B6_8773               ; 3072D ×33861
  872F  B9 93 04  LDA $0493,Y                   ; 3072F ×19639
  8732  18        CLC                           ; 30732 ×19639
  8733  69 05     ADC #$05                      ; 30733 ×19639
  8735  9D 00 02  STA $0200,X                   ; 30735 ×19639
  8738  9D 04 02  STA $0204,X                   ; 30738 ×19639
  873B  B9 A2 04  LDA $04A2,Y                   ; 3073B ×19639
  873E  0A        ASL A                         ; 3073E ×19639
  873F  0A        ASL A                         ; 3073F ×19639
  8740  29 20     AND #$20                      ; 30740 ×19639
  8742  9D 06 02  STA $0206,X                   ; 30742 ×19639
  8745  09 40     ORA #$40                      ; 30745 ×19639
  8747  9D 02 02  STA $0202,X                   ; 30747 ×19639
  874A  A9 00     LDA #$00                      ; 3074A ×19639
  874C  9D 05 02  STA $0205,X                   ; 3074C ×19639
  874F  9D 01 02  STA $0201,X                   ; 3074F ×19639
  8752  B9 84 04  LDA $0484,Y                   ; 30752 ×19639
  8755  38        SEC                           ; 30755 ×19639
  8756  E5 8B     SBC $8B                       ; 30756 ×19639
  8758  90 19     BCC loc_B6_8773               ; 30758 ×19639
  875A  9D 03 02  STA $0203,X                   ; 3075A ×19631
  875D  B9 84 04  LDA $0484,Y                   ; 3075D ×19631
  8760  65 8B     ADC $8B                       ; 30760 ×19631
  8762  E9 08     SBC #$08                      ; 30762 ×19631
  8764  90 07     BCC loc_B6_876D               ; 30764 ×19631
  8766  9D 07 02  STA $0207,X                   ; 30766 ×19542
  8769  E8        INX                           ; 30769 ×19542
  876A  E8        INX                           ; 3076A ×19542
  876B  E8        INX                           ; 3076B ×19542
  876C  E8        INX                           ; 3076C ×19542

loc_B6_876D:                    ; from 30764
  876D  E8        INX                           ; 3076D ×19631
  876E  E8        INX                           ; 3076E ×19631
  876F  E8        INX                           ; 3076F ×19631
  8770  E8        INX                           ; 30770 ×19631
  8771  F0 10     BEQ loc_B6_8783               ; 30771 ×19631

loc_B6_8773:                    ; from 30715 3071a 3072d 30758
  8773  C8        INY                           ; 30773 ×939686
  8774  C0 0F     CPY #$0F                      ; 30774 ×939686
  8776  D0 96     BNE loc_B6_870E               ; 30776 ×939686

sub_B6_8778:                    ; from 31a06 32a3a 30710
  8778  A9 F8     LDA #$F8                      ; 30778 ×78060

loc_B6_877A:                    ; from 30781
  877A  9D 00 02  STA $0200,X                   ; 3077A ×2896503
  877D  E8        INX                           ; 3077D ×2896503
  877E  E8        INX                           ; 3077E ×2896503
  877F  E8        INX                           ; 3077F ×2896503
  8780  E8        INX                           ; 30780 ×2896503
  8781  D0 F7     BNE loc_B6_877A               ; 30781 ×2896503

loc_B6_8783:                    ; from 30771
  8783  60        RTS                           ; 30783 ×78068

sub_B6_8784:                    ; from 30a00 30798
  8784  A9 00     LDA #$00                      ; 30784 ×11053
  8786  85 1B     STA $1B                       ; 30786 ×11053
  8788  85 18     STA $18                       ; 30788 ×11053
  878A  B9 84 04  LDA $0484,Y                   ; 3078A ×11053
  878D  38        SEC                           ; 3078D ×11053
  878E  E9 03     SBC #$03                      ; 3078E ×11053
  8790  85 8B     STA $8B                       ; 30790 ×11053
  8792  B9 93 04  LDA $0493,Y                   ; 30792 ×11053
  8795  85 8C     STA $8C                       ; 30795 ×11053
  8797  60        RTS                           ; 30797 ×11053

loc_B6_8798:                    ; from 30699
  8798  20 84 87  JSR sub_B6_8784               ; 30798 ×3278
  879B  38        SEC                           ; 3079B ×3278
  879C  E9 2F     SBC #$2F                      ; 3079C ×3278
  879E  90 45     BCC loc_B6_87E5               ; 3079E ×3278
  87A0  85 8C     STA $8C                       ; 307A0 ×3053
  87A2  A5 0B     LDA $0B                       ; 307A2 ×3053
  87A4  85 1F     STA $1F                       ; 307A4 ×3053
  87A6  A5 8C     LDA $8C                       ; 307A6 ×3053
  87A8  18        CLC                           ; 307A8 ×3053
  87A9  69 08     ADC #$08                      ; 307A9 ×3053
  87AB  66 1F     ROR $1F                       ; 307AB ×3053
  87AD  90 04     BCC loc_B6_87B3               ; 307AD ×3053
  87AF  85 8C     STA $8C                       ; 307AF ×1524
  87B1  B0 17     BCS loc_B6_87CA               ; 307B1 ×1524

loc_B6_87B3:                    ; from 307ad
  87B3  B9 DF 03  LDA $03DF,Y                   ; 307B3 ×1529
  87B6  C9 80     CMP #$80                      ; 307B6 ×1529
  87B8  6A        ROR A                         ; 307B8 ×1529
  87B9  85 1F     STA $1F                       ; 307B9 ×1529
  87BB  B9 DE 04  LDA $04DE,Y                   ; 307BB ×1529
  87BE  6A        ROR A                         ; 307BE ×1529
  87BF  18        CLC                           ; 307BF ×1529
  87C0  65 18     ADC $18                       ; 307C0 ×1529
  87C2  85 18     STA $18                       ; 307C2 ×1529
  87C4  A5 1F     LDA $1F                       ; 307C4 ×1529
  87C6  65 8B     ADC $8B                       ; 307C6 ×1529
  87C8  85 8B     STA $8B                       ; 307C8 ×1529

loc_B6_87CA:                    ; from 307b1
  87CA  A5 C8     LDA $C8                       ; 307CA ×3053
  87CC  0A        ASL A                         ; 307CC ×3053
  87CD  90 06     BCC loc_B6_87D5               ; 307CD ×3053
  87CF  69 80     ADC #$80                      ; 307CF ×287
  87D1  30 02     BMI loc_B6_87D5               ; 307D1 ×287
  87D3  85 1B     STA $1B                       ; 307D3 inferred, not run

loc_B6_87D5:                    ; from 307e3 307cd 307d1
  87D5  20 15 88  JSR sub_B6_8815               ; 307D5 ×14326
  87D8  F0 1A     BEQ $87F4                     ; 307D8 ×14326
  87DA  38        SEC                           ; 307DA ×14326
  87DB  E9 10     SBC #$10                      ; 307DB ×14326
  87DD  85 8C     STA $8C                       ; 307DD ×14326
  87DF  90 04     BCC loc_B6_87E5               ; 307DF ×14326
  87E1  C5 1B     CMP $1B                       ; 307E1 ×11273
  87E3  B0 F0     BCS loc_B6_87D5               ; 307E3 ×11273

loc_B6_87E5:                    ; from 307df 3079e
  87E5  B9 DF 03  LDA $03DF,Y                   ; 307E5 ×3278
  87E8  0A        ASL A                         ; 307E8 ×3278
  87E9  0A        ASL A                         ; 307E9 ×3278
  87EA  49 FF     EOR #$FF                      ; 307EA ×3278
  87EC  65 8B     ADC $8B                       ; 307EC ×3278
  87EE  99 92 05  STA $0592,Y                   ; 307EE ×3278
  87F1  4C D5 86  JMP loc_B6_86D5               ; 307F1 ×3278
  87F4  60        RTS                           ; 307F4 inferred, not run
  87F5  .byte 27 27 28 28 29 29 29 29                           ; 307F5 data, read by 30e70
  87FD  .byte 29 29 29 29 29 29 29 29 29                        ; 307FD
  8806  .byte D0 D0 D1 D2 D4 D4 D4 D4                           ; 30806 data, read by 30a0f
  880E  .byte D4 D4 D4 D4 D4 D4 D4                              ; 3080E

sub_B6_8815:                    ; from 307d5
  8815  B9 ED 04  LDA $04ED,Y                   ; 30815 ×14326
  8818  9D 01 02  STA $0201,X                   ; 30818 ×14326
  881B  B9 DF 03  LDA $03DF,Y                   ; 3081B ×14326
  881E  29 40     AND #$40                      ; 3081E ×14326
  8820  09 02     ORA #$02                      ; 30820 ×14326
  8822  9D 02 02  STA $0202,X                   ; 30822 ×14326
  8825  A5 18     LDA $18                       ; 30825 ×14326
  8827  18        CLC                           ; 30827 ×14326
  8828  79 DE 04  ADC $04DE,Y                   ; 30828 ×14326
  882B  85 18     STA $18                       ; 3082B ×14326
  882D  A5 8B     LDA $8B                       ; 3082D ×14326
  882F  9D 03 02  STA $0203,X                   ; 3082F ×14326
  8832  79 DF 03  ADC $03DF,Y                   ; 30832 ×14326
  8835  85 8B     STA $8B                       ; 30835 ×14326

sub_B6_8837:                    ; from 30a33
  8837  A5 8C     LDA $8C                       ; 30837 ×45426
  8839  9D 00 02  STA $0200,X                   ; 30839 ×45426
  883C  E8        INX                           ; 3083C ×45426
  883D  E8        INX                           ; 3083D ×45426
  883E  E8        INX                           ; 3083E ×45426
  883F  E8        INX                           ; 3083F ×45426
  8840  60        RTS                           ; 30840 ×45426
  8841  20 0A 8C  JSR sub_B6_8C0A               ; 30841 ×0
  8844  8A        TXA                           ; 30844 ×0
  8845  F0 F9     BEQ $8840                     ; 30845 ×0
  8847  A4 16     LDY $16                       ; 30847 ×0
  8849  B9 A2 04  LDA $04A2,Y                   ; 30849 ×0
  884C  09 40     ORA #$40                      ; 3084C ×0
  884E  99 A2 04  STA $04A2,Y                   ; 3084E ×0
  8851  B9 83 05  LDA $0583,Y                   ; 30851 ×0
  8854  99 84 04  STA $0484,Y                   ; 30854 ×0
  8857  20 0A 8C  JSR sub_B6_8C0A               ; 30857 ×0
  885A  A4 16     LDY $16                       ; 3085A ×0
  885C  B9 A2 04  LDA $04A2,Y                   ; 3085C ×0
  885F  29 BF     AND #$BF                      ; 3085F ×0
  8861  99 A2 04  STA $04A2,Y                   ; 30861 ×0
  8864  A9 5B     LDA #$5B                      ; 30864 ×0
  8866  99 D0 03  STA $03D0,Y                   ; 30866 ×0
  8869  8A        TXA                           ; 30869 ×0
  886A  F0 D4     BEQ $8840                     ; 3086A ×0
  886C  B9 ED 04  LDA $04ED,Y                   ; 3086C ×0
  886F  F0 09     BEQ $887A                     ; 3086F ×0
  8871  B9 1A 05  LDA $051A,Y                   ; 30871 ×0
  8874  99 84 04  STA $0484,Y                   ; 30874 ×0
  8877  4C C6 86  JMP loc_B6_86C6               ; 30877 ×0
  887A  4C CC 86  JMP $86CC                     ; 3087A inferred, not run
  887D  20 0A 8C  JSR sub_B6_8C0A               ; 3087D ×0
  8880  8A        TXA                           ; 30880 ×0
  8881  F0 BD     BEQ $8840                     ; 30881 ×0
  8883  A4 16     LDY $16                       ; 30883 ×0
  8885  B9 84 04  LDA $0484,Y                   ; 30885 ×0
  8888  85 1F     STA $1F                       ; 30888 ×0
  888A  B9 DE 04  LDA $04DE,Y                   ; 3088A ×0
  888D  38        SEC                           ; 3088D ×0
  888E  E5 87     SBC $87                       ; 3088E ×0
  8890  99 84 04  STA $0484,Y                   ; 30890 ×0
  8893  B9 ED 04  LDA $04ED,Y                   ; 30893 ×0
  8896  49 FF     EOR #$FF                      ; 30896 ×0
  8898  38        SEC                           ; 30898 ×0
  8899  E5 89     SBC $89                       ; 30899 ×0
  889B  C9 0C     CMP #$0C                      ; 3089B ×0
  889D  B0 07     BCS $88A6                     ; 3089D ×0
  889F  A9 00     LDA #$00                      ; 3089F ×0
  88A1  99 83 05  STA $0583,Y                   ; 308A1 ×0
  88A4  F0 6E     BEQ loc_B6_8914               ; 308A4 ×0
  88A6  99 93 04  STA $0493,Y                   ; 308A6 ×0
  88A9  A9 5C     LDA #$5C                      ; 308A9 ×0
  88AB  99 D0 03  STA $03D0,Y                   ; 308AB ×0
  88AE  20 0A 8C  JSR sub_B6_8C0A               ; 308AE ×0
  88B1  8A        TXA                           ; 308B1 ×0
  88B2  F0 8C     BEQ $8840                     ; 308B2 ×0
  88B4  A4 16     LDY $16                       ; 308B4 ×0
  88B6  B9 ED 04  LDA $04ED,Y                   ; 308B6 ×0
  88B9  38        SEC                           ; 308B9 ×0
  88BA  F9 39 04  SBC $0439,Y                   ; 308BA ×0
  88BD  20 4F 8A  JSR sub_B6_8A4F               ; 308BD ×0
  88C0  85 1A     STA $1A                       ; 308C0 ×0
  88C2  A5 1B     LDA $1B                       ; 308C2 ×0
  88C4  85 19     STA $19                       ; 308C4 ×0
  88C6  A5 1F     LDA $1F                       ; 308C6 ×0
  88C8  38        SEC                           ; 308C8 ×0
  88C9  F9 84 04  SBC $0484,Y                   ; 308C9 ×0
  88CC  20 4F 8A  JSR sub_B6_8A4F               ; 308CC ×0
  88CF  A9 03     LDA #$03                      ; 308CF ×0
  88D1  85 18     STA $18                       ; 308D1 ×0
  88D3  A5 1F     LDA $1F                       ; 308D3 ×0
  88D5  18        CLC                           ; 308D5 ×0
  88D6  65 1B     ADC $1B                       ; 308D6 ×0
  88D8  85 1F     STA $1F                       ; 308D8 ×0
  88DA  A5 1C     LDA $1C                       ; 308DA ×0
  88DC  79 84 04  ADC $0484,Y                   ; 308DC ×0
  88DF  99 84 04  STA $0484,Y                   ; 308DF ×0
  88E2  A5 20     LDA $20                       ; 308E2 ×0
  88E4  18        CLC                           ; 308E4 ×0
  88E5  65 19     ADC $19                       ; 308E5 ×0
  88E7  85 20     STA $20                       ; 308E7 ×0
  88E9  A5 1A     LDA $1A                       ; 308E9 ×0
  88EB  79 93 04  ADC $0493,Y                   ; 308EB ×0
  88EE  99 93 04  STA $0493,Y                   ; 308EE ×0
  88F1  A9 7F     LDA #$7F                      ; 308F1 ×0
  88F3  9D 01 02  STA $0201,X                   ; 308F3 ×0
  88F6  A9 02     LDA #$02                      ; 308F6 ×0
  88F8  9D 02 02  STA $0202,X                   ; 308F8 ×0
  88FB  B9 93 04  LDA $0493,Y                   ; 308FB ×0
  88FE  9D 00 02  STA $0200,X                   ; 308FE ×0
  8901  B9 84 04  LDA $0484,Y                   ; 30901 ×0
  8904  38        SEC                           ; 30904 ×0
  8905  E9 04     SBC #$04                      ; 30905 ×0
  8907  9D 03 02  STA $0203,X                   ; 30907 ×0
  890A  E8        INX                           ; 3090A ×0
  890B  E8        INX                           ; 3090B ×0
  890C  E8        INX                           ; 3090C ×0
  890D  E8        INX                           ; 3090D ×0
  890E  F0 07     BEQ $8917                     ; 3090E ×0
  8910  C6 18     DEC $18                       ; 30910 ×0
  8912  D0 BF     BNE $88D3                     ; 30912 ×0

loc_B6_8914:                    ; from 3093a 30951
  8914  4C D5 86  JMP loc_B6_86D5               ; 30914 ×3276
  8917  60        RTS                           ; 30917 ×0

loc_B6_8918:                    ; from 306ae
  8918  B9 84 04  LDA $0484,Y                   ; 30918 ×3276
  891B  85 8B     STA $8B                       ; 3091B ×3276
  891D  B9 93 04  LDA $0493,Y                   ; 3091D ×3276
  8920  38        SEC                           ; 30920 ×3276
  8921  F9 75 04  SBC $0475,Y                   ; 30921 ×3276
  8924  90 EE     BCC loc_B6_8914               ; 30924 ×3276
  8926  85 8C     STA $8C                       ; 30926 ×3276
  8928  B9 D0 03  LDA $03D0,Y                   ; 30928 ×3276
  892B  0A        ASL A                         ; 3092B ×3276
  892C  0A        ASL A                         ; 3092C ×3276
  892D  A8        TAY                           ; 3092D ×3276
  892E  A5 8B     LDA $8B                       ; 3092E ×3276
  8930  F9 65 89  SBC $8965,Y                   ; 30930 ×3276
  8933  90 DF     BCC loc_B6_8914               ; 30933 ×3276
  8935  85 8B     STA $8B                       ; 30935 ×3276

loc_B6_8937:                    ; from 30961
  8937  B9 66 89  LDA $8966,Y                   ; 30937 ×9825
  893A  F0 D8     BEQ loc_B6_8914               ; 3093A ×9825
  893C  9D 01 02  STA $0201,X                   ; 3093C ×6552
  893F  A9 02     LDA #$02                      ; 3093F ×6552
  8941  9D 02 02  STA $0202,X                   ; 30941 ×6552
  8944  A5 8C     LDA $8C                       ; 30944 ×6552
  8946  9D 00 02  STA $0200,X                   ; 30946 ×6552
  8949  A5 8B     LDA $8B                       ; 30949 ×6552
  894B  9D 03 02  STA $0203,X                   ; 3094B ×6552
  894E  18        CLC                           ; 3094E ×6552
  894F  69 08     ADC #$08                      ; 3094F ×6552
  8951  B0 C1     BCS loc_B6_8914               ; 30951 ×6552
  8953  85 8B     STA $8B                       ; 30953 ×6549
  8955  E8        INX                           ; 30955 ×6549
  8956  E8        INX                           ; 30956 ×6549
  8957  E8        INX                           ; 30957 ×6549
  8958  E8        INX                           ; 30958 ×6549
  8959  F0 BC     BEQ $8917                     ; 30959 ×6549
  895B  C8        INY                           ; 3095B ×6549
  895C  98        TYA                           ; 3095C ×6549
  895D  29 03     AND #$03                      ; 3095D ×6549
  895F  C9 03     CMP #$03                      ; 3095F ×6549
  8961  D0 D4     BNE loc_B6_8937               ; 30961 ×6549
  8963  F0 AF     BEQ loc_B6_8914               ; 30963 ×0
  8965  06 ED     ASL $ED                       ; 30965 inferred, not run
  8967  .byte F2 00 06 EE F2 00                                 ; 30967
  896D  .byte 06 EF F2 00                                       ; 3096D data, read by 30930 30937
  8971  .byte 06 F0 F2 00 08 ED F1 00                           ; 30971
  8979  .byte 08 EE F1 00 08 EF F1 00                           ; 30979 data, read by 30930 30937
  8981  .byte 08 F0 F1 00 0A ED F1 F2 0C EA EB EC               ; 30981
  898D  4C D5 86  JMP loc_B6_86D5               ; 3098D ×0

loc_B6_8990:                    ; from 306a2
  8990  B9 C1 03  LDA $03C1,Y                   ; 30990 ×3910
  8993  C9 12     CMP #$12                      ; 30993 ×3910
  8995  A9 E8     LDA #$E8                      ; 30995 ×3910
  8997  B0 02     BCS loc_B6_899B               ; 30997 ×3910
  8999  A9 C8     LDA #$C8                      ; 30999 ×0

loc_B6_899B:                    ; from 30997
  899B  85 8D     STA $8D                       ; 3099B ×3910
  899D  18        CLC                           ; 3099D ×3910
  899E  79 93 04  ADC $0493,Y                   ; 3099E ×3910
  89A1  38        SEC                           ; 309A1 ×3910
  89A2  F9 75 04  SBC $0475,Y                   ; 309A2 ×3910
  89A5  90 E6     BCC $898D                     ; 309A5 ×3910
  89A7  99 93 04  STA $0493,Y                   ; 309A7 ×3910
  89AA  B9 74 05  LDA $0574,Y                   ; 309AA ×3910
  89AD  F0 05     BEQ loc_B6_89B4               ; 309AD ×3910
  89AF  A9 00     LDA #$00                      ; 309AF ×45
  89B1  99 D0 03  STA $03D0,Y                   ; 309B1 ×45

loc_B6_89B4:                    ; from 309ad
  89B4  B9 74 05  LDA $0574,Y                   ; 309B4 ×3910
  89B7  29 08     AND #$08                      ; 309B7 ×3910
  89B9  D0 20     BNE loc_B6_89DB               ; 309B9 ×3910
  89BB  B9 83 05  LDA $0583,Y                   ; 309BB ×3910
  89BE  20 FE 89  JSR sub_B6_89FE               ; 309BE ×3910
  89C1  8A        TXA                           ; 309C1 ×3910
  89C2  F0 39     BEQ $89FD                     ; 309C2 ×3910
  89C4  B9 93 04  LDA $0493,Y                   ; 309C4 ×3910
  89C7  38        SEC                           ; 309C7 ×3910
  89C8  E9 02     SBC #$02                      ; 309C8 ×3910
  89CA  99 93 04  STA $0493,Y                   ; 309CA ×3910
  89CD  B9 74 05  LDA $0574,Y                   ; 309CD ×3910
  89D0  D0 09     BNE loc_B6_89DB               ; 309D0 ×3910
  89D2  B9 ED 04  LDA $04ED,Y                   ; 309D2 ×3865
  89D5  20 FE 89  JSR sub_B6_89FE               ; 309D5 ×3865
  89D8  8A        TXA                           ; 309D8 ×3865
  89D9  F0 22     BEQ $89FD                     ; 309D9 ×3865

loc_B6_89DB:                    ; from 309d0
  89DB  B9 93 04  LDA $0493,Y                   ; 309DB ×3910
  89DE  18        CLC                           ; 309DE ×3910
  89DF  79 75 04  ADC $0475,Y                   ; 309DF ×3910
  89E2  E9 03     SBC #$03                      ; 309E2 ×3910
  89E4  E5 8D     SBC $8D                       ; 309E4 ×3910
  89E6  99 93 04  STA $0493,Y                   ; 309E6 ×3910
  89E9  B9 75 04  LDA $0475,Y                   ; 309E9 ×3910
  89EC  99 A1 05  STA $05A1,Y                   ; 309EC ×3910
  89EF  38        SEC                           ; 309EF ×3910
  89F0  E5 21     SBC $21                       ; 309F0 ×3910
  89F2  38        SEC                           ; 309F2 ×3910
  89F3  E9 04     SBC #$04                      ; 309F3 ×3910
  89F5  E5 8D     SBC $8D                       ; 309F5 ×3910
  89F7  99 75 04  STA $0475,Y                   ; 309F7 ×3910
  89FA  4C B4 86  JMP loc_B6_86B4               ; 309FA ×3910
  89FD  60        RTS                           ; 309FD inferred, not run

sub_B6_89FE:                    ; from 309be 309d5
  89FE  85 22     STA $22                       ; 309FE ×7775
  8A00  20 84 87  JSR sub_B6_8784               ; 30A00 ×7775
  8A03  90 45     BCC $8A4A                     ; 30A03 ×7775
  8A05  A5 22     LDA $22                       ; 30A05 ×7775
  8A07  20 4B 8A  JSR sub_B6_8A4B               ; 30A07 ×7775
  8A0A  20 67 8E  JSR sub_B6_8E67               ; 30A0A ×7775
  8A0D  84 21     STY $21                       ; 30A0D ×7775

loc_B6_8A0F:                    ; from 30a41
  8A0F  B9 06 88  LDA $8806,Y                   ; 30A0F ×31100
  8A12  9D 01 02  STA $0201,X                   ; 30A12 ×31100
  8A15  A5 1C     LDA $1C                       ; 30A15 ×31100
  8A17  29 40     AND #$40                      ; 30A17 ×31100
  8A19  49 42     EOR #$42                      ; 30A19 ×31100
  8A1B  9D 02 02  STA $0202,X                   ; 30A1B ×31100
  8A1E  A5 18     LDA $18                       ; 30A1E ×31100
  8A20  18        CLC                           ; 30A20 ×31100
  8A21  65 1B     ADC $1B                       ; 30A21 ×31100
  8A23  85 18     STA $18                       ; 30A23 ×31100
  8A25  A5 8B     LDA $8B                       ; 30A25 ×31100
  8A27  9D 03 02  STA $0203,X                   ; 30A27 ×31100
  8A2A  65 1C     ADC $1C                       ; 30A2A ×31100
  8A2C  85 8B     STA $8B                       ; 30A2C ×31100
  8A2E  6A        ROR A                         ; 30A2E ×31100
  8A2F  45 1C     EOR $1C                       ; 30A2F ×31100
  8A31  30 15     BMI $8A48                     ; 30A31 ×31100
  8A33  20 37 88  JSR sub_B6_8837               ; 30A33 ×31100
  8A36  F0 12     BEQ $8A4A                     ; 30A36 ×31100
  8A38  A5 8C     LDA $8C                       ; 30A38 ×31100
  8A3A  18        CLC                           ; 30A3A ×31100
  8A3B  69 08     ADC #$08                      ; 30A3B ×31100
  8A3D  85 8C     STA $8C                       ; 30A3D ×31100
  8A3F  C6 22     DEC $22                       ; 30A3F ×31100
  8A41  D0 CC     BNE loc_B6_8A0F               ; 30A41 ×31100
  8A43  A9 D3     LDA #$D3                      ; 30A43 ×7775
  8A45  9D FD 01  STA $01FD,X                   ; 30A45 ×7775
  8A48  A4 16     LDY $16                       ; 30A48 ×7775
  8A4A  60        RTS                           ; 30A4A ×7775

sub_B6_8A4B:                    ; from 30a07
  8A4B  38        SEC                           ; 30A4B ×7775
  8A4C  F9 FD 03  SBC $03FD,Y                   ; 30A4C ×7775

sub_B6_8A4F:                    ; from 308bd 308cc
  8A4F  85 1C     STA $1C                       ; 30A4F ×7775
  8A51  A9 04     LDA #$04                      ; 30A51 ×7775
  8A53  85 22     STA $22                       ; 30A53 ×7775
  8A55  B9 C1 03  LDA $03C1,Y                   ; 30A55 ×7775
  8A58  C9 12     CMP #$12                      ; 30A58 ×7775
  8A5A  A5 1C     LDA $1C                       ; 30A5A ×7775
  8A5C  B0 05     BCS loc_B6_8A63               ; 30A5C ×7775
  8A5E  06 22     ASL $22                       ; 30A5E ×0
  8A60  4A        LSR A                         ; 30A60 ×0
  8A61  66 1B     ROR $1B                       ; 30A61 ×0

loc_B6_8A63:                    ; from 30a5c
  8A63  4A        LSR A                         ; 30A63 ×7775
  8A64  66 1B     ROR $1B                       ; 30A64 ×7775
  8A66  4A        LSR A                         ; 30A66 ×7775
  8A67  66 1B     ROR $1B                       ; 30A67 ×7775
  8A69  26 1C     ROL $1C                       ; 30A69 ×7775
  8A6B  90 02     BCC loc_B6_8A6F               ; 30A6B ×7775
  8A6D  09 E0     ORA #$E0                      ; 30A6D ×1964

loc_B6_8A6F:                    ; from 30a6b
  8A6F  85 1C     STA $1C                       ; 30A6F ×7775
  8A71  60        RTS                           ; 30A71 ×7775
  8A72  .byte 0F 0F EA 15 09 F0                                 ; 30A72
  8A78  B9 FC 04  LDA $04FC,Y                   ; 30A78 ×0
  8A7B  4A        LSR A                         ; 30A7B ×0
  8A7C  4A        LSR A                         ; 30A7C ×0
  8A7D  4A        LSR A                         ; 30A7D ×0
  8A7E  85 17     STA $17                       ; 30A7E ×0
  8A80  86 1F     STX $1F                       ; 30A80 ×0
  8A82  A2 00     LDX #$00                      ; 30A82 ×0
  8A84  A5 10     LDA $10                       ; 30A84 ×0
  8A86  C9 02     CMP #$02                      ; 30A86 ×0
  8A88  D0 02     BNE $8A8C                     ; 30A88 ×0
  8A8A  A2 03     LDX #$03                      ; 30A8A inferred, not run
  8A8C  BD 72 8A  LDA $8A72,X                   ; 30A8C ×0
  8A8F  85 8B     STA $8B                       ; 30A8F ×0
  8A91  BD 73 8A  LDA $8A73,X                   ; 30A91 ×0
  8A94  D9 ED 04  CMP $04ED,Y                   ; 30A94 ×0
  8A97  B0 03     BCS $8A9C                     ; 30A97 ×0
  8A99  BD 74 8A  LDA $8A74,X                   ; 30A99 ×0
  8A9C  A6 1F     LDX $1F                       ; 30A9C ×0
  8A9E  D0 03     BNE $8AA3                     ; 30A9E ×0
  8AA0  B9 ED 04  LDA $04ED,Y                   ; 30AA0 ×0
  8AA3  18        CLC                           ; 30AA3 ×0
  8AA4  79 84 04  ADC $0484,Y                   ; 30AA4 ×0
  8AA7  9D 03 02  STA $0203,X                   ; 30AA7 ×0
  8AAA  99 84 04  STA $0484,Y                   ; 30AAA ×0
  8AAD  6A        ROR A                         ; 30AAD ×0
  8AAE  59 ED 04  EOR $04ED,Y                   ; 30AAE ×0
  8AB1  30 3A     BMI $8AED                     ; 30AB1 ×0
  8AB3  A9 FA     LDA #$FA                      ; 30AB3 ×0
  8AB5  9D 01 02  STA $0201,X                   ; 30AB5 ×0
  8AB8  A9 02     LDA #$02                      ; 30AB8 ×0
  8ABA  9D 02 02  STA $0202,X                   ; 30ABA ×0
  8ABD  B9 93 04  LDA $0493,Y                   ; 30ABD ×0
  8AC0  38        SEC                           ; 30AC0 ×0
  8AC1  E5 8B     SBC $8B                       ; 30AC1 ×0
  8AC3  90 28     BCC $8AED                     ; 30AC3 ×0
  8AC5  9D 00 02  STA $0200,X                   ; 30AC5 ×0
  8AC8  38        SEC                           ; 30AC8 ×0
  8AC9  F9 1A 05  SBC $051A,Y                   ; 30AC9 ×0
  8ACC  F0 0C     BEQ $8ADA                     ; 30ACC ×0
  8ACE  A9 01     LDA #$01                      ; 30ACE ×0
  8AD0  90 02     BCC $8AD4                     ; 30AD0 ×0
  8AD2  A9 FE     LDA #$FE                      ; 30AD2 ×0
  8AD4  79 93 04  ADC $0493,Y                   ; 30AD4 ×0
  8AD7  99 93 04  STA $0493,Y                   ; 30AD7 ×0
  8ADA  E8        INX                           ; 30ADA ×0
  8ADB  E8        INX                           ; 30ADB ×0
  8ADC  E8        INX                           ; 30ADC ×0
  8ADD  E8        INX                           ; 30ADD ×0
  8ADE  F0 51     BEQ $8B31                     ; 30ADE ×0
  8AE0  C6 17     DEC $17                       ; 30AE0 ×0
  8AE2  10 BC     BPL $8AA0                     ; 30AE2 ×0
  8AE4  8A        TXA                           ; 30AE4 ×0
  8AE5  F0 06     BEQ $8AED                     ; 30AE5 ×0
  8AE7  B9 65 05  LDA $0565,Y                   ; 30AE7 ×0
  8AEA  9D FD 01  STA $01FD,X                   ; 30AEA ×0
  8AED  4C D5 86  JMP loc_B6_86D5               ; 30AED ×0
  8AF0  B9 ED 04  LDA $04ED,Y                   ; 30AF0 ×0
  8AF3  4A        LSR A                         ; 30AF3 ×0
  8AF4  85 8B     STA $8B                       ; 30AF4 ×0
  8AF6  A0 00     LDY #$00                      ; 30AF6 ×0
  8AF8  84 8C     STY $8C                       ; 30AF8 ×0
  8AFA  B9 72 8B  LDA $8B72,Y                   ; 30AFA ×0
  8AFD  A8        TAY                           ; 30AFD ×0
  8AFE  B9 BC 00  LDA $00BC,Y                   ; 30AFE ×0
  8B01  F0 0F     BEQ $8B12                     ; 30B01 ×0
  8B03  B9 BB 00  LDA $00BB,Y                   ; 30B03 ×0
  8B06  45 8C     EOR $8C                       ; 30B06 ×0
  8B08  A4 8C     LDY $8C                       ; 30B08 ×0
  8B0A  29 08     AND #$08                      ; 30B0A ×0
  8B0C  F0 04     BEQ $8B12                     ; 30B0C ×0
  8B0E  25 0B     AND $0B                       ; 30B0E ×0
  8B10  D0 19     BNE $8B2B                     ; 30B10 ×0
  8B12  A4 8C     LDY $8C                       ; 30B12 ×0
  8B14  A5 8B     LDA $8B                       ; 30B14 ×0
  8B16  9D 03 02  STA $0203,X                   ; 30B16 ×0
  8B19  B9 6F 8B  LDA $8B6F,Y                   ; 30B19 ×0
  8B1C  9D 01 02  STA $0201,X                   ; 30B1C ×0
  8B1F  B9 70 8B  LDA $8B70,Y                   ; 30B1F ×0
  8B22  9D 02 02  STA $0202,X                   ; 30B22 ×0
  8B25  B9 71 8B  LDA $8B71,Y                   ; 30B25 ×0
  8B28  9D 00 02  STA $0200,X                   ; 30B28 ×0
  8B2B  E8        INX                           ; 30B2B ×0
  8B2C  E8        INX                           ; 30B2C ×0
  8B2D  E8        INX                           ; 30B2D ×0
  8B2E  E8        INX                           ; 30B2E ×0
  8B2F  D0 01     BNE $8B32                     ; 30B2F ×0
  8B31  60        RTS                           ; 30B31 inferred, not run
  8B32  C8        INY                           ; 30B32 ×0
  8B33  C8        INY                           ; 30B33 ×0
  8B34  C8        INY                           ; 30B34 ×0
  8B35  C8        INY                           ; 30B35 ×0
  8B36  C0 14     CPY #$14                      ; 30B36 ×0
  8B38  D0 BE     BNE $8AF8                     ; 30B38 ×0
  8B3A  A4 16     LDY $16                       ; 30B3A ×0
  8B3C  4C B4 86  JMP loc_B6_86B4               ; 30B3C ×0

loc_B6_8B3F:                    ; from 306ab
  8B3F  A0 0C     LDY #$0C                      ; 30B3F ×1282

loc_B6_8B41:                    ; from 30b48
  8B41  B9 5E BF  LDA $BF5E,Y                   ; 30B41 ×16666
  8B44  99 00 06  STA $0600,Y                   ; 30B44 ×16666
  8B47  88        DEY                           ; 30B47 ×16666
  8B48  10 F7     BPL loc_B6_8B41               ; 30B48 ×16666
  8B4A  A4 16     LDY $16                       ; 30B4A ×1282
  8B4C  B9 DE 04  LDA $04DE,Y                   ; 30B4C ×1282
  8B4F  CD 05 06  CMP $0605                     ; 30B4F ×1282
  8B52  B0 03     BCS $8B57                     ; 30B52 ×1282
  8B54  8D 05 06  STA $0605                     ; 30B54 ×1282
  8B57  CD 08 06  CMP $0608                     ; 30B57 ×1282
  8B5A  B0 03     BCS loc_B6_8B5F               ; 30B5A ×1282
  8B5C  8D 08 06  STA $0608                     ; 30B5C inferred, not run

loc_B6_8B5F:                    ; from 30b5a
  8B5F  C9 08     CMP #$08                      ; 30B5F ×1282
  8B61  B0 03     BCS loc_B6_8B66               ; 30B61 ×1282
  8B63  CE 03 06  DEC $0603                     ; 30B63 ×1004

loc_B6_8B66:                    ; from 30b61
  8B66  4A        LSR A                         ; 30B66 ×1282
  8B67  69 03     ADC #$03                      ; 30B67 ×1282
  8B69  8D 00 06  STA $0600                     ; 30B69 ×1282
  8B6C  4C B4 86  JMP loc_B6_86B4               ; 30B6C ×1282
  8B6F  .byte 2A 03 30 00 2B 03 40 02 2A 43 50 00 2B 83 60 02   ; 30B6F
  8B7F  .byte 2C 03 78 04                                       ; 30B7F

loc_B6_8B83:                    ; from 30696
  8B83  B9 DE 04  LDA $04DE,Y                   ; 30B83 ×2541
  8B86  85 18     STA $18                       ; 30B86 ×2541
  8B88  B9 84 04  LDA $0484,Y                   ; 30B88 ×2541
  8B8B  85 19     STA $19                       ; 30B8B ×2541
  8B8D  B9 93 04  LDA $0493,Y                   ; 30B8D ×2541
  8B90  85 1A     STA $1A                       ; 30B90 ×2541
  8B92  A5 0B     LDA $0B                       ; 30B92 ×2541
  8B94  29 01     AND #$01                      ; 30B94 ×2541
  8B96  F0 0B     BEQ loc_B6_8BA3               ; 30B96 ×2541
  8B98  46 18     LSR $18                       ; 30B98 ×1268
  8B9A  A5 18     LDA $18                       ; 30B9A ×1268
  8B9C  4A        LSR A                         ; 30B9C ×1268
  8B9D  65 18     ADC $18                       ; 30B9D ×1268
  8B9F  85 18     STA $18                       ; 30B9F ×1268
  8BA1  A9 10     LDA #$10                      ; 30BA1 ×1268

loc_B6_8BA3:                    ; from 30b96
  8BA3  A8        TAY                           ; 30BA3 ×2541

loc_B6_8BA4:                    ; from 30c00
  8BA4  B9 47 8E  LDA $8E47,Y                   ; 30BA4 ×20328
  8BA7  F0 16     BEQ loc_B6_8BBF               ; 30BA7 ×20328
  8BA9  85 1B     STA $1B                       ; 30BA9 ×15236
  8BAB  6A        ROR A                         ; 30BAB ×15236
  8BAC  A5 18     LDA $18                       ; 30BAC ×15236
  8BAE  90 01     BCC loc_B6_8BB1               ; 30BAE ×15236
  8BB0  4A        LSR A                         ; 30BB0 ×7618

loc_B6_8BB1:                    ; from 30bae
  8BB1  26 1B     ROL $1B                       ; 30BB1 ×15236
  8BB3  90 0A     BCC loc_B6_8BBF               ; 30BB3 ×15236
  8BB5  85 1B     STA $1B                       ; 30BB5 ×7618
  8BB7  A5 19     LDA $19                       ; 30BB7 ×7618
  8BB9  E5 1B     SBC $1B                       ; 30BB9 ×7618
  8BBB  90 3B     BCC loc_B6_8BF8               ; 30BBB ×7618
  8BBD  B0 04     BCS loc_B6_8BC3               ; 30BBD ×6548

loc_B6_8BBF:                    ; from 30bb3 30ba7
  8BBF  65 19     ADC $19                       ; 30BBF ×12710
  8BC1  B0 35     BCS loc_B6_8BF8               ; 30BC1 ×12710

loc_B6_8BC3:                    ; from 30bbd
  8BC3  9D 03 02  STA $0203,X                   ; 30BC3 ×17412
  8BC6  B9 48 8E  LDA $8E48,Y                   ; 30BC6 ×17412
  8BC9  F0 16     BEQ loc_B6_8BE1               ; 30BC9 ×17412
  8BCB  85 1B     STA $1B                       ; 30BCB ×13598
  8BCD  6A        ROR A                         ; 30BCD ×13598
  8BCE  A5 18     LDA $18                       ; 30BCE ×13598
  8BD0  90 01     BCC loc_B6_8BD3               ; 30BD0 ×13598
  8BD2  4A        LSR A                         ; 30BD2 ×7456

loc_B6_8BD3:                    ; from 30bd0
  8BD3  26 1B     ROL $1B                       ; 30BD3 ×13598
  8BD5  90 0A     BCC loc_B6_8BE1               ; 30BD5 ×13598
  8BD7  85 1B     STA $1B                       ; 30BD7 ×6799
  8BD9  A5 1A     LDA $1A                       ; 30BD9 ×6799
  8BDB  E5 1B     SBC $1B                       ; 30BDB ×6799
  8BDD  90 19     BCC loc_B6_8BF8               ; 30BDD ×6799
  8BDF  B0 04     BCS loc_B6_8BE5               ; 30BDF ×6402

loc_B6_8BE1:                    ; from 30bd5 30bc9
  8BE1  65 1A     ADC $1A                       ; 30BE1 ×10613
  8BE3  B0 13     BCS loc_B6_8BF8               ; 30BE3 ×10613

loc_B6_8BE5:                    ; from 30bdf
  8BE5  9D 00 02  STA $0200,X                   ; 30BE5 ×15137
  8BE8  A9 02     LDA #$02                      ; 30BE8 ×15137
  8BEA  9D 02 02  STA $0202,X                   ; 30BEA ×15137
  8BED  A9 26     LDA #$26                      ; 30BED ×15137
  8BEF  9D 01 02  STA $0201,X                   ; 30BEF ×15137
  8BF2  E8        INX                           ; 30BF2 ×15137
  8BF3  E8        INX                           ; 30BF3 ×15137
  8BF4  E8        INX                           ; 30BF4 ×15137
  8BF5  E8        INX                           ; 30BF5 ×15137
  8BF6  F0 11     BEQ $8C09                     ; 30BF6 ×15137

loc_B6_8BF8:                    ; from 30be3 30bc1 30bbb 30bdd
  8BF8  C8        INY                           ; 30BF8 ×20328
  8BF9  C8        INY                           ; 30BF9 ×20328
  8BFA  C0 10     CPY #$10                      ; 30BFA ×20328
  8BFC  F0 04     BEQ loc_B6_8C02               ; 30BFC ×20328
  8BFE  C0 20     CPY #$20                      ; 30BFE ×19055
  8C00  D0 A2     BNE loc_B6_8BA4               ; 30C00 ×19055

loc_B6_8C02:                    ; from 30bfc
  8C02  4C D5 86  JMP loc_B6_86D5               ; 30C02 ×2541

loc_B6_8C05:                    ; from 30c1d 30c16
  8C05  A9 08     LDA #$08                      ; 30C05 ×12477
  8C07  85 16     STA $16                       ; 30C07 ×12477
  8C09  60        RTS                           ; 30C09 ×12477

sub_B6_8C0A:                    ; from 306c6 3087d 308ae 30841 30857
  8C0A  B9 84 04  LDA $0484,Y                   ; 30C0A ×145152
  8C0D  85 17     STA $17                       ; 30C0D ×145152
  8C0F  B9 93 04  LDA $0493,Y                   ; 30C0F ×145152
  8C12  38        SEC                           ; 30C12 ×145152
  8C13  F9 75 04  SBC $0475,Y                   ; 30C13 ×145152
  8C16  90 ED     BCC loc_B6_8C05               ; 30C16 ×145152
  8C18  85 8C     STA $8C                       ; 30C18 ×145125
  8C1A  B9 D0 03  LDA $03D0,Y                   ; 30C1A ×145125
  8C1D  F0 E6     BEQ loc_B6_8C05               ; 30C1D ×145125
  8C1F  B9 B1 04  LDA $04B1,Y                   ; 30C1F ×132675
  8C22  29 20     AND #$20                      ; 30C22 ×132675
  8C24  D0 03     BNE loc_B6_8C29               ; 30C24 ×132675
  8C26  4C C9 8C  JMP loc_B6_8CC9               ; 30C26 ×129933

loc_B6_8C29:                    ; from 30c24
  8C29  84 16     STY $16                       ; 30C29 ×2742
  8C2B  B9 A2 04  LDA $04A2,Y                   ; 30C2B ×2742
  8C2E  85 1B     STA $1B                       ; 30C2E ×2742
  8C30  B9 D0 03  LDA $03D0,Y                   ; 30C30 ×2742
  8C33  C9 3F     CMP #$3F                      ; 30C33 ×2742
  8C35  90 0B     BCC loc_B6_8C42               ; 30C35 ×2742
  8C37  C9 41     CMP #$41                      ; 30C37 ×0
  8C39  B0 07     BCS loc_B6_8C42               ; 30C39 ×0
  8C3B  E9 3E     SBC #$3E                      ; 30C3B inferred, not run
  8C3D  0A        ASL A                         ; 30C3D inferred, not run
  8C3E  69 35     ADC #$35                      ; 30C3E inferred, not run
  8C40  D0 0A     BNE $8C4C                     ; 30C40 inferred, not run

loc_B6_8C42:                    ; from 30c35
  8C42  C9 26     CMP #$26                      ; 30C42 ×2742
  8C44  90 1D     BCC loc_B6_8C63               ; 30C44 ×2742
  8C46  C9 29     CMP #$29                      ; 30C46 ×2602
  8C48  B0 19     BCS loc_B6_8C63               ; 30C48 ×2602
  8C4A  69 0F     ADC #$0F                      ; 30C4A ×2594
  8C4C  69 86     ADC #$86                      ; 30C4C ×2594
  8C4E  85 18     STA $18                       ; 30C4E ×2594
  8C50  B9 A2 04  LDA $04A2,Y                   ; 30C50 ×2594
  8C53  29 63     AND #$63                      ; 30C53 ×2594
  8C55  85 1B     STA $1B                       ; 30C55 ×2594
  8C57  29 40     AND #$40                      ; 30C57 ×2594
  8C59  85 90     STA $90                       ; 30C59 ×2594
  8C5B  20 03 8D  JSR sub_B6_8D03               ; 30C5B ×2594
  8C5E  8A        TXA                           ; 30C5E ×2594
  8C5F  F0 A8     BEQ $8C09                     ; 30C5F ×2594
  8C61  D0 5B     BNE loc_B6_8CBE               ; 30C61 ×2594

loc_B6_8C63:                    ; from 30c44 30c48
  8C63  C9 16     CMP #$16                      ; 30C63 ×148
  8C65  90 02     BCC loc_B6_8C69               ; 30C65 ×148
  8C67  E9 09     SBC #$09                      ; 30C67 ×8

loc_B6_8C69:                    ; from 30c65
  8C69  0A        ASL A                         ; 30C69 ×148
  8C6A  0A        ASL A                         ; 30C6A ×148
  8C6B  90 02     BCC loc_B6_8C6F               ; 30C6B ×148
  8C6D  69 3B     ADC #$3B                      ; 30C6D ×0

loc_B6_8C6F:                    ; from 30c6b
  8C6F  A8        TAY                           ; 30C6F ×148

loc_B6_8C70:                    ; from 30cbc
  8C70  A5 1B     LDA $1B                       ; 30C70 ×296
  8C72  29 40     AND #$40                      ; 30C72 ×296
  8C74  F0 11     BEQ loc_B6_8C87               ; 30C74 ×296
  8C76  A9 42     LDA #$42                      ; 30C76 ×128
  8C78  9D 02 02  STA $0202,X                   ; 30C78 ×128
  8C7B  A5 17     LDA $17                       ; 30C7B ×128
  8C7D  38        SEC                           ; 30C7D ×128
  8C7E  F9 89 AE  SBC $AE89,Y                   ; 30C7E ×128
  8C81  38        SEC                           ; 30C81 ×128
  8C82  E9 07     SBC #$07                      ; 30C82 ×128
  8C84  4C 92 8C  JMP loc_B6_8C92               ; 30C84 ×128

loc_B6_8C87:                    ; from 30c74
  8C87  A9 02     LDA #$02                      ; 30C87 ×168
  8C89  9D 02 02  STA $0202,X                   ; 30C89 ×168
  8C8C  B9 89 AE  LDA $AE89,Y                   ; 30C8C ×168
  8C8F  18        CLC                           ; 30C8F ×168
  8C90  65 17     ADC $17                       ; 30C90 ×168

loc_B6_8C92:                    ; from 30c84
  8C92  9D 03 02  STA $0203,X                   ; 30C92 ×296
  8C95  B9 8A AE  LDA $AE8A,Y                   ; 30C95 ×296
  8C98  18        CLC                           ; 30C98 ×296
  8C99  65 8C     ADC $8C                       ; 30C99 ×296
  8C9B  9D 00 02  STA $0200,X                   ; 30C9B ×296
  8C9E  A5 10     LDA $10                       ; 30C9E ×296
  8CA0  C9 02     CMP #$02                      ; 30CA0 ×296
  8CA2  D0 08     BNE loc_B6_8CAC               ; 30CA2 ×296
  8CA4  98        TYA                           ; 30CA4 inferred, not run
  8CA5  29 02     AND #$02                      ; 30CA5 inferred, not run
  8CA7  4A        LSR A                         ; 30CA7 inferred, not run
  8CA8  69 80     ADC #$80                      ; 30CA8 inferred, not run
  8CAA  D0 02     BNE $8CAE                     ; 30CAA inferred, not run

loc_B6_8CAC:                    ; from 30ca2
  8CAC  A9 DA     LDA #$DA                      ; 30CAC ×296
  8CAE  9D 01 02  STA $0201,X                   ; 30CAE ×296
  8CB1  E8        INX                           ; 30CB1 ×296
  8CB2  E8        INX                           ; 30CB2 ×296
  8CB3  E8        INX                           ; 30CB3 ×296
  8CB4  E8        INX                           ; 30CB4 ×296
  8CB5  F0 32     BEQ $8CE9                     ; 30CB5 ×296
  8CB7  C8        INY                           ; 30CB7 ×296
  8CB8  C8        INY                           ; 30CB8 ×296
  8CB9  98        TYA                           ; 30CB9 ×296
  8CBA  29 02     AND #$02                      ; 30CBA ×296
  8CBC  D0 B2     BNE loc_B6_8C70               ; 30CBC ×296

loc_B6_8CBE:                    ; from 30c61
  8CBE  A4 16     LDY $16                       ; 30CBE ×2742
  8CC0  B9 93 04  LDA $0493,Y                   ; 30CC0 ×2742
  8CC3  38        SEC                           ; 30CC3 ×2742
  8CC4  F9 75 04  SBC $0475,Y                   ; 30CC4 ×2742
  8CC7  85 8C     STA $8C                       ; 30CC7 ×2742

loc_B6_8CC9:                    ; from 30c26
  8CC9  B9 D0 03  LDA $03D0,Y                   ; 30CC9 ×132675
  8CCC  C0 02     CPY #$02                      ; 30CCC ×132675
  8CCE  B0 1A     BCS sub_B6_8CEA               ; 30CCE ×132675
  8CD0  C9 1E     CMP #$1E                      ; 30CD0 ×63574
  8CD2  F0 0C     BEQ loc_B6_8CE0               ; 30CD2 ×63574
  8CD4  C9 1A     CMP #$1A                      ; 30CD4 ×63214
  8CD6  F0 08     BEQ loc_B6_8CE0               ; 30CD6 ×63214
  8CD8  C9 4C     CMP #$4C                      ; 30CD8 ×63116
  8CDA  F0 04     BEQ loc_B6_8CE0               ; 30CDA ×63116
  8CDC  C9 4D     CMP #$4D                      ; 30CDC ×63116
  8CDE  D0 0A     BNE sub_B6_8CEA               ; 30CDE ×63116

loc_B6_8CE0:                    ; from 30cd2 30cd6
  8CE0  20 EA 8C  JSR sub_B6_8CEA               ; 30CE0 ×458
  8CE3  8A        TXA                           ; 30CE3 ×458
  8CE4  F0 03     BEQ $8CE9                     ; 30CE4 ×458
  8CE6  4C 5D 8D  JMP loc_B6_8D5D               ; 30CE6 ×458
  8CE9  60        RTS                           ; 30CE9 ×0

sub_B6_8CEA:                    ; from 30cce 30cde 30ce0
  8CEA  85 18     STA $18                       ; 30CEA ×132675
  8CEC  B9 A2 04  LDA $04A2,Y                   ; 30CEC ×132675

sub_B6_8CEF:                    ; from 31aad 31a8c
  8CEF  29 63     AND #$63                      ; 30CEF ×238877
  8CF1  85 1B     STA $1B                       ; 30CF1 ×238877
  8CF3  29 40     AND #$40                      ; 30CF3 ×238877
  8CF5  85 90     STA $90                       ; 30CF5 ×238877
  8CF7  A5 10     LDA $10                       ; 30CF7 ×238877
  8CF9  C9 0A     CMP #$0A                      ; 30CF9 ×238877
  8CFB  F0 14     BEQ loc_B6_8D11               ; 30CFB ×238877
  8CFD  C9 0D     CMP #$0D                      ; 30CFD ×229955
  8CFF  F0 10     BEQ loc_B6_8D11               ; 30CFF ×229955
  8D01  C0 02     CPY #$02                      ; 30D01 ×218922

sub_B6_8D03:                    ; from 30c5b
  8D03  A4 18     LDY $18                       ; 30D03 ×221516
  8D05  90 14     BCC loc_B6_8D1B               ; 30D05 ×221516
  8D07  B9 B9 C5  LDA $C5B9,Y                   ; 30D07 ×160242
  8D0A  85 19     STA $19                       ; 30D0A ×160242
  8D0C  B9 3C C7  LDA $C73C,Y                   ; 30D0C ×160242
  8D0F  D0 12     BNE sub_B6_8D23               ; 30D0F ×160242

loc_B6_8D11:                    ; from 30cff 30cfb
  8D11  C0 02     CPY #$02                      ; 30D11 ×19955
  8D13  A4 18     LDY $18                       ; 30D13 ×19955
  8D15  90 04     BCC loc_B6_8D1B               ; 30D15 ×19955
  8D17  C0 0F     CPY #$0F                      ; 30D17 ×15061
  8D19  F0 EC     BEQ $8D07                     ; 30D19 ×15061

loc_B6_8D1B:                    ; from 30d05 30d15
  8D1B  B9 32 C5  LDA $C532,Y                   ; 30D1B ×81229
  8D1E  85 19     STA $19                       ; 30D1E ×81229
  8D20  B9 B5 C6  LDA $C6B5,Y                   ; 30D20 ×81229

sub_B6_8D23:                    ; from 30d0f 32a45 32044
  8D23  85 1A     STA $1A                       ; 30D23 ×262215
  8D25  A0 00     LDY #$00                      ; 30D25 ×262215
  8D27  A5 90     LDA $90                       ; 30D27 ×262215
  8D29  F0 0B     BEQ loc_B6_8D36               ; 30D29 ×262215
  8D2B  B1 19     LDA ($19),Y                   ; 30D2B ×35820
  8D2D  18        CLC                           ; 30D2D ×35820
  8D2E  65 17     ADC $17                       ; 30D2E ×35820
  8D30  38        SEC                           ; 30D30 ×35820
  8D31  E9 07     SBC #$07                      ; 30D31 ×35820
  8D33  4C 3B 8D  JMP loc_B6_8D3B               ; 30D33 ×35820

loc_B6_8D36:                    ; from 30d29
  8D36  A5 17     LDA $17                       ; 30D36 ×226395
  8D38  38        SEC                           ; 30D38 ×226395
  8D39  F1 19     SBC ($19),Y                   ; 30D39 ×226395

loc_B6_8D3B:                    ; from 30d33
  8D3B  85 8B     STA $8B                       ; 30D3B ×262215
  8D3D  45 17     EOR $17                       ; 30D3D ×262215
  8D3F  10 07     BPL loc_B6_8D48               ; 30D3F ×262215
  8D41  A5 17     LDA $17                       ; 30D41 ×14755
  8D43  E9 40     SBC #$40                      ; 30D43 ×14755
  8D45  10 01     BPL loc_B6_8D48               ; 30D45 ×14755

loc_B6_8D47:                    ; from 30d53
  8D47  60        RTS                           ; 30D47 ×1670

loc_B6_8D48:                    ; from 30d3f 30d45
  8D48  C8        INY                           ; 30D48 ×260630
  8D49  A5 8C     LDA $8C                       ; 30D49 ×260630
  8D4B  18        CLC                           ; 30D4B ×260630
  8D4C  71 19     ADC ($19),Y                   ; 30D4C ×260630
  8D4E  85 8C     STA $8C                       ; 30D4E ×260630
  8D50  6A        ROR A                         ; 30D50 ×260630
  8D51  51 19     EOR ($19),Y                   ; 30D51 ×260630
  8D53  30 F2     BMI loc_B6_8D47               ; 30D53 ×260630
  8D55  C8        INY                           ; 30D55 ×260545
  8D56  B1 19     LDA ($19),Y                   ; 30D56 ×260545
  8D58  45 1B     EOR $1B                       ; 30D58 ×260545
  8D5A  85 8D     STA $8D                       ; 30D5A ×260545
  8D5C  C8        INY                           ; 30D5C ×260545

loc_B6_8D5D:                    ; from 30ce6
  8D5D  B1 19     LDA ($19),Y                   ; 30D5D ×261003
  8D5F  10 4E     BPL loc_B6_8DAF               ; 30D5F ×261003
  8D61  29 7F     AND #$7F                      ; 30D61 ×223451
  8D63  85 91     STA $91                       ; 30D63 ×223451
  8D65  C8        INY                           ; 30D65 ×223451
  8D66  B1 19     LDA ($19),Y                   ; 30D66 ×223451
  8D68  85 92     STA $92                       ; 30D68 ×223451
  8D6A  C9 03     CMP #$03                      ; 30D6A ×223451
  8D6C  B0 3A     BCS loc_B6_8DA8               ; 30D6C ×223451
  8D6E  A5 8D     LDA $8D                       ; 30D6E ×71520
  8D70  85 8E     STA $8E                       ; 30D70 ×71520
  8D72  29 FC     AND #$FC                      ; 30D72 ×71520
  8D74  05 16     ORA $16                       ; 30D74 ×71520
  8D76  85 8D     STA $8D                       ; 30D76 ×71520
  8D78  86 8F     STX $8F                       ; 30D78 ×71520
  8D7A  A5 18     LDA $18                       ; 30D7A ×71520
  8D7C  C9 5D     CMP #$5D                      ; 30D7C ×71520
  8D7E  F0 14     BEQ loc_B6_8D94               ; 30D7E ×71520
  8D80  C9 42     CMP #$42                      ; 30D80 ×70902
  8D82  F0 10     BEQ loc_B6_8D94               ; 30D82 ×70902
  8D84  29 FE     AND #$FE                      ; 30D84 ×70902
  8D86  C9 64     CMP #$64                      ; 30D86 ×70902
  8D88  D0 12     BNE loc_B6_8D9C               ; 30D88 ×70902
  8D8A  A5 8D     LDA $8D                       ; 30D8A ×0
  8D8C  09 80     ORA #$80                      ; 30D8C ×0
  8D8E  85 1B     STA $1B                       ; 30D8E ×0
  8D90  85 8D     STA $8D                       ; 30D90 ×0
  8D92  D0 08     BNE loc_B6_8D9C               ; 30D92 ×0

loc_B6_8D94:                    ; from 30d7e
  8D94  A5 8D     LDA $8D                       ; 30D94 ×618
  8D96  29 FC     AND #$FC                      ; 30D96 ×618
  8D98  49 02     EOR #$02                      ; 30D98 ×618
  8D9A  85 8D     STA $8D                       ; 30D9A ×618

loc_B6_8D9C:                    ; from 30d88
  8D9C  C6 16     DEC $16                       ; 30D9C ×71520
  8D9E  D0 08     BNE loc_B6_8DA8               ; 30D9E ×71520
  8DA0  A5 92     LDA $92                       ; 30DA0 ×3812
  8DA2  09 10     ORA #$10                      ; 30DA2 ×3812
  8DA4  85 92     STA $92                       ; 30DA4 ×3812
  8DA6  D0 00     BNE loc_B6_8DA8               ; 30DA6 ×3812

loc_B6_8DA8:                    ; from 30d6c 30d9e
  8DA8  C8        INY                           ; 30DA8 ×223451
  8DA9  A5 90     LDA $90                       ; 30DA9 ×223451
  8DAB  D0 5B     BNE loc_B6_8E08               ; 30DAB ×223451
  8DAD  F0 14     BEQ loc_B6_8DC3               ; 30DAD ×193294

loc_B6_8DAF:                    ; from 30d5f
  8DAF  F0 51     BEQ loc_B6_8E02               ; 30DAF ×37552
  8DB1  85 91     STA $91                       ; 30DB1 ×37552
  8DB3  C8        INY                           ; 30DB3 ×37552
  8DB4  A9 00     LDA #$00                      ; 30DB4 ×37552
  8DB6  85 92     STA $92                       ; 30DB6 ×37552
  8DB8  A5 90     LDA $90                       ; 30DB8 ×37552
  8DBA  D0 54     BNE loc_B6_8E10               ; 30DBA ×37552
  8DBC  F0 0D     BEQ loc_B6_8DCB               ; 30DBC ×32915

loc_B6_8DBE:                    ; from 30e00
  8DBE  C8        INY                           ; 30DBE ×11899

loc_B6_8DBF:                    ; from 30df7 30dfe
  8DBF  C6 91     DEC $91                       ; 30DBF ×2364054
  8DC1  F0 3F     BEQ loc_B6_8E02               ; 30DC1 ×2364054

loc_B6_8DC3:                    ; from 30dad
  8DC3  A5 92     LDA $92                       ; 30DC3 ×2337515
  8DC5  F0 04     BEQ loc_B6_8DCB               ; 30DC5 ×2337515
  8DC7  E6 92     INC $92                       ; 30DC7 ×2077864
  8DC9  D0 03     BNE loc_B6_8DCE               ; 30DC9 ×2077864

loc_B6_8DCB:                    ; from 30dc5 30dbc
  8DCB  B1 19     LDA ($19),Y                   ; 30DCB ×292566
  8DCD  C8        INY                           ; 30DCD ×292566

loc_B6_8DCE:                    ; from 30dc9
  8DCE  9D 01 02  STA $0201,X                   ; 30DCE ×2370430
  8DD1  B1 19     LDA ($19),Y                   ; 30DD1 ×2370430
  8DD3  18        CLC                           ; 30DD3 ×2370430
  8DD4  65 8B     ADC $8B                       ; 30DD4 ×2370430
  8DD6  B0 22     BCS loc_B6_8DFA               ; 30DD6 ×2370430
  8DD8  9D 03 02  STA $0203,X                   ; 30DD8 ×2354168
  8DDB  C8        INY                           ; 30DDB ×2354168
  8DDC  A5 8C     LDA $8C                       ; 30DDC ×2354168
  8DDE  38        SEC                           ; 30DDE ×2354168
  8DDF  F1 19     SBC ($19),Y                   ; 30DDF ×2354168
  8DE1  90 18     BCC loc_B6_8DFB               ; 30DE1 ×2354168
  8DE3  9D 00 02  STA $0200,X                   ; 30DE3 ×2349142
  8DE6  C8        INY                           ; 30DE6 ×2349142
  8DE7  A5 8D     LDA $8D                       ; 30DE7 ×2349142
  8DE9  10 05     BPL loc_B6_8DF0               ; 30DE9 ×2349142
  8DEB  B1 19     LDA ($19),Y                   ; 30DEB ×921125
  8DED  45 1B     EOR $1B                       ; 30DED ×921125
  8DEF  C8        INY                           ; 30DEF ×921125

loc_B6_8DF0:                    ; from 30de9
  8DF0  9D 02 02  STA $0202,X                   ; 30DF0 ×2349142
  8DF3  E8        INX                           ; 30DF3 ×2349142
  8DF4  E8        INX                           ; 30DF4 ×2349142
  8DF5  E8        INX                           ; 30DF5 ×2349142
  8DF6  E8        INX                           ; 30DF6 ×2349142
  8DF7  D0 C6     BNE loc_B6_8DBF               ; 30DF7 ×2349142
  8DF9  60        RTS                           ; 30DF9 ×6376

loc_B6_8DFA:                    ; from 30dd6
  8DFA  C8        INY                           ; 30DFA ×16262

loc_B6_8DFB:                    ; from 30de1
  8DFB  C8        INY                           ; 30DFB ×21288
  8DFC  A5 8D     LDA $8D                       ; 30DFC ×21288
  8DFE  10 BF     BPL loc_B6_8DBF               ; 30DFE ×21288
  8E00  30 BC     BMI loc_B6_8DBE               ; 30E00 ×11899

loc_B6_8E02:                    ; from 30dc1 30e06
  8E02  60        RTS                           ; 30E02 ×254625
  8E03  C8        INY                           ; 30E03 ×0

loc_B6_8E04:                    ; from 30e3c 30e43
  8E04  C6 91     DEC $91                       ; 30E04 ×409937
  8E06  F0 FA     BEQ loc_B6_8E02               ; 30E06 ×409937

loc_B6_8E08:                    ; from 30dab
  8E08  A5 92     LDA $92                       ; 30E08 ×405302
  8E0A  F0 04     BEQ loc_B6_8E10               ; 30E0A ×405302
  8E0C  E6 92     INC $92                       ; 30E0C ×393061
  8E0E  D0 03     BNE loc_B6_8E13               ; 30E0E ×393061

loc_B6_8E10:                    ; from 30e0a 30dba
  8E10  B1 19     LDA ($19),Y                   ; 30E10 ×16878
  8E12  C8        INY                           ; 30E12 ×16878

loc_B6_8E13:                    ; from 30e0e
  8E13  9D 01 02  STA $0201,X                   ; 30E13 ×409939
  8E16  A5 8B     LDA $8B                       ; 30E16 ×409939
  8E18  38        SEC                           ; 30E18 ×409939
  8E19  F1 19     SBC ($19),Y                   ; 30E19 ×409939
  8E1B  90 22     BCC loc_B6_8E3F               ; 30E1B ×409939
  8E1D  9D 03 02  STA $0203,X                   ; 30E1D ×409405
  8E20  C8        INY                           ; 30E20 ×409405
  8E21  A5 8C     LDA $8C                       ; 30E21 ×409405
  8E23  38        SEC                           ; 30E23 ×409405
  8E24  F1 19     SBC ($19),Y                   ; 30E24 ×409405
  8E26  90 18     BCC loc_B6_8E40               ; 30E26 ×409405
  8E28  9D 00 02  STA $0200,X                   ; 30E28 ×405165
  8E2B  C8        INY                           ; 30E2B ×405165
  8E2C  A5 8D     LDA $8D                       ; 30E2C ×405165
  8E2E  10 05     BPL loc_B6_8E35               ; 30E2E ×405165
  8E30  B1 19     LDA ($19),Y                   ; 30E30 ×12253
  8E32  C8        INY                           ; 30E32 ×12253
  8E33  45 1B     EOR $1B                       ; 30E33 ×12253

loc_B6_8E35:                    ; from 30e2e
  8E35  9D 02 02  STA $0202,X                   ; 30E35 ×405165
  8E38  E8        INX                           ; 30E38 ×405165
  8E39  E8        INX                           ; 30E39 ×405165
  8E3A  E8        INX                           ; 30E3A ×405165
  8E3B  E8        INX                           ; 30E3B ×405165
  8E3C  D0 C6     BNE loc_B6_8E04               ; 30E3C ×405165
  8E3E  60        RTS                           ; 30E3E ×2

loc_B6_8E3F:                    ; from 30e1b
  8E3F  C8        INY                           ; 30E3F ×534

loc_B6_8E40:                    ; from 30e26
  8E40  C8        INY                           ; 30E40 ×4774
  8E41  A5 8D     LDA $8D                       ; 30E41 ×4774
  8E43  10 BF     BPL loc_B6_8E04               ; 30E43 ×4774
  8E45  30 BC     BMI $8E03                     ; 30E45 ×0
  8E47  .byte 01 00 02 00 81 00 82 00 00 81 00 82 00 01 00 02   ; 30E47 data, read by 30ba4 30bc6
  8E57  .byte 01 01 02 02 01 81 02 82 81 01 82 02 81 81 82 82   ; 30E57 data, read by 30ba4 30bc6

sub_B6_8E67:                    ; from 30a0a
  8E67  C9 10     CMP #$10                      ; 30E67 ×7775
  8E69  90 04     BCC loc_B6_8E6F               ; 30E69 ×7775
  8E6B  49 FF     EOR #$FF                      ; 30E6B ×1964
  8E6D  69 00     ADC #$00                      ; 30E6D ×1964

loc_B6_8E6F:                    ; from 30e69
  8E6F  A8        TAY                           ; 30E6F ×7775
  8E70  B9 F5 87  LDA $87F5,Y                   ; 30E70 ×7775
  8E73  60        RTS                           ; 30E73 ×7775
  8E74  A9 00     LDA #$00                      ; 30E74 ×0
  8E76  8D B1 04  STA $04B1                     ; 30E76 ×0
  8E79  8D B2 04  STA $04B2                     ; 30E79 ×0
  8E7C  A9 06     LDA #$06                      ; 30E7C ×0
  8E7E  85 88     STA $88                       ; 30E7E ×0
  8E80  A9 C0     LDA #$C0                      ; 30E80 ×0
  8E82  85 87     STA $87                       ; 30E82 ×0
  8E84  A9 00     LDA #$00                      ; 30E84 ×0
  8E86  85 8A     STA $8A                       ; 30E86 ×0
  8E88  A9 08     LDA #$08                      ; 30E88 ×0
  8E8A  85 89     STA $89                       ; 30E8A ×0
  8E8C  85 B1     STA $B1                       ; 30E8C ×0
  8E8E  A2 01     LDX #$01                      ; 30E8E ×0
  8E90  A9 48     LDA #$48                      ; 30E90 ×0
  8E92  FD 1B 04  SBC $041B,X                   ; 30E92 ×0
  8E95  0A        ASL A                         ; 30E95 ×0
  8E96  69 E0     ADC #$E0                      ; 30E96 ×0
  8E98  9D FD 03  STA $03FD,X                   ; 30E98 ×0
  8E9B  A9 06     LDA #$06                      ; 30E9B ×0
  8E9D  69 00     ADC #$00                      ; 30E9D ×0
  8E9F  9D EE 03  STA $03EE,X                   ; 30E9F ×0
  8EA2  A9 08     LDA #$08                      ; 30EA2 ×0
  8EA4  9D 1B 04  STA $041B,X                   ; 30EA4 ×0
  8EA7  A9 01     LDA #$01                      ; 30EA7 ×0
  8EA9  9D 0C 04  STA $040C,X                   ; 30EA9 ×0
  8EAC  BD 39 04  LDA $0439,X                   ; 30EAC ×0
  8EAF  69 40     ADC #$40                      ; 30EAF ×0
  8EB1  9D 39 04  STA $0439,X                   ; 30EB1 ×0
  8EB4  BD 2A 04  LDA $042A,X                   ; 30EB4 ×0
  8EB7  69 00     ADC #$00                      ; 30EB7 ×0
  8EB9  9D 2A 04  STA $042A,X                   ; 30EB9 ×0
  8EBC  CA        DEX                           ; 30EBC ×0
  8EBD  10 D1     BPL $8E90                     ; 30EBD ×0
  8EBF  A9 09     LDA #$09                      ; 30EBF ×0
  8EC1  85 B0     STA $B0                       ; 30EC1 ×0
  8EC3  20 0D 8F  JSR sub_B6_8F0D               ; 30EC3 ×0
  8EC6  20 28 A2  JSR sub_B6_A228               ; 30EC6 ×0
  8EC9  A9 0D     LDA #$0D                      ; 30EC9 ×0
  8ECB  85 15     STA $15                       ; 30ECB ×0
  8ECD  A2 51     LDX #$51                      ; 30ECD ×0
  8ECF  A0 03     LDY #$03                      ; 30ECF ×0
  8ED1  20 CB FF  JSR sub_B6_FFCB               ; 30ED1 ×0
  8ED4  A9 0C     LDA #$0C                      ; 30ED4 ×0
  8ED6  A0 04     LDY #$04                      ; 30ED6 ×0
  8ED8  20 94 DB  JSR sub_B6_DB94               ; 30ED8 ×0
  8EDB  A9 36     LDA #$36                      ; 30EDB ×0
  8EDD  20 92 DB  JSR sub_B6_DB92               ; 30EDD ×0
  8EE0  A9 38     LDA #$38                      ; 30EE0 ×0
  8EE2  20 92 DB  JSR sub_B6_DB92               ; 30EE2 ×0
  8EE5  A9 00     LDA #$00                      ; 30EE5 ×0
  8EE7  8D 29 05  STA $0529                     ; 30EE7 ×0
  8EEA  8D 2A 05  STA $052A                     ; 30EEA ×0
  8EED  A2 12     LDX #$12                      ; 30EED ×0
  8EEF  A0 00     LDY #$00                      ; 30EEF ×0
  8EF1  20 CB FF  JSR sub_B6_FFCB               ; 30EF1 ×0
  8EF4  A2 04     LDX #$04                      ; 30EF4 ×0
  8EF6  20 B4 FE  JSR sub_B6_FEB4               ; 30EF6 ×0
  8EF9  20 C0 FE  JSR sub_B6_FEC0               ; 30EF9 ×0
  8EFC  A2 4B     LDX #$4B                      ; 30EFC ×0
  8EFE  A0 03     LDY #$03                      ; 30EFE ×0
  8F00  20 CB FF  JSR sub_B6_FFCB               ; 30F00 ×0
  8F03  A2 45     LDX #$45                      ; 30F03 ×0
  8F05  A0 03     LDY #$03                      ; 30F05 ×0
  8F07  20 CB FF  JSR sub_B6_FFCB               ; 30F07 ×0
  8F0A  4C 7D A8  JMP loc_B6_A87D               ; 30F0A ×0

sub_B6_8F0D:                    ; from 30ec3 30f1b
  8F0D  A9 10     LDA #$10                      ; 30F0D ×0
  8F0F  8D 00 20  STA $2000                     ; 30F0F ×0
  8F12  20 43 A2  JSR sub_B6_A243               ; 30F12 ×0
  8F15  A0 00     LDY #$00                      ; 30F15 ×0
  8F17  8C 01 20  STY $2001                     ; 30F17 ×0
  8F1A  60        RTS                           ; 30F1A ×0
  8F1B  20 0D 8F  JSR sub_B6_8F0D               ; 30F1B ×0
  8F1E  20 28 A2  JSR sub_B6_A228               ; 30F1E ×0
  8F21  A2 51     LDX #$51                      ; 30F21 ×0
  8F23  86 15     STX $15                       ; 30F23 ×0
  8F25  A0 03     LDY #$03                      ; 30F25 ×0
  8F27  20 CB FF  JSR sub_B6_FFCB               ; 30F27 ×0
  8F2A  A9 05     LDA #$05                      ; 30F2A ×0
  8F2C  85 88     STA $88                       ; 30F2C ×0
  8F2E  A9 20     LDA #$20                      ; 30F2E ×0
  8F30  85 87     STA $87                       ; 30F30 ×0
  8F32  A9 60     LDA #$60                      ; 30F32 ×0
  8F34  85 89     STA $89                       ; 30F34 ×0
  8F36  85 B1     STA $B1                       ; 30F36 ×0
  8F38  A2 01     LDX #$01                      ; 30F38 ×0
  8F3A  A9 00     LDA #$00                      ; 30F3A ×0
  8F3C  9D 29 05  STA $0529,X                   ; 30F3C ×0
  8F3F  9D 38 05  STA $0538,X                   ; 30F3F ×0
  8F42  85 8A     STA $8A                       ; 30F42 ×0
  8F44  9D A2 04  STA $04A2,X                   ; 30F44 ×0
  8F47  9D 56 05  STA $0556,X                   ; 30F47 ×0
  8F4A  9D 74 05  STA $0574,X                   ; 30F4A ×0
  8F4D  9D 47 05  STA $0547,X                   ; 30F4D ×0
  8F50  9D FC 04  STA $04FC,X                   ; 30F50 ×0
  8F53  CA        DEX                           ; 30F53 ×0
  8F54  10 E4     BPL $8F3A                     ; 30F54 ×0
  8F56  A9 05     LDA #$05                      ; 30F56 ×0
  8F58  8D EE 03  STA $03EE                     ; 30F58 ×0
  8F5B  8D EF 03  STA $03EF                     ; 30F5B ×0
  8F5E  A9 60     LDA #$60                      ; 30F5E ×0
  8F60  8D FD 03  STA $03FD                     ; 30F60 ×0
  8F63  A9 6C     LDA #$6C                      ; 30F63 ×0
  8F65  8D FE 03  STA $03FE                     ; 30F65 ×0
  8F68  A9 00     LDA #$00                      ; 30F68 ×0
  8F6A  8D 2A 04  STA $042A                     ; 30F6A ×0
  8F6D  8D 2B 04  STA $042B                     ; 30F6D ×0
  8F70  A9 10     LDA #$10                      ; 30F70 ×0
  8F72  8D 39 04  STA $0439                     ; 30F72 ×0
  8F75  8D 3A 04  STA $043A                     ; 30F75 ×0
  8F78  A9 01     LDA #$01                      ; 30F78 ×0
  8F7A  8D 0C 04  STA $040C                     ; 30F7A ×0
  8F7D  8D 0D 04  STA $040D                     ; 30F7D ×0
  8F80  A9 18     LDA #$18                      ; 30F80 ×0
  8F82  8D 1B 04  STA $041B                     ; 30F82 ×0
  8F85  A9 20     LDA #$20                      ; 30F85 ×0
  8F87  8D 1C 04  STA $041C                     ; 30F87 ×0
  8F8A  A9 FF     LDA #$FF                      ; 30F8A ×0
  8F8C  8D B2 05  STA $05B2                     ; 30F8C ×0
  8F8F  A9 F0     LDA #$F0                      ; 30F8F ×0
  8F91  8D B3 05  STA $05B3                     ; 30F91 ×0
  8F94  A9 88     LDA #$88                      ; 30F94 ×0
  8F96  85 EB     STA $EB                       ; 30F96 ×0
  8F98  A2 12     LDX #$12                      ; 30F98 ×0
  8F9A  A0 00     LDY #$00                      ; 30F9A ×0
  8F9C  20 CB FF  JSR sub_B6_FFCB               ; 30F9C ×0
  8F9F  A9 00     LDA #$00                      ; 30F9F ×0
  8FA1  8D 65 05  STA $0565                     ; 30FA1 ×0
  8FA4  8D 65 05  STA $0565                     ; 30FA4 ×0
  8FA7  85 D1     STA $D1                       ; 30FA7 ×0
  8FA9  E6 B7     INC $B7                       ; 30FA9 ×0
  8FAB  D0 02     BNE $8FAF                     ; 30FAB ×0
  8FAD  E6 B8     INC $B8                       ; 30FAD inferred, not run
  8FAF  4C F4 8E  JMP $8EF4                     ; 30FAF ×0

loc_B6_8FB2:                    ; from 30063
  8FB2  20 1D 90  JSR sub_B6_901D               ; 30FB2 ×1
  8FB5  20 88 FE  JSR sub_B6_FE88               ; 30FB5 ×1
  8FB8  A9 3F     LDA #$3F                      ; 30FB8 ×1
  8FBA  8D 06 20  STA $2006                     ; 30FBA ×1
  8FBD  A9 03     LDA #$03                      ; 30FBD ×1
  8FBF  8D 06 20  STA $2006                     ; 30FBF ×1
  8FC2  A9 25     LDA #$25                      ; 30FC2 ×1
  8FC4  8D 07 20  STA $2007                     ; 30FC4 ×1
  8FC7  A2 D5     LDX #$D5                      ; 30FC7 ×1
  8FC9  A0 D9     LDY #$D9                      ; 30FC9 ×1
  8FCB  A9 07     LDA #$07                      ; 30FCB ×1
  8FCD  20 65 D7  JSR sub_B6_D765               ; 30FCD ×1
  8FD0  20 D9 8F  JSR sub_B6_8FD9               ; 30FD0 ×1
  8FD3  20 D2 A1  JSR sub_B6_A1D2               ; 30FD3 ×1
  8FD6  4C 7D A8  JMP loc_B6_A87D               ; 30FD6 ×1

sub_B6_8FD9:                    ; from 30fd0 310ff
  8FD9  A9 04     LDA #$04                      ; 30FD9 ×1
  8FDB  20 92 DB  JSR sub_B6_DB92               ; 30FDB ×1
  8FDE  A9 0A     LDA #$0A                      ; 30FDE ×1
  8FE0  A0 04     LDY #$04                      ; 30FE0 ×1
  8FE2  20 94 DB  JSR sub_B6_DB94               ; 30FE2 ×1
  8FE5  A9 0C     LDA #$0C                      ; 30FE5 ×1
  8FE7  4C 47 90  JMP sub_B6_9047               ; 30FE7 ×1

sub_B6_8FEA:                    ; from 317fb
  8FEA  A5 82     LDA $82                       ; 30FEA ×3
  8FEC  49 21     EOR #$21                      ; 30FEC ×3
  8FEE  8D 06 20  STA $2006                     ; 30FEE ×3
  8FF1  A2 D2     LDX #$D2                      ; 30FF1 ×3
  8FF3  8E 06 20  STX $2006                     ; 30FF3 ×3
  8FF6  A0 6B     LDY #$6B                      ; 30FF6 ×3
  8FF8  8C 07 20  STY $2007                     ; 30FF8 ×3
  8FFB  A0 00     LDY #$00                      ; 30FFB ×3
  8FFD  8C 07 20  STY $2007                     ; 30FFD ×3
  9000  8C 07 20  STY $2007                     ; 31000 ×3
  9003  6A        ROR A                         ; 31003 ×3
  9004  B0 02     BCS loc_B6_9008               ; 31004 ×3
  9006  A0 06     LDY #$06                      ; 31006 ×0

loc_B6_9008:                    ; from 3101a 31004
  9008  B9 F4 05  LDA $05F4,Y                   ; 31008 ×18
  900B  18        CLC                           ; 3100B ×18
  900C  69 5F     ADC #$5F                      ; 3100C ×18
  900E  8D 07 20  STA $2007                     ; 3100E ×18
  9011  A9 00     LDA #$00                      ; 31011 ×18
  9013  99 F4 05  STA $05F4,Y                   ; 31013 ×18
  9016  C8        INY                           ; 31016 ×18
  9017  E8        INX                           ; 31017 ×18
  9018  E0 D8     CPX #$D8                      ; 31018 ×18
  901A  D0 EC     BNE loc_B6_9008               ; 3101A ×18
  901C  60        RTS                           ; 3101C ×3

sub_B6_901D:                    ; from 310f8 30fb2
  901D  20 88 FE  JSR sub_B6_FE88               ; 3101D ×50

sub_B6_9020:                    ; from 310c3
  9020  20 BD FE  JSR sub_B6_FEBD               ; 31020 ×157
  9023  A2 00     LDX #$00                      ; 31023 ×157
  9025  20 FB D5  JSR sub_B6_D5FB               ; 31025 ×157
  9028  A9 00     LDA #$00                      ; 31028 ×157
  902A  85 15     STA $15                       ; 3102A ×157
  902C  A0 07     LDY #$07                      ; 3102C ×157
  902E  A2 12     LDX #$12                      ; 3102E ×157
  9030  20 CB FF  JSR sub_B6_FFCB               ; 31030 ×157
  9033  A9 02     LDA #$02                      ; 31033 ×157
  9035  85 15     STA $15                       ; 31035 ×157
  9037  A0 07     LDY #$07                      ; 31037 ×157
  9039  A2 12     LDX #$12                      ; 31039 ×157
  903B  20 CB FF  JSR sub_B6_FFCB               ; 3103B ×157
  903E  A2 24     LDX #$24                      ; 3103E ×157
  9040  A0 26     LDY #$26                      ; 31040 ×157
  9042  20 49 A2  JSR sub_B6_A249               ; 31042 ×157
  9045  A9 1C     LDA #$1C                      ; 31045 ×157

sub_B6_9047:                    ; from 31063 32184 32c98 30fe7
  9047  48        PHA                           ; 31047 ×365
  9048  8D 06 20  STA $2006                     ; 31048 ×365
  904B  A9 70     LDA #$70                      ; 3104B ×365
  904D  8D 06 20  STA $2006                     ; 3104D ×365
  9050  A9 00     LDA #$00                      ; 31050 ×365
  9052  A2 04     LDX #$04                      ; 31052 ×365
  9054  A0 90     LDY #$90                      ; 31054 ×365

loc_B6_9056:                    ; from 3105a 3105d
  9056  8D 07 20  STA $2007                     ; 31056 ×332880
  9059  88        DEY                           ; 31059 ×332880
  905A  D0 FA     BNE loc_B6_9056               ; 3105A ×332880
  905C  CA        DEX                           ; 3105C ×1460
  905D  D0 F7     BNE loc_B6_9056               ; 3105D ×1460
  905F  68        PLA                           ; 3105F ×365
  9060  38        SEC                           ; 31060 ×365
  9061  E9 10     SBC #$10                      ; 31061 ×365
  9063  B0 E2     BCS sub_B6_9047               ; 31063 ×365
  9065  A9 0C     LDA #$0C                      ; 31065 ×208
  9067  85 97     STA $97                       ; 31067 ×208
  9069  A9 70     LDA #$70                      ; 31069 ×208
  906B  85 98     STA $98                       ; 3106B ×208
  906D  A2 3F     LDX #$3F                      ; 3106D ×208
  906F  A9 01     LDA #$01                      ; 3106F ×208
  9071  85 15     STA $15                       ; 31071 ×208

loc_B6_9073:                    ; from 31086
  9073  8A        TXA                           ; 31073 ×13312
  9074  4A        LSR A                         ; 31074 ×13312
  9075  4A        LSR A                         ; 31075 ×13312
  9076  4A        LSR A                         ; 31076 ×13312
  9077  9D 00 07  STA $0700,X                   ; 31077 ×13312
  907A  A5 15     LDA $15                       ; 3107A ×13312
  907C  9D 40 07  STA $0740,X                   ; 3107C ×13312
  907F  06 15     ASL $15                       ; 3107F ×13312
  9081  90 02     BCC loc_B6_9085               ; 31081 ×13312
  9083  26 15     ROL $15                       ; 31083 ×1664

loc_B6_9085:                    ; from 31081
  9085  CA        DEX                           ; 31085 ×13312
  9086  10 EB     BPL loc_B6_9073               ; 31086 ×13312
  9088  60        RTS                           ; 31088 ×208

sub_B6_9089:                    ; from 310c0
  9089  A2 22     LDX #$22                      ; 31089 ×107

sub_B6_908B:                    ; from 317f8
  908B  85 15     STA $15                       ; 3108B ×110
  908D  A0 00     LDY #$00                      ; 3108D ×110

loc_B6_908F:                    ; from 310aa 310af
  908F  8E 06 20  STX $2006                     ; 3108F ×57856
  9092  8C 06 20  STY $2006                     ; 31092 ×57856
  9095  AD 07 20  LDA $2007                     ; 31095 ×57856
  9098  AD 07 20  LDA $2007                     ; 31098 ×57856
  909B  F0 0C     BEQ loc_B6_90A9               ; 3109B ×57856
  909D  18        CLC                           ; 3109D ×8071
  909E  65 15     ADC $15                       ; 3109E ×8071
  90A0  8E 06 20  STX $2006                     ; 310A0 ×8071
  90A3  8C 06 20  STY $2006                     ; 310A3 ×8071
  90A6  8D 07 20  STA $2007                     ; 310A6 ×8071

loc_B6_90A9:                    ; from 3109b
  90A9  C8        INY                           ; 310A9 ×57856
  90AA  D0 E3     BNE loc_B6_908F               ; 310AA ×57856
  90AC  E8        INX                           ; 310AC ×226
  90AD  E0 24     CPX #$24                      ; 310AD ×226
  90AF  D0 DE     BNE loc_B6_908F               ; 310AF ×226
  90B1  60        RTS                           ; 310B1 ×110

loc_B6_90B2:                    ; from 3002d
  90B2  20 88 FE  JSR sub_B6_FE88               ; 310B2 ×107
  90B5  A2 27     LDX #$27                      ; 310B5 ×107
  90B7  A0 D8     LDY #$D8                      ; 310B7 ×107
  90B9  A9 04     LDA #$04                      ; 310B9 ×107
  90BB  20 65 D7  JSR sub_B6_D765               ; 310BB ×107
  90BE  A9 C8     LDA #$C8                      ; 310BE ×107
  90C0  20 89 90  JSR sub_B6_9089               ; 310C0 ×107
  90C3  20 20 90  JSR sub_B6_9020               ; 310C3 ×107
  90C6  A2 4E     LDX #$4E                      ; 310C6 ×107
  90C8  20 FB D5  JSR sub_B6_D5FB               ; 310C8 ×107
  90CB  A9 20     LDA #$20                      ; 310CB ×107
  90CD  8D 06 20  STA $2006                     ; 310CD ×107
  90D0  A9 85     LDA #$85                      ; 310D0 ×107
  90D2  A2 07     LDX #$07                      ; 310D2 ×107
  90D4  A0 94     LDY #$94                      ; 310D4 ×107
  90D6  20 5B 92  JSR sub_B6_925B               ; 310D6 ×107
  90D9  A9 30     LDA #$30                      ; 310D9 ×107
  90DB  20 92 DB  JSR sub_B6_DB92               ; 310DB ×107
  90DE  A2 34     LDX #$34                      ; 310DE ×107
  90E0  A0 26     LDY #$26                      ; 310E0 ×107
  90E2  20 49 A2  JSR sub_B6_A249               ; 310E2 ×107
  90E5  4C 7D A8  JMP loc_B6_A87D               ; 310E5 ×107

loc_B6_90E8:                    ; from 30015
  90E8  A9 00     LDA #$00                      ; 310E8 ×49
  90EA  8D 00 20  STA $2000                     ; 310EA ×49
  90ED  8D 65 05  STA $0565                     ; 310ED ×49
  90F0  85 B9     STA $B9                       ; 310F0 ×49
  90F2  85 BA     STA $BA                       ; 310F2 ×49
  90F4  85 C2     STA $C2                       ; 310F4 ×49
  90F6  85 C1     STA $C1                       ; 310F6 ×49
  90F8  20 1D 90  JSR sub_B6_901D               ; 310F8 ×49
  90FB  A5 0D     LDA $0D                       ; 310FB ×49
  90FD  F0 14     BEQ loc_B6_9113               ; 310FD ×49
  90FF  20 D9 8F  JSR sub_B6_8FD9               ; 310FF ×0
  9102  A9 0A     LDA #$0A                      ; 31102 ×0
  9104  20 92 DB  JSR sub_B6_DB92               ; 31104 ×0
  9107  A2 6D     LDX #$6D                      ; 31107 ×0
  9109  A0 DA     LDY #$DA                      ; 31109 ×0
  910B  A9 02     LDA #$02                      ; 3110B ×0
  910D  20 65 D7  JSR sub_B6_D765               ; 3110D ×0
  9110  4C 21 91  JMP $9121                     ; 31110 ×0

loc_B6_9113:                    ; from 310fd
  9113  A9 20     LDA #$20                      ; 31113 ×49
  9115  8D 06 20  STA $2006                     ; 31115 ×49
  9118  A9 85     LDA #$85                      ; 31118 ×49
  911A  A2 07     LDX #$07                      ; 3111A ×49
  911C  A0 94     LDY #$94                      ; 3111C ×49
  911E  20 5B 92  JSR sub_B6_925B               ; 3111E ×49
  9121  A9 21     LDA #$21                      ; 31121 ×49
  9123  8D 06 20  STA $2006                     ; 31123 ×49
  9126  A9 CD     LDA #$CD                      ; 31126 ×49
  9128  20 57 92  JSR sub_B6_9257               ; 31128 ×49
  912B  A9 22     LDA #$22                      ; 3112B ×49
  912D  8D 06 20  STA $2006                     ; 3112D ×49
  9130  A9 84     LDA #$84                      ; 31130 ×49
  9132  20 57 92  JSR sub_B6_9257               ; 31132 ×49
  9135  A9 22     LDA #$22                      ; 31135 ×49
  9137  8D 06 20  STA $2006                     ; 31137 ×49
  913A  A9 96     LDA #$96                      ; 3113A ×49
  913C  20 57 92  JSR sub_B6_9257               ; 3113C ×49
  913F  A9 40     LDA #$40                      ; 3113F ×49
  9141  85 C9     STA $C9                       ; 31141 ×49
  9143  4C 7D A8  JMP loc_B6_A87D               ; 31143 ×49

sub_B6_9146:                    ; from 31e90 3195f 31e68 311db 31179
  9146  A9 00     LDA #$00                      ; 31146 ×51788
  9148  8D 05 20  STA $2005                     ; 31148 ×51788

sub_B6_914B:                    ; from 326a9
  914B  8D 05 20  STA $2005                     ; 3114B ×52748
  914E  A5 0A     LDA $0A                       ; 3114E ×52748
  9150  8D 01 20  STA $2001                     ; 31150 ×52748
  9153  60        RTS                           ; 31153 ×52748

loc_B6_9154:                    ; from 30018
  9154  A5 C9     LDA $C9                       ; 31154 ×3577
  9156  F0 1E     BEQ loc_B6_9176               ; 31156 ×3577
  9158  A5 0B     LDA $0B                       ; 31158 ×637
  915A  29 03     AND #$03                      ; 3115A ×637
  915C  D0 07     BNE loc_B6_9165               ; 3115C ×637
  915E  A5 C9     LDA $C9                       ; 3115E ×196
  9160  38        SEC                           ; 31160 ×196
  9161  E9 10     SBC #$10                      ; 31161 ×196
  9163  85 C9     STA $C9                       ; 31163 ×196

loc_B6_9165:                    ; from 3115c
  9165  A9 00     LDA #$00                      ; 31165 ×637
  9167  85 CB     STA $CB                       ; 31167 ×637
  9169  20 83 A8  JSR sub_B6_A883               ; 31169 ×637
  916C  A9 10     LDA #$10                      ; 3116C ×637
  916E  85 CB     STA $CB                       ; 3116E ×637
  9170  20 83 A8  JSR sub_B6_A883               ; 31170 ×637
  9173  4C 79 91  JMP loc_B6_9179               ; 31173 ×637

loc_B6_9176:                    ; from 31156
  9176  20 EF 91  JSR sub_B6_91EF               ; 31176 ×2940

loc_B6_9179:                    ; from 31173
  9179  20 46 91  JSR sub_B6_9146               ; 31179 ×3577
  917C  A5 BA     LDA $BA                       ; 3117C ×3577
  917E  29 03     AND #$03                      ; 3117E ×3577
  9180  D0 19     BNE loc_B6_919B               ; 31180 ×3577
  9182  A5 C1     LDA $C1                       ; 31182 ×931
  9184  38        SEC                           ; 31184 ×931
  9185  E9 0D     SBC #$0D                      ; 31185 ×931
  9187  C9 20     CMP #$20                      ; 31187 ×931
  9189  B0 02     BCS loc_B6_918D               ; 31189 ×931
  918B  A9 20     LDA #$20                      ; 3118B ×98

loc_B6_918D:                    ; from 31189
  918D  85 C1     STA $C1                       ; 3118D ×931
  918F  C9 21     CMP #$21                      ; 3118F ×931
  9191  90 08     BCC loc_B6_919B               ; 31191 ×931
  9193  E6 B9     INC $B9                       ; 31193 ×833
  9195  E6 B9     INC $B9                       ; 31195 ×833
  9197  E6 B9     INC $B9                       ; 31197 ×833
  9199  E6 B9     INC $B9                       ; 31199 ×833

loc_B6_919B:                    ; from 31180 31191
  919B  A0 07     LDY #$07                      ; 3119B ×3577
  919D  A2 03     LDX #$03                      ; 3119D ×3577
  919F  20 CB FF  JSR sub_B6_FFCB               ; 3119F ×3577
  91A2  4C 7D A8  JMP loc_B6_A87D               ; 311A2 ×3577
  91A5  .byte A2 15 A0 00 4C CB FF                              ; 311A5

sub_B6_91AC:                    ; from 317c0 311ba 32b8a 3288a 32c24 32d7a (+4)
  91AC  A9 FE     LDA #$FE                      ; 311AC ×227
  91AE  85 10     STA $10                       ; 311AE ×227
  91B0  A9 10     LDA #$10                      ; 311B0 ×227
  91B2  85 09     STA $09                       ; 311B2 ×227
  91B4  09 80     ORA #$80                      ; 311B4 ×227
  91B6  8D 00 20  STA $2000                     ; 311B6 ×227
  91B9  60        RTS                           ; 311B9 ×227

loc_B6_91BA:                    ; from 3001b
  91BA  20 AC 91  JSR sub_B6_91AC               ; 311BA ×58
  91BD  20 88 FE  JSR sub_B6_FE88               ; 311BD ×58
  91C0  20 BD FE  JSR sub_B6_FEBD               ; 311C0 ×58
  91C3  A9 04     LDA #$04                      ; 311C3 ×58
  91C5  20 92 DB  JSR sub_B6_DB92               ; 311C5 ×58
  91C8  A2 32     LDX #$32                      ; 311C8 ×58
  91CA  A0 32     LDY #$32                      ; 311CA ×58
  91CC  20 49 A2  JSR sub_B6_A249               ; 311CC ×58
  91CF  A2 1D     LDX #$1D                      ; 311CF ×58
  91D1  A0 D8     LDY #$D8                      ; 311D1 ×58
  91D3  A9 01     LDA #$01                      ; 311D3 ×58
  91D5  20 65 D7  JSR sub_B6_D765               ; 311D5 ×58
  91D8  4C 7D A8  JMP loc_B6_A87D               ; 311D8 ×58

loc_B6_91DB:                    ; from 3001e
  91DB  20 46 91  JSR sub_B6_9146               ; 311DB ×3720
  91DE  A5 0B     LDA $0B                       ; 311DE ×3720
  91E0  C9 40     CMP #$40                      ; 311E0 ×3720
  91E2  F0 08     BEQ loc_B6_91EC               ; 311E2 ×3720
  91E4  A0 05     LDY #$05                      ; 311E4 ×3663
  91E6  20 EB FF  JSR sub_B6_FFEB               ; 311E6 ×3663
  91E9  4C 7D A8  JMP loc_B6_A87D               ; 311E9 ×3663

loc_B6_91EC:                    ; from 311e2
  91EC  4C C0 97  JMP loc_B6_97C0               ; 311EC ×57

sub_B6_91EF:                    ; from 32581 31176
  91EF  A0 0E     LDY #$0E                      ; 311EF ×26532
  91F1  BA        TSX                           ; 311F1 ×26532
  91F2  86 2F     STX $2F                       ; 311F2 ×26532
  91F4  A2 6F     LDX #$6F                      ; 311F4 ×26532
  91F6  9A        TXS                           ; 311F6 ×26532
  91F7  A5 97     LDA $97                       ; 311F7 ×26532
  91F9  8D 06 20  STA $2006                     ; 311F9 ×26532
  91FC  A5 98     LDA $98                       ; 311FC ×26532
  91FE  8D 06 20  STA $2006                     ; 311FE ×26532
  9201  A2 00     LDX #$00                      ; 31201 ×26532
  9203  A5 B9     LDA $B9                       ; 31203 ×26532
  9205  38        SEC                           ; 31205 ×26532
  9206  E9 10     SBC #$10                      ; 31206 ×26532
  9208  85 15     STA $15                       ; 31208 ×26532
  920A  A5 C2     LDA $C2                       ; 3120A ×26532
  920C  18        CLC                           ; 3120C ×26532
  920D  69 10     ADC #$10                      ; 3120D ×26532
  920F  45 15     EOR $15                       ; 3120F ×26532
  9211  29 20     AND #$20                      ; 31211 ×26532
  9213  D0 03     BNE loc_B6_9218               ; 31213 ×26532
  9215  C8        INY                           ; 31215 ×1568
  9216  D0 20     BNE loc_B6_9238               ; 31216 ×1568

loc_B6_9218:                    ; from 31251 31213
  9218  68        PLA                           ; 31218 ×371448
  9219  8D 07 20  STA $2007                     ; 31219 ×371448
  921C  68        PLA                           ; 3121C ×371448
  921D  8D 07 20  STA $2007                     ; 3121D ×371448
  9220  68        PLA                           ; 31220 ×371448
  9221  8D 07 20  STA $2007                     ; 31221 ×371448
  9224  68        PLA                           ; 31224 ×371448
  9225  8D 07 20  STA $2007                     ; 31225 ×371448
  9228  68        PLA                           ; 31228 ×371448
  9229  8D 07 20  STA $2007                     ; 31229 ×371448
  922C  68        PLA                           ; 3122C ×371448
  922D  8D 07 20  STA $2007                     ; 3122D ×371448
  9230  68        PLA                           ; 31230 ×371448
  9231  8D 07 20  STA $2007                     ; 31231 ×371448
  9234  68        PLA                           ; 31234 ×371448
  9235  8D 07 20  STA $2007                     ; 31235 ×371448

loc_B6_9238:                    ; from 31216
  9238  8E 07 20  STX $2007                     ; 31238 ×373016
  923B  8E 07 20  STX $2007                     ; 3123B ×373016
  923E  8E 07 20  STX $2007                     ; 3123E ×373016
  9241  8E 07 20  STX $2007                     ; 31241 ×373016
  9244  8E 07 20  STX $2007                     ; 31244 ×373016
  9247  8E 07 20  STX $2007                     ; 31247 ×373016
  924A  8E 07 20  STX $2007                     ; 3124A ×373016
  924D  8E 07 20  STX $2007                     ; 3124D ×373016
  9250  88        DEY                           ; 31250 ×373016
  9251  D0 C5     BNE loc_B6_9218               ; 31251 ×373016
  9253  A6 2F     LDX $2F                       ; 31253 ×26532
  9255  9A        TXS                           ; 31255 ×26532
  9256  60        RTS                           ; 31256 ×26532

sub_B6_9257:                    ; from 31128 31132 3113c
  9257  A2 CC     LDX #$CC                      ; 31257 ×147
  9259  A0 93     LDY #$93                      ; 31259 ×147

sub_B6_925B:                    ; from 310d6 3183d 3184b 3185d 3186b 3187d (+18)
  925B  8D 06 20  STA $2006                     ; 3125B ×1106
  925E  86 19     STX $19                       ; 3125E ×1106
  9260  84 1A     STY $1A                       ; 31260 ×1106
  9262  A0 00     LDY #$00                      ; 31262 ×1106
  9264  B1 19     LDA ($19),Y                   ; 31264 ×1106
  9266  85 15     STA $15                       ; 31266 ×1106
  9268  38        SEC                           ; 31268 ×1106
  9269  E9 01     SBC #$01                      ; 31269 ×1106
  926B  49 1F     EOR #$1F                      ; 3126B ×1106
  926D  85 16     STA $16                       ; 3126D ×1106
  926F  C8        INY                           ; 3126F ×1106
  9270  B1 19     LDA ($19),Y                   ; 31270 ×1106
  9272  85 17     STA $17                       ; 31272 ×1106
  9274  C8        INY                           ; 31274 ×1106
  9275  A6 15     LDX $15                       ; 31275 ×1106
  9277  86 18     STX $18                       ; 31277 ×1106

loc_B6_9279:                    ; from 312c8
  9279  A9 00     LDA #$00                      ; 31279 ×18958
  927B  85 20     STA $20                       ; 3127B ×18958
  927D  B1 19     LDA ($19),Y                   ; 3127D ×18958
  927F  C9 40     CMP #$40                      ; 3127F ×18958
  9281  90 11     BCC loc_B6_9294               ; 31281 ×18958
  9283  29 3F     AND #$3F                      ; 31283 ×10604
  9285  85 1F     STA $1F                       ; 31285 ×10604
  9287  B1 19     LDA ($19),Y                   ; 31287 ×10604
  9289  2A        ROL A                         ; 31289 ×10604
  928A  A5 1F     LDA $1F                       ; 3128A ×10604
  928C  B0 04     BCS loc_B6_9292               ; 3128C ×10604
  928E  C6 20     DEC $20                       ; 3128E ×2400
  9290  C6 20     DEC $20                       ; 31290 ×2400

loc_B6_9292:                    ; from 3128c
  9292  E6 20     INC $20                       ; 31292 ×10604

loc_B6_9294:                    ; from 31281
  9294  85 1F     STA $1F                       ; 31294 ×18958
  9296  C8        INY                           ; 31296 ×18958

loc_B6_9297:                    ; from 312cc
  9297  B1 19     LDA ($19),Y                   ; 31297 ×49269
  9299  C8        INY                           ; 31299 ×49269

loc_B6_929A:                    ; from 312ce 312d3
  929A  8D 07 20  STA $2007                     ; 3129A ×150436
  929D  18        CLC                           ; 3129D ×150436
  929E  65 20     ADC $20                       ; 3129E ×150436
  92A0  C6 18     DEC $18                       ; 312A0 ×150436
  92A2  D0 22     BNE loc_B6_92C6               ; 312A2 ×150436
  92A4  C6 17     DEC $17                       ; 312A4 ×9458
  92A6  F0 2E     BEQ loc_B6_92D6               ; 312A6 ×9458
  92A8  85 21     STA $21                       ; 312A8 ×8352
  92AA  98        TYA                           ; 312AA ×8352
  92AB  18        CLC                           ; 312AB ×8352
  92AC  65 19     ADC $19                       ; 312AC ×8352
  92AE  85 19     STA $19                       ; 312AE ×8352
  92B0  90 02     BCC loc_B6_92B4               ; 312B0 ×8352
  92B2  E6 1A     INC $1A                       ; 312B2 ×294

loc_B6_92B4:                    ; from 312b0
  92B4  A0 00     LDY #$00                      ; 312B4 ×8352
  92B6  A6 16     LDX $16                       ; 312B6 ×8352
  92B8  F0 06     BEQ $92C0                     ; 312B8 ×8352

loc_B6_92BA:                    ; from 312be
  92BA  AD 07 20  LDA $2007                     ; 312BA ×132005
  92BD  CA        DEX                           ; 312BD ×132005
  92BE  D0 FA     BNE loc_B6_92BA               ; 312BE ×132005
  92C0  A5 21     LDA $21                       ; 312C0 ×8352
  92C2  A6 15     LDX $15                       ; 312C2 ×8352
  92C4  86 18     STX $18                       ; 312C4 ×8352

loc_B6_92C6:                    ; from 312a2
  92C6  C6 1F     DEC $1F                       ; 312C6 ×149330
  92C8  F0 AF     BEQ loc_B6_9279               ; 312C8 ×149330
  92CA  A6 20     LDX $20                       ; 312CA ×131478
  92CC  F0 C9     BEQ loc_B6_9297               ; 312CC ×131478
  92CE  10 CA     BPL loc_B6_929A               ; 312CE ×101167
  92D0  18        CLC                           ; 312D0 ×25060
  92D1  69 01     ADC #$01                      ; 312D1 ×25060
  92D3  4C 9A 92  JMP loc_B6_929A               ; 312D3 ×25060

loc_B6_92D6:                    ; from 312a6
  92D6  60        RTS                           ; 312D6 ×1106
  92D7  .byte A9 88 A9 11 A9 A9 A9 D1 A9 64 A9 C2 A9 3A 85 19   ; 312D7
  92E7  .byte A9 E3 A9 96 A9 95 A9 95 A9 96 A9 96 A9 97 85 1A   ; 312E7
  92F7  .byte A0 00 84 15 84 16 A2 00 B1 19 9D 00 07 C8 B1 19   ; 312F7
  9307  .byte C8 9D 01 07 85 17 AD 00 07 18 65 15 85 15 90 02   ; 31307
  9317  .byte E6 16 C6 17 D0 F0 A9 00 38 E5 15 85 15 A9 00 E5   ; 31317
  9327  .byte 16 85 16 A2 FE 4C A4 93 A0 00 B1 19 9D 03 07 85   ; 31327
  9337  .byte 18 C8 38 F1 19 F0 06 C9 FF F0 19 D0 30 A9 41 9D   ; 31337
  9347  .byte 02 07 20 B3 93 B1 19 C5 18 D0 52 FE 02 07 C8 20   ; 31347
  9357  .byte B3 93 D0 F1 A9 81 9D 02 07 20 B3 93 E6 18 B1 19   ; 31357
  9367  .byte C5 18 D0 39 C8 FE 02 07 20 B3 93 D0 EF A9 00 85   ; 31367
  9377  .byte 18 A9 01 9D 02 07 86 1B 20 B3 93 E6 18 E8 B1 19   ; 31377
  9387  .byte 9D 03 07 C8 B1 19 38 FD 03 07 F0 04 C9 01 D0 E8   ; 31387
  9397  .byte 88 86 1C A6 1B A5 18 9D 02 07 A6 1C CA 98 18 65   ; 31397
  93A7  .byte 19 85 19 90 02 E6 1A E8 E8 4C 2F 93 E6 15 D0 14   ; 313A7
  93B7  .byte E6 16 D0 10 E8 E8 E8 E8 8E FF 07 A9 81 49 18 8D   ; 313B7
  93C7  .byte 01 20 D0 F9 60                                    ; 313C7
  93CC  .byte 07 08 38 C7 C9 CB CD CF D1 D3 C8 CA CC CE D0 D2   ; 313CC data, read by 31264 31270 3127d 31297
  93DC  .byte D4 D5 D7 D9 DB DD DF E1 D6 D8 DA DC DE E0 E2 E3   ; 313DC data, read by 31297
  93EC  .byte E5 E7 E9 EB ED EF E4 E6 E8 EA EC EE F0 F1 F3 F5   ; 313EC data, read by 31297
  93FC  .byte F7 F9 FB FD F2 F4 F6 F8 FA FC FE 17 0B 06 00 00   ; 313FC data, read by 31297 31264 31270 3127d
  940C  .byte 00 00 00 00 8B 01 06 00 00 00 00 00 00 04 00 00   ; 3140C data, read by 31297 31287 3127d
  941C  .byte 00 00 90 0C 05 00 00 00 00 0B 93 1C 02 00 00 96   ; 3141C data, read by 31297 31287 3127d
  942C  .byte 2F 01 00 96 45 01 00 96 5B 01 00 8A 71 02 00 00   ; 3142C data, read by 31297 3127d 31287
  943C  .byte 8A 7B 01 00 8A 85 02 00 00 8A 8F 02 00 00 88 99   ; 3143C data, read by 31287 3127d 31297
  944C  .byte 04 00 00 00 00 89 A1 02 00 00 88 AA 05 00 00 00   ; 3144C data, read by 3127d 31297 31287
  945C  .byte 00 00 87 B2 05 00 00 00 00 8F 85 B9 07 00 00 00   ; 3145C data, read by 31297 31287 3127d
  946C  .byte 00 00 00 00 84 BE 04 00 00 00 00 0E 12 4E F8 03   ; 3146C data, read by 31297 31287 3127d 31264 (+1)
  947C  .byte 01 02 0F 8B 03 06 0E 00 00 00 00 00 89 10 05 00   ; 3147C data, read by 31297 31287 3127d
  948C  .byte 00 00 00 00 88 19 06 21 00 00 00 00 00 85 23 03   ; 3148C data, read by 31297 31287 3127d
  949C  .byte 00 28 00 8A 29 04 00 00 33 00 A0 34 01 C1 8D 54   ; 3149C data, read by 31297 31287 3127d
  94AC  .byte 03 00 00 C2 8C 61 03 00 00 6D 86 6F 01 68 8D 75   ; 314AC data, read by 3127d 31297 31287
  94BC  .byte 01 68 A9 82 01 00 8B AC 04 00 B8 00 B7 86 B9 06   ; 314BC data, read by 3127d 31297 31287
  94CC  .byte AB BF C0 00 00 00 4E FB 09 05 88 D5 01 D5 9F DD   ; 314CC data, read by 31297 31287 3127d 31264 (+1)
  94DC  .byte 05 D5 FC FD FE FF                                 ; 314DC data, read by 3127d 31297
  94E2  .byte 0B 0D 42 00 89 7A 02 00 0C 89 8F 01 00 8A A6 01   ; 314E2
  94F2  .byte 00 8A C0 01 00 8A DC 8B 00 8B 17 8B 2E 8B 44 01   ; 314F2
  9502  .byte 00 8A 5B 8B 71 85 84 42 00 84 89 42 00 01 93 47   ; 31502
  9512  .byte 00 01 94 11 18 4E 00 83 01 4E 00 83 04 4C 00 85   ; 31512
  9522  .byte 07 48 00 89 0C 48 00 89 15 47 00 8A 1E 45 00 8C   ; 31522
  9532  .byte 28 43 00 8E 34 42 00 8F 42 01 00 90 51 01 00 90   ; 31532
  9542  .byte 6A 02 00 7A 85 83 83 80 87 88 01 00 87 98 82 96   ; 31542
  9552  .byte 87 9F 89 B0 01 AF 87 B9 91 CB 83 E6 01 00 8D E9   ; 31552
  9562  .byte 42 00 82 0B 42 00 83 0D 01 0A 87 10 42 00 83 22   ; 31562
  9572  .byte 01 00 82 25 82 20 87 27 01 00 86 39 83 36 85 3F   ; 31572
  9582  .byte 42 00 86 4F 84 4B 84 55 01 00 82 59 85 65 85 60   ; 31582
  9592  .byte 87 6A 8A 72 87 7D 02 85 8E 82 87 42 00 84 89 84   ; 31592
  95A2  .byte 8F 4C 00 84 94 44 00                              ; 315A2
  95A9  .byte 0B 09 01 83 82 81 48 00 89 84 42 00 8A 8D 01 00   ; 315A9 data, read by 31264 31270 3127d 31297 (+1)
  95B9  .byte 86 97 01 00 8A 9D 01 00 8F A7 01 00 8A B6 01 00   ; 315B9 data, read by 31287 3127d 31297
  95C9  .byte 89 C0 44 00 84 C9 44 00                           ; 315C9 data, read by 31287 3127d 31297
  95D1  .byte 0D 0F 44 40 85 41 47 40 88 46 44 40 89 4E 43 40   ; 315D1
  95E1  .byte 87 57 01 40 83 5E 42 40 82 61 01 40 84 63 01 40   ; 315E1
  95F1  .byte 83 67 01 40 B4 6A 01 40 8C 9E 01 40 8B AA 42 40   ; 315F1
  9601  .byte 8B B5 43 40 89 C0 45 40 87 C9 47 40 85 D0 44 40   ; 31601
  9611  .byte 07 08 43 00 82 81 43 00 84 83 43 00 82 87 01 00   ; 31611 data, read by 31264 31270 31287 3127d (+1)
  9621  .byte 82 89 01 00 83 8B 01 00 89 8E 01 00 83 97 44 00   ; 31621 data, read by 31287 3127d 31297
  9631  .byte 82 9A 45 00 01 9C 46 00 1C 08 01 FC 5A F8 02 FD   ; 31631 data, read by 31287 3127d 31297 31264 (+1)
  9641  .byte F9 5A 00 02 FA F9 5A 00 02 FA F9 5A 00 02 FA F9   ; 31641 data, read by 31297 31287 3127d
  9651  .byte 5A 00 02 FA F9 5A 00 02 FA F9 5A 00 02 FA FE 5A   ; 31651 data, read by 31287 3127d 31297
  9661  .byte FB 01 FF                                          ; 31661 data, read by 31297 3127d
  9664  .byte 0C 10 4F 00 01 01 4A 00 84 02 42 00 82 06 43 00   ; 31664
  9674  .byte 89 08 43 00 8A 11 01 00 8B 1B 01 00 98 26 42 00   ; 31674
  9684  .byte 83 3E 01 00 86 41 01 00 84 47 01 00 84 4B 43 00   ; 31684
  9694  .byte 84 4F 42 00 83 53 42 00 86 56 01 00 84 5C 42 00   ; 31694
  96A4  .byte 84 60 42 00 84 64 43 00 83 68 42 00 83 6B 42 00   ; 316A4
  96B4  .byte 85 6E 01 00 84 73 42 00 82 77 01 00 89 79 14 12   ; 316B4
  96C4  .byte 43 00 83 01 49 00 01 04 47 00 84 05 42 00 89 09   ; 316C4
  96D4  .byte 44 00 90 12 44 00 90 22 43 00 91 32 43 00 91 43   ; 316D4
  96E4  .byte 43 00 92 54 43 00 91 66 42 00 92 77 42 00 92 89   ; 316E4
  96F4  .byte 42 00 93 9B 03 00 AE 00 8E AF 01 00 82 BD 03 00   ; 316F4
  9704  .byte BF 00 91 C0 43 00 84 D1 01 92 85 D5 01 00 86 DA   ; 31704
  9714  .byte 43 00 84 E0 42 00 88 E4 01 18 82 EC 44 00 83 EE   ; 31714
  9724  .byte 42 00 8A F1 42 00 86 41 42 00 8A 47 42 00 86 51   ; 31724
  9734  .byte 44 00 87 57 42 00 14 12 48 00 83 01 4D 00 02 04   ; 31734
  9744  .byte 00 86 05 4C 00 02 0B 00 87 0C 4A 00 8A 13 4A 00   ; 31744
  9754  .byte 8B 1D 49 00 8C 28 02 05 34 47 00 86 35 42 00 85   ; 31754
  9764  .byte 3B 47 00 86 40 42 00 84 46 48 00 86 4A 42 00 84   ; 31764
  9774  .byte 50 48 00 86 54 42 00 83 5A 49 00 86 5D 42 00 83   ; 31774
  9784  .byte 63 49 00 86 66 42 00 83 6C 48 00 91 6F 43 00 8A   ; 31784
  9794  .byte 80 43 89 84 8A 42 00 92 8E 42 00 8C A0 01 00 84   ; 31794
  97A4  .byte AC 44 00 8F B0 44 00 86 BF 42 00 82 F5 01 00 85   ; 317A4
  97B4  .byte F7 42 00                                          ; 317B4
  97B7  .byte 03 01                                             ; 317B7 data, read by 31801
  97B9  .byte 01                                                ; 317B9
  97BA  .byte 20 20                                             ; 317BA data, read by 31804
  97BC  .byte 21 4C E8 90                                       ; 317BC

loc_B6_97C0:                    ; from 311ec 30030
  97C0  20 AC 91  JSR sub_B6_91AC               ; 317C0 ×60
  97C3  20 88 FE  JSR sub_B6_FE88               ; 317C3 ×60
  97C6  20 BD FE  JSR sub_B6_FEBD               ; 317C6 ×60
  97C9  A9 02     LDA #$02                      ; 317C9 ×60
  97CB  A0 04     LDY #$04                      ; 317CB ×60
  97CD  20 94 DB  JSR sub_B6_DB94               ; 317CD ×60
  97D0  A9 04     LDA #$04                      ; 317D0 ×60
  97D2  A8        TAY                           ; 317D2 ×60
  97D3  20 94 DB  JSR sub_B6_DB94               ; 317D3 ×60
  97D6  A9 10     LDA #$10                      ; 317D6 ×60
  97D8  8D 00 20  STA $2000                     ; 317D8 ×60
  97DB  A9 16     LDA #$16                      ; 317DB ×60
  97DD  8D C9 FF  STA $FFC9                     ; 317DD ×60
  97E0  A6 82     LDX $82                       ; 317E0 ×60
  97E2  30 1C     BMI loc_B6_9800               ; 317E2 ×60
  97E4  A0 D8     LDY #$D8                      ; 317E4 ×3
  97E6  B5 0E     LDA $0E,X                     ; 317E6 ×3
  97E8  2A        ROL A                         ; 317E8 ×3
  97E9  A9 07     LDA #$07                      ; 317E9 ×3
  97EB  90 02     BCC loc_B6_97EF               ; 317EB ×3
  97ED  A9 04     LDA #$04                      ; 317ED inferred, not run

loc_B6_97EF:                    ; from 317eb
  97EF  A2 8B     LDX #$8B                      ; 317EF ×3
  97F1  20 65 D7  JSR sub_B6_D765               ; 317F1 ×3
  97F4  A9 D2     LDA #$D2                      ; 317F4 ×3
  97F6  A2 20     LDX #$20                      ; 317F6 ×3
  97F8  20 8B 90  JSR sub_B6_908B               ; 317F8 ×3
  97FB  20 EA 8F  JSR sub_B6_8FEA               ; 317FB ×3
  97FE  A6 82     LDX $82                       ; 317FE ×3

loc_B6_9800:                    ; from 317e2
  9800  E8        INX                           ; 31800 ×60
  9801  BC B7 97  LDY $97B7,X                   ; 31801 ×60
  9804  BD BA 97  LDA $97BA,X                   ; 31804 ×60
  9807  8D 06 20  STA $2006                     ; 31807 ×60
  980A  A9 80     LDA #$80                      ; 3180A ×60
  980C  8D 06 20  STA $2006                     ; 3180C ×60
  980F  E0 02     CPX #$02                      ; 3180F ×60
  9811  A2 00     LDX #$00                      ; 31811 ×60
  9813  B0 0B     BCS $9820                     ; 31813 ×60

loc_B6_9815:                    ; from 3181b 3182a
  9815  A9 3F     LDA #$3F                      ; 31815 ×40896
  9817  8D 07 20  STA $2007                     ; 31817 ×40896
  981A  CA        DEX                           ; 3181A ×40896
  981B  D0 F8     BNE loc_B6_9815               ; 3181B ×40896
  981D  88        DEY                           ; 3181D ×174
  981E  F0 0C     BEQ loc_B6_982C               ; 3181E ×174
  9820  A9 3E     LDA #$3E                      ; 31820 ×114

loc_B6_9822:                    ; from 31828
  9822  8D 07 20  STA $2007                     ; 31822 ×3648
  9825  CA        DEX                           ; 31825 ×3648
  9826  E0 E0     CPX #$E0                      ; 31826 ×3648
  9828  D0 F8     BNE loc_B6_9822               ; 31828 ×3648
  982A  F0 E9     BEQ loc_B6_9815               ; 3182A ×114

loc_B6_982C:                    ; from 3181e
  982C  A5 82     LDA $82                       ; 3182C ×60
  982E  C9 01     CMP #$01                      ; 3182E ×60
  9830  F0 1C     BEQ $984E                     ; 31830 ×60
  9832  A9 20     LDA #$20                      ; 31832 ×60
  9834  8D 06 20  STA $2006                     ; 31834 ×60
  9837  A9 A4     LDA #$A4                      ; 31837 ×60
  9839  A2 31     LDX #$31                      ; 31839 ×60
  983B  A0 9B     LDY #$9B                      ; 3183B ×60
  983D  20 5B 92  JSR sub_B6_925B               ; 3183D ×60
  9840  A9 20     LDA #$20                      ; 31840 ×60
  9842  8D 06 20  STA $2006                     ; 31842 ×60
  9845  A9 93     LDA #$93                      ; 31845 ×60
  9847  A2 C3     LDX #$C3                      ; 31847 ×60
  9849  A0 9B     LDY #$9B                      ; 31849 ×60
  984B  20 5B 92  JSR sub_B6_925B               ; 3184B ×60
  984E  A5 82     LDA $82                       ; 3184E ×60
  9850  F0 3C     BEQ loc_B6_988E               ; 31850 ×60
  9852  A9 21     LDA #$21                      ; 31852 ×57
  9854  8D 06 20  STA $2006                     ; 31854 ×57
  9857  A9 D2     LDA #$D2                      ; 31857 ×57
  9859  A2 5C     LDX #$5C                      ; 31859 ×57
  985B  A0 9B     LDY #$9B                      ; 3185B ×57
  985D  20 5B 92  JSR sub_B6_925B               ; 3185D ×57
  9860  A9 21     LDA #$21                      ; 31860 ×57
  9862  8D 06 20  STA $2006                     ; 31862 ×57
  9865  A9 84     LDA #$84                      ; 31865 ×57
  9867  A2 80     LDX #$80                      ; 31867 ×57
  9869  A0 9B     LDY #$9B                      ; 31869 ×57
  986B  20 5B 92  JSR sub_B6_925B               ; 3186B ×57
  986E  A5 82     LDA $82                       ; 3186E ×57
  9870  10 1C     BPL loc_B6_988E               ; 31870 ×57
  9872  A9 22     LDA #$22                      ; 31872 ×57
  9874  8D 06 20  STA $2006                     ; 31874 ×57
  9877  A9 A4     LDA #$A4                      ; 31877 ×57
  9879  A2 60     LDX #$60                      ; 31879 ×57
  987B  A0 9B     LDY #$9B                      ; 3187B ×57
  987D  20 5B 92  JSR sub_B6_925B               ; 3187D ×57
  9880  A9 22     LDA #$22                      ; 31880 ×57
  9882  8D 06 20  STA $2006                     ; 31882 ×57
  9885  A9 B4     LDA #$B4                      ; 31885 ×57
  9887  A2 A9     LDX #$A9                      ; 31887 ×57
  9889  A0 9B     LDY #$9B                      ; 31889 ×57
  988B  20 5B 92  JSR sub_B6_925B               ; 3188B ×57

loc_B6_988E:                    ; from 31850
  988E  A9 90     LDA #$90                      ; 3188E ×60
  9890  8D 00 20  STA $2000                     ; 31890 ×60
  9893  A2 2C     LDX #$2C                      ; 31893 ×60
  9895  A0 2E     LDY #$2E                      ; 31895 ×60
  9897  20 49 A2  JSR sub_B6_A249               ; 31897 ×60
  989A  A0 00     LDY #$00                      ; 3189A ×60
  989C  20 EA 98  JSR sub_B6_98EA               ; 3189C ×60

loc_B6_989F:                    ; from 3190b
  989F  A2 22     LDX #$22                      ; 3189F ×60
  98A1  20 FB D5  JSR sub_B6_D5FB               ; 318A1 ×60
  98A4  A5 82     LDA $82                       ; 318A4 ×60
  98A6  30 36     BMI loc_B6_98DE               ; 318A6 ×60
  98A8  F0 02     BEQ loc_B6_98AC               ; 318A8 ×3
  98AA  A9 10     LDA #$10                      ; 318AA ×0

loc_B6_98AC:                    ; from 318a8
  98AC  A2 23     LDX #$23                      ; 318AC ×3
  98AE  8E 06 20  STX $2006                     ; 318AE ×3
  98B1  49 D8     EOR #$D8                      ; 318B1 ×3
  98B3  8D 06 20  STA $2006                     ; 318B3 ×3
  98B6  A0 10     LDY #$10                      ; 318B6 ×3

loc_B6_98B8:                    ; from 318be
  98B8  A9 AA     LDA #$AA                      ; 318B8 ×51
  98BA  8D 07 20  STA $2007                     ; 318BA ×51
  98BD  88        DEY                           ; 318BD ×51
  98BE  10 F8     BPL loc_B6_98B8               ; 318BE ×51
  98C0  8E 06 20  STX $2006                     ; 318C0 ×3
  98C3  A9 E8     LDA #$E8                      ; 318C3 ×3
  98C5  8D 06 20  STA $2006                     ; 318C5 ×3
  98C8  A0 10     LDY #$10                      ; 318C8 ×3

loc_B6_98CA:                    ; from 318d2
  98CA  A9 FF     LDA #$FF                      ; 318CA ×48
  98CC  A9 AA     LDA #$AA                      ; 318CC ×48
  98CE  8D 07 20  STA $2007                     ; 318CE ×48
  98D1  88        DEY                           ; 318D1 ×48
  98D2  D0 F6     BNE loc_B6_98CA               ; 318D2 ×48
  98D4  A9 32     LDA #$32                      ; 318D4 ×3
  98D6  20 92 DB  JSR sub_B6_DB92               ; 318D6 ×3
  98D9  A9 34     LDA #$34                      ; 318D9 ×3
  98DB  20 92 DB  JSR sub_B6_DB92               ; 318DB ×3

loc_B6_98DE:                    ; from 318a6
  98DE  A9 90     LDA #$90                      ; 318DE ×60
  98E0  8D 00 20  STA $2000                     ; 318E0 ×60
  98E3  A2 1B     LDX #$1B                      ; 318E3 ×60
  98E5  A0 00     LDY #$00                      ; 318E5 ×60
  98E7  4C CB FF  JMP sub_B6_FFCB               ; 318E7 ×60

sub_B6_98EA:                    ; from 31d13 3189c
  98EA  A2 00     LDX #$00                      ; 318EA ×165
  98EC  A9 06     LDA #$06                      ; 318EC ×165
  98EE  8D B9 FF  STA $FFB9                     ; 318EE ×165
  98F1  8A        TXA                           ; 318F1 ×165

loc_B6_98F2:                    ; from 318f8
  98F2  9D 00 01  STA $0100,X                   ; 318F2 ×31680
  98F5  E8        INX                           ; 318F5 ×31680
  98F6  E0 C0     CPX #$C0                      ; 318F6 ×31680
  98F8  D0 F8     BNE loc_B6_98F2               ; 318F8 ×31680
  98FA  A9 01     LDA #$01                      ; 318FA ×165
  98FC  8D 60 01  STA $0160                     ; 318FC ×165
  98FF  8D 62 01  STA $0162                     ; 318FF ×165
  9902  A9 FF     LDA #$FF                      ; 31902 ×165
  9904  8D 7E 01  STA $017E                     ; 31904 ×165
  9907  8D 61 01  STA $0161                     ; 31907 ×165
  990A  98        TYA                           ; 3190A ×165
  990B  F0 92     BEQ loc_B6_989F               ; 3190B ×165
  990D  4C 16 9D  JMP loc_B6_9D16               ; 3190D ×105

sub_B6_9910:                    ; from 31933 3194a
  9910  AE 7F 01  LDX $017F                     ; 31910 ×125436
  9913  8A        TXA                           ; 31913 ×125436
  9914  09 20     ORA #$20                      ; 31914 ×125436
  9916  8D 06 20  STA $2006                     ; 31916 ×125436
  9919  BD 70 01  LDA $0170,X                   ; 31919 ×125436
  991C  4A        LSR A                         ; 3191C ×125436
  991D  4A        LSR A                         ; 3191D ×125436
  991E  4A        LSR A                         ; 3191E ×125436
  991F  29 1F     AND #$1F                      ; 3191F ×125436
  9921  09 80     ORA #$80                      ; 31921 ×125436
  9923  8D 06 20  STA $2006                     ; 31923 ×125436
  9926  A9 14     LDA #$14                      ; 31926 ×125436
  9928  8D 00 20  STA $2000                     ; 31928 ×125436
  992B  A2 08     LDX #$08                      ; 3192B ×125436
  992D  60        RTS                           ; 3192D ×125436

sub_B6_992E:                    ; from 31e7c 31e82 3195c 31e8d
  992E  A9 16     LDA #$16                      ; 3192E ×62718
  9930  8D C9 FF  STA $FFC9                     ; 31930 ×62718
  9933  20 10 99  JSR sub_B6_9910               ; 31933 ×62718
  9936  AD 07 20  LDA $2007                     ; 31936 ×62718

loc_B6_9939:                    ; from 31943
  9939  AD 07 20  LDA $2007                     ; 31939 ×501744
  993C  2D 7E 01  AND $017E                     ; 3193C ×501744
  993F  9D 80 01  STA $0180,X                   ; 3193F ×501744
  9942  CA        DEX                           ; 31942 ×501744
  9943  D0 F4     BNE loc_B6_9939               ; 31943 ×501744
  9945  A9 06     LDA #$06                      ; 31945 ×62718
  9947  8D B9 FF  STA $FFB9                     ; 31947 ×62718
  994A  20 10 99  JSR sub_B6_9910               ; 3194A ×62718

loc_B6_994D:                    ; from 31954
  994D  BD 80 01  LDA $0180,X                   ; 3194D ×501744
  9950  8D 07 20  STA $2007                     ; 31950 ×501744
  9953  CA        DEX                           ; 31953 ×501744
  9954  D0 F7     BNE loc_B6_994D               ; 31954 ×501744
  9956  A9 10     LDA #$10                      ; 31956 ×62718
  9958  8D 00 20  STA $2000                     ; 31958 ×62718
  995B  60        RTS                           ; 3195B ×62718

loc_B6_995C:                    ; from 30021
  995C  20 2E 99  JSR sub_B6_992E               ; 3195C ×14940
  995F  20 46 91  JSR sub_B6_9146               ; 3195F ×14940
  9962  A6 82     LDX $82                       ; 31962 ×14940
  9964  30 28     BMI loc_B6_998E               ; 31964 ×14940
  9966  A5 0B     LDA $0B                       ; 31966 ×291
  9968  C9 60     CMP #$60                      ; 31968 ×291
  996A  D0 22     BNE loc_B6_998E               ; 3196A ×291
  996C  A9 00     LDA #$00                      ; 3196C ×3
  996E  85 81     STA $81                       ; 3196E ×3
  9970  A9 0A     LDA #$0A                      ; 31970 ×3
  9972  85 CE     STA $CE                       ; 31972 ×3
  9974  A9 78     LDA #$78                      ; 31974 ×3
  9976  85 CF     STA $CF                       ; 31976 ×3
  9978  B5 0E     LDA $0E,X                     ; 31978 ×3
  997A  10 08     BPL loc_B6_9984               ; 3197A ×3
  997C  A9 00     LDA #$00                      ; 3197C inferred, not run
  997E  85 CE     STA $CE                       ; 3197E inferred, not run
  9980  A9 90     LDA #$90                      ; 31980 inferred, not run
  9982  85 81     STA $81                       ; 31982 inferred, not run

loc_B6_9984:                    ; from 3197a
  9984  A5 23     LDA $23                       ; 31984 ×3
  9986  E9 03     SBC #$03                      ; 31986 ×3
  9988  85 23     STA $23                       ; 31988 ×3
  998A  B0 02     BCS loc_B6_998E               ; 3198A ×3
  998C  C6 24     DEC $24                       ; 3198C inferred, not run

loc_B6_998E:                    ; from 31964 3196a 3198a
  998E  AD 70 01  LDA $0170                     ; 3198E ×14940
  9991  8D 05 20  STA $2005                     ; 31991 ×14940
  9994  A9 00     LDA #$00                      ; 31994 ×14940
  9996  8D 05 20  STA $2005                     ; 31996 ×14940
  9999  A0 0A     LDY #$0A                      ; 31999 ×14940
  999B  A2 6F     LDX #$6F                      ; 3199B ×14940
  999D  20 EB FF  JSR sub_B6_FFEB               ; 3199D ×14940
  99A0  AD 71 01  LDA $0171                     ; 319A0 ×14940
  99A3  8D 05 20  STA $2005                     ; 319A3 ×14940
  99A6  8E 05 20  STX $2005                     ; 319A6 ×14940
  99A9  A0 06     LDY #$06                      ; 319A9 ×14940
  99AB  A2 A4     LDX #$A4                      ; 319AB ×14940
  99AD  20 EB FF  JSR sub_B6_FFEB               ; 319AD ×14940
  99B0  AD 72 01  LDA $0172                     ; 319B0 ×14940
  99B3  8D 05 20  STA $2005                     ; 319B3 ×14940
  99B6  8E 05 20  STX $2005                     ; 319B6 ×14940
  99B9  AE 7F 01  LDX $017F                     ; 319B9 ×14940
  99BC  E0 03     CPX #$03                      ; 319BC ×14940
  99BE  D0 06     BNE loc_B6_99C6               ; 319BE ×14940
  99C0  AD 7E 01  LDA $017E                     ; 319C0 ×3708
  99C3  10 35     BPL loc_B6_99FA               ; 319C3 ×3708
  99C5  E8        INX                           ; 319C5 ×3651

loc_B6_99C6:                    ; from 319be
  99C6  BD 68 01  LDA $0168,X                   ; 319C6 ×14883
  99C9  38        SEC                           ; 319C9 ×14883
  99CA  FD CA 9A  SBC $9ACA,X                   ; 319CA ×14883
  99CD  9D 68 01  STA $0168,X                   ; 319CD ×14883
  99D0  BD 60 01  LDA $0160,X                   ; 319D0 ×14883
  99D3  FD CF 9A  SBC $9ACF,X                   ; 319D3 ×14883
  99D6  9D 60 01  STA $0160,X                   ; 319D6 ×14883
  99D9  BD 70 01  LDA $0170,X                   ; 319D9 ×14883
  99DC  18        CLC                           ; 319DC ×14883
  99DD  7D CA 9A  ADC $9ACA,X                   ; 319DD ×14883
  99E0  9D 70 01  STA $0170,X                   ; 319E0 ×14883
  99E3  D0 1C     BNE loc_B6_9A01               ; 319E3 ×14883
  99E5  EE 7F 01  INC $017F                     ; 319E5 ×408
  99E8  E0 03     CPX #$03                      ; 319E8 ×408
  99EA  90 15     BCC loc_B6_9A01               ; 319EA ×408
  99EC  8D 7F 01  STA $017F                     ; 319EC ×57
  99EF  AD 7E 01  LDA $017E                     ; 319EF ×57
  99F2  49 FF     EOR #$FF                      ; 319F2 ×57
  99F4  8D 7E 01  STA $017E                     ; 319F4 ×57
  99F7  4C 09 9A  JMP loc_B6_9A09               ; 319F7 ×57

loc_B6_99FA:                    ; from 319c3
  99FA  A2 18     LDX #$18                      ; 319FA ×57
  99FC  A0 00     LDY #$00                      ; 319FC ×57
  99FE  4C CB FF  JMP sub_B6_FFCB               ; 319FE ×57

loc_B6_9A01:                    ; from 319e3 319ea
  9A01  20 0C 9A  JSR sub_B6_9A0C               ; 31A01 ×14826
  9A04  F0 03     BEQ loc_B6_9A09               ; 31A04 ×14826
  9A06  20 78 87  JSR sub_B6_8778               ; 31A06 ×9867

loc_B6_9A09:                    ; from 31a04 319f7
  9A09  4C 7D A8  JMP loc_B6_A87D               ; 31A09 ×14883

sub_B6_9A0C:                    ; from 31a01
  9A0C  A0 02     LDY #$02                      ; 31A0C ×14826
  9A0E  A5 82     LDA $82                       ; 31A0E ×14826
  9A10  C9 01     CMP #$01                      ; 31A10 ×14826
  9A12  D0 01     BNE sub_B6_9A15               ; 31A12 ×14826
  9A14  C8        INY                           ; 31A14 ×0

sub_B6_9A15:                    ; from 31fdc 31a12
  9A15  A2 00     LDX #$00                      ; 31A15 ×38715

loc_B6_9A17:                    ; from 31ac4
  9A17  84 16     STY $16                       ; 31A17 ×155742
  9A19  B9 D1 9A  LDA $9AD1,Y                   ; 31A19 ×155742
  9A1C  18        CLC                           ; 31A1C ×155742
  9A1D  79 66 01  ADC $0166,Y                   ; 31A1D ×155742
  9A20  85 17     STA $17                       ; 31A20 ×155742
  9A22  B9 5E 01  LDA $015E,Y                   ; 31A22 ×155742
  9A25  69 00     ADC #$00                      ; 31A25 ×155742
  9A27  6A        ROR A                         ; 31A27 ×155742
  9A28  90 03     BCC loc_B6_9A2D               ; 31A28 ×155742
  9A2A  4C B5 9A  JMP loc_B6_9AB5               ; 31A2A ×35487

loc_B6_9A2D:                    ; from 31a28
  9A2D  B9 DA 9A  LDA $9ADA,Y                   ; 31A2D ×120255
  9A30  38        SEC                           ; 31A30 ×120255
  9A31  ED 50 01  SBC $0150                     ; 31A31 ×120255
  9A34  85 8C     STA $8C                       ; 31A34 ×120255
  9A36  C0 07     CPY #$07                      ; 31A36 ×120255
  9A38  90 45     BCC loc_B6_9A7F               ; 31A38 ×120255
  9A3A  C0 09     CPY #$09                      ; 31A3A ×58625
  9A3C  90 1A     BCC loc_B6_9A58               ; 31A3C ×58625
  9A3E  D0 09     BNE loc_B6_9A49               ; 31A3E ×28673
  9A40  A5 8C     LDA $8C                       ; 31A40 ×21363
  9A42  E9 08     SBC #$08                      ; 31A42 ×21363
  9A44  8D FF 03  STA $03FF                     ; 31A44 ×21363
  9A47  86 82     STX $82                       ; 31A47 ×21363

loc_B6_9A49:                    ; from 31a3e
  9A49  A5 0C     LDA $0C                       ; 31A49 ×28673
  9A4B  C9 A0     CMP #$A0                      ; 31A4B ×28673
  9A4D  90 78     BCC loc_B6_9AC7               ; 31A4D ×28673
  9A4F  E9 A0     SBC #$A0                      ; 31A4F ×14620
  9A51  65 8C     ADC $8C                       ; 31A51 ×14620
  9A53  85 8C     STA $8C                       ; 31A53 ×14620
  9A55  4C 7F 9A  JMP loc_B6_9A7F               ; 31A55 ×14620

loc_B6_9A58:                    ; from 31a3c
  9A58  A5 0C     LDA $0C                       ; 31A58 ×29952
  9A5A  C9 90     CMP #$90                      ; 31A5A ×29952
  9A5C  90 21     BCC loc_B6_9A7F               ; 31A5C ×29952
  9A5E  E9 90     SBC #$90                      ; 31A5E ×17372
  9A60  C9 0C     CMP #$0C                      ; 31A60 ×17372
  9A62  90 02     BCC loc_B6_9A66               ; 31A62 ×17372
  9A64  A9 0C     LDA #$0C                      ; 31A64 ×15308

loc_B6_9A66:                    ; from 31a62
  9A66  4A        LSR A                         ; 31A66 ×17372
  9A67  C0 07     CPY #$07                      ; 31A67 ×17372
  9A69  D0 04     BNE loc_B6_9A6F               ; 31A69 ×17372
  9A6B  E9 01     SBC #$01                      ; 31A6B ×8686
  9A6D  49 FF     EOR #$FF                      ; 31A6D ×8686

loc_B6_9A6F:                    ; from 31a69
  9A6F  85 18     STA $18                       ; 31A6F ×17372
  9A71  18        CLC                           ; 31A71 ×17372
  9A72  65 8C     ADC $8C                       ; 31A72 ×17372
  9A74  85 8C     STA $8C                       ; 31A74 ×17372
  9A76  06 18     ASL $18                       ; 31A76 ×17372
  9A78  A5 17     LDA $17                       ; 31A78 ×17372
  9A7A  38        SEC                           ; 31A7A ×17372
  9A7B  E5 18     SBC $18                       ; 31A7B ×17372
  9A7D  85 17     STA $17                       ; 31A7D ×17372

loc_B6_9A7F:                    ; from 31a38 31a55 31a5c
  9A7F  B9 E3 9A  LDA $9AE3,Y                   ; 31A7F ×106202
  9A82  85 18     STA $18                       ; 31A82 ×106202
  9A84  A9 00     LDA #$00                      ; 31A84 ×106202
  9A86  C0 0A     CPY #$0A                      ; 31A86 ×106202
  9A88  D0 23     BNE loc_B6_9AAD               ; 31A88 ×106202
  9A8A  A9 01     LDA #$01                      ; 31A8A ×7310
  9A8C  20 EF 8C  JSR sub_B6_8CEF               ; 31A8C ×7310
  9A8F  A4 F4     LDY $F4                       ; 31A8F ×7310
  9A91  C0 1D     CPY #$1D                      ; 31A91 ×7310
  9A93  90 1B     BCC loc_B6_9AB0               ; 31A93 ×7310
  9A95  C0 AE     CPY #$AE                      ; 31A95 ×508
  9A97  B0 17     BCS loc_B6_9AB0               ; 31A97 ×508
  9A99  A4 82     LDY $82                       ; 31A99 ×146
  9A9B  A9 33     LDA #$33                      ; 31A9B ×146

loc_B6_9A9D:                    ; from 31aa9
  9A9D  99 35 02  STA $0235,Y                   ; 31A9D ×584
  9AA0  C8        INY                           ; 31AA0 ×584
  9AA1  C8        INY                           ; 31AA1 ×584
  9AA2  C8        INY                           ; 31AA2 ×584
  9AA3  C8        INY                           ; 31AA3 ×584
  9AA4  18        CLC                           ; 31AA4 ×584
  9AA5  69 01     ADC #$01                      ; 31AA5 ×584
  9AA7  C9 37     CMP #$37                      ; 31AA7 ×584
  9AA9  90 F2     BCC loc_B6_9A9D               ; 31AA9 ×584
  9AAB  B0 03     BCS loc_B6_9AB0               ; 31AAB ×146

loc_B6_9AAD:                    ; from 31a88
  9AAD  20 EF 8C  JSR sub_B6_8CEF               ; 31AAD ×98892

loc_B6_9AB0:                    ; from 31a93 31a97 31aab
  9AB0  8A        TXA                           ; 31AB0 ×106202
  9AB1  F0 16     BEQ loc_B6_9AC9               ; 31AB1 ×106202
  9AB3  A4 16     LDY $16                       ; 31AB3 ×99671

loc_B6_9AB5:                    ; from 31a2a
  9AB5  C8        INY                           ; 31AB5 ×135158
  9AB6  C0 0B     CPY #$0B                      ; 31AB6 ×135158
  9AB8  F0 0D     BEQ loc_B6_9AC7               ; 31AB8 ×135158
  9ABA  C0 05     CPY #$05                      ; 31ABA ×127848
  9ABC  F0 09     BEQ loc_B6_9AC7               ; 31ABC ×127848
  9ABE  B0 04     BCS loc_B6_9AC4               ; 31ABE ×117318
  9AC0  A5 82     LDA $82                       ; 31AC0 ×29361
  9AC2  10 03     BPL loc_B6_9AC7               ; 31AC2 ×29361

loc_B6_9AC4:                    ; from 31abe
  9AC4  4C 17 9A  JMP loc_B6_9A17               ; 31AC4 ×117027

loc_B6_9AC7:                    ; from 31a4d 31abc 31ab8 31ac2
  9AC7  A9 01     LDA #$01                      ; 31AC7 ×32184

loc_B6_9AC9:                    ; from 31ab1
  9AC9  60        RTS                           ; 31AC9 ×38715
  9ACA  .byte 08 F8 08                                          ; 31ACA data, read by 319ca 319dd
  9ACD  .byte 00                                                ; 31ACD
  9ACE  .byte 04 00 FF 00                                       ; 31ACE data, read by 319ca 319dd 319d3
  9AD2  .byte 00                                                ; 31AD2
  9AD3  .byte 98 2F A0 64 B4 6C 55 5C 64 57 97 D7 53 25 6F 7F   ; 31AD3 data, read by 31a19 319d3 31a2d
  9AE3  .byte 72 6C 40 41 42 51 50 52 53 54 54 0C 05 3C 00 00   ; 31AE3 data, read by 31a2d 31a7f 31264 31270 (+2)
  9AF3  .byte 00 00 2C 2D 2E 2F 00 00 00 00 00 00 00 30 31 32   ; 31AF3 data, read by 31297
  9B03  .byte 33 34 00 00 00 00 00 00 00 00 35 36 37 38 00 00   ; 31B03 data, read by 31297
  9B13  .byte 00 00 39 3A 3B 3C 3D 3E 3F 40 41 42 43 44 45 46   ; 31B13 data, read by 31297
  9B23  .byte 47 48 49 4A 4B 4C 4D 4E 4F 50 0A 03 9E 51 09 06   ; 31B23 data, read by 31297 31264 31270 31287 (+1)
  9B33  .byte 02 3F 3F 84 16 04 3F 1A 3F 3F 88 1B 01 3F 87 23   ; 31B33 data, read by 3127d 31297 31287
  9B43  .byte 01 3F 87 2A 02 3F 3F 82 31 01 3F 84 33 0B 3F 3F   ; 31B43 data, read by 3127d 31297 31287
  9B53  .byte 3F 3F 3F 3F 3F 37 3F 3F 3F 0A 03 9E 40 0B 05 0B   ; 31B53 data, read by 31297 31264 31270 31287 (+1)
  9B63  .byte 5E 5F 3F 3F 3F 3F 3F 3F 3F 3F 3F 8A 60 01 3F 96   ; 31B63 data, read by 31297 31287 3127d
  9B73  .byte 6A 0B 3F 3F 3F 3F 3F 80 81 3F 3F 3F 3F 08 08 03   ; 31B73 data, read by 31297 3127d 31264 31270
  9B83  .byte 3E 3E 3E 84 B4 04 3E 3F 3F 3F 84 B8 03 3F 3F 3F   ; 31B83 data, read by 31297 31287 3127d
  9B93  .byte 86 BC 01 3F 87 C2 88 C9 87 D1 02 3F 3F 86 D8 02   ; 31B93 data, read by 31287 3127d 31297
  9BA3  .byte 3F 3F 86 DE 01 3F 08 07 86 E4 02 3F 3F 87 EA 01   ; 31BA3 data, read by 31297 31287 3127d 31264 (+1)
  9BB3  .byte 3F 8B F1 8D 01 01 FC 87 0E 01 FD 85 38 02 FE 3D   ; 31BB3 data, read by 31297 31287 3127d
  9BC3  .byte 08 08 01 3F 84 82 03 3F 3F 3F 85 86 03 3F 3F 3F   ; 31BC3 data, read by 31264 31270 3127d 31297 (+1)
  9BD3  .byte 87 8B 01 3F 90 92 01 3F 87 A2 02 3F 3F 86 A9 02   ; 31BD3 data, read by 31287 3127d 31297
  9BE3  .byte 3F 3F 85 AF 01 15 0B 03 0C 00 00 00 00 20 00 01   ; 31BE3 data, read by 31297 31287 3127d 31264 (+1)
  9BF3  .byte 00 00 00 00 00 89 02 01 00 8B 0B 1D 0D 12 16 17   ; 31BF3 data, read by 31297 31287 3127d 31264 (+1)
  9C03  .byte 00 18 19 1A 00 00 1B 1C 1D 1E 1F 1A 00 00 00 00   ; 31C03 data, read by 31297
  9C13  .byte 8B 21 86 2C 01 00 96 32 95 48 08 5C 5C 5C 5D 00   ; 31C13 data, read by 31287 3127d 31297
  9C23  .byte 00 00 00 93 5E 0A 5C 5C 5C 71 72 73 00 00 00 00   ; 31C23 data, read by 31297 31287 3127d
  9C33  .byte 97 74 06 00 00 00 00 00 00 96 8B 07 00 00 00 00   ; 31C33 data, read by 31287 3127d 31297
  9C43  .byte 00 00 00 96 A1 07 00 00 00 00 00 00 00 95 B7 08   ; 31C43 data, read by 31297 31287 3127d
  9C53  .byte 00 00 00 00 00 00 00 00 92 CC 0B 00 00 00 00 00   ; 31C53 data, read by 31297 31287 3127d
  9C63  .byte 00 00 00 00 00 00 92 DE 0B 00 00 00 00 00 00 00   ; 31C63 data, read by 31297 31287 3127d
  9C73  .byte 00 00 00 00 8F F0 0F 00 00 00 00 00 00 00 00 00   ; 31C73 data, read by 31297 31287 3127d
  9C83  .byte 00 00 00 00 00 14 8B 01 11 00 00 00 00 00 00 00   ; 31C83 data, read by 31297 31287 3127d
  9C93  .byte 00 00 00 00 00 00 00 00 00 00 84 0C 19 00 10 11   ; 31C93 data, read by 31297 31287 3127d
  9CA3  .byte 12 13 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 31CA3 data, read by 31297
  9CB3  .byte 00 00 00 00 00 00                                 ; 31CB3 data, read by 31297

loc_B6_9CB9:                    ; from 30024
  9CB9  20 88 FE  JSR sub_B6_FE88               ; 31CB9 ×48
  9CBC  20 BD FE  JSR sub_B6_FEBD               ; 31CBC ×48
  9CBF  A9 75     LDA #$75                      ; 31CBF ×48
  9CC1  85 25     STA $25                       ; 31CC1 ×48
  9CC3  85 27     STA $27                       ; 31CC3 ×48
  9CC5  85 28     STA $28                       ; 31CC5 ×48
  9CC7  A9 06     LDA #$06                      ; 31CC7 ×48
  9CC9  A0 04     LDY #$04                      ; 31CC9 ×48
  9CCB  20 94 DB  JSR sub_B6_DB94               ; 31CCB ×48
  9CCE  A9 08     LDA #$08                      ; 31CCE ×48
  9CD0  A0 04     LDY #$04                      ; 31CD0 ×48
  9CD2  20 94 DB  JSR sub_B6_DB94               ; 31CD2 ×48
  9CD5  A9 16     LDA #$16                      ; 31CD5 ×48
  9CD7  8D C9 FF  STA $FFC9                     ; 31CD7 ×48
  9CDA  A9 20     LDA #$20                      ; 31CDA ×48
  9CDC  8D 06 20  STA $2006                     ; 31CDC ×48
  9CDF  A9 93     LDA #$93                      ; 31CDF ×48
  9CE1  A2 E9     LDX #$E9                      ; 31CE1 ×48
  9CE3  A0 9B     LDY #$9B                      ; 31CE3 ×48
  9CE5  20 5B 92  JSR sub_B6_925B               ; 31CE5 ×48
  9CE8  A9 20     LDA #$20                      ; 31CE8 ×48
  9CEA  8D 06 20  STA $2006                     ; 31CEA ×48
  9CED  A9 E1     LDA #$E1                      ; 31CED ×48
  9CEF  A2 FE     LDX #$FE                      ; 31CEF ×48
  9CF1  A0 9B     LDY #$9B                      ; 31CF1 ×48
  9CF3  20 5B 92  JSR sub_B6_925B               ; 31CF3 ×48
  9CF6  A2 30     LDX #$30                      ; 31CF6 ×48
  9CF8  A0 32     LDY #$32                      ; 31CF8 ×48
  9CFA  20 49 A2  JSR sub_B6_A249               ; 31CFA ×48
  9CFD  A2 42     LDX #$42                      ; 31CFD ×48
  9CFF  20 FB D5  JSR sub_B6_D5FB               ; 31CFF ×48
  9D02  A0 75     LDY #$75                      ; 31D02 ×48
  9D04  A9 00     LDA #$00                      ; 31D04 ×48
  9D06  85 C9     STA $C9                       ; 31D06 ×48

sub_B6_9D08:                    ; from 32bda
  9D08  8D 85 05  STA $0585                     ; 31D08 ×105
  9D0B  84 25     STY $25                       ; 31D0B ×105
  9D0D  84 27     STY $27                       ; 31D0D ×105
  9D0F  84 28     STY $28                       ; 31D0F ×105
  9D11  A0 01     LDY #$01                      ; 31D11 ×105
  9D13  20 EA 98  JSR sub_B6_98EA               ; 31D13 ×105

loc_B6_9D16:                    ; from 3190d
  9D16  A9 F0     LDA #$F0                      ; 31D16 ×162
  9D18  8D 70 01  STA $0170                     ; 31D18 ×162
  9D1B  8D 71 01  STA $0171                     ; 31D1B ×162
  9D1E  8D 72 01  STA $0172                     ; 31D1E ×162
  9D21  A9 FF     LDA #$FF                      ; 31D21 ×162
  9D23  8D 73 01  STA $0173                     ; 31D23 ×162
  9D26  8D 63 01  STA $0163                     ; 31D26 ×162
  9D29  8D 64 01  STA $0164                     ; 31D29 ×162
  9D2C  8D 65 01  STA $0165                     ; 31D2C ×162
  9D2F  8D 66 01  STA $0166                     ; 31D2F ×162
  9D32  AD 85 05  LDA $0585                     ; 31D32 ×162
  9D35  F0 17     BEQ loc_B6_9D4E               ; 31D35 ×162
  9D37  C9 02     CMP #$02                      ; 31D37 ×114
  9D39  A9 28     LDA #$28                      ; 31D39 ×114
  9D3B  B0 02     BCS $9D3F                     ; 31D3B ×114
  9D3D  A9 40     LDA #$40                      ; 31D3D ×114
  9D3F  8D 3B 04  STA $043B                     ; 31D3F ×114
  9D42  AD 85 05  LDA $0585                     ; 31D42 ×114
  9D45  C9 01     CMP #$01                      ; 31D45 ×114
  9D47  F0 0A     BEQ loc_B6_9D53               ; 31D47 ×114
  9D49  A9 40     LDA #$40                      ; 31D49 ×0
  9D4B  8D D1 04  STA $04D1                     ; 31D4B ×0

loc_B6_9D4E:                    ; from 31d35
  9D4E  A9 FF     LDA #$FF                      ; 31D4E ×48
  9D50  8D C2 04  STA $04C2                     ; 31D50 ×48

loc_B6_9D53:                    ; from 31d47
  9D53  EE 2C 04  INC $042C                     ; 31D53 ×162
  9D56  A0 2B     LDY #$2B                      ; 31D56 ×162
  9D58  AD 85 05  LDA $0585                     ; 31D58 ×162
  9D5B  C9 02     CMP #$02                      ; 31D5B ×162
  9D5D  D0 02     BNE loc_B6_9D61               ; 31D5D ×162
  9D5F  A0 BC     LDY #$BC                      ; 31D5F ×0

loc_B6_9D61:                    ; from 31d5d
  9D61  A9 BF     LDA #$BF                      ; 31D61 ×162
  9D63  A2 B0     LDX #$B0                      ; 31D63 ×162
  9D65  38        SEC                           ; 31D65 ×162
  9D66  20 FA A1  JSR sub_B6_A1FA               ; 31D66 ×162
  9D69  AD 85 05  LDA $0585                     ; 31D69 ×162
  9D6C  D0 07     BNE loc_B6_9D75               ; 31D6C ×162
  9D6E  A2 1E     LDX #$1E                      ; 31D6E ×48
  9D70  A0 00     LDY #$00                      ; 31D70 ×48
  9D72  4C CB FF  JMP sub_B6_FFCB               ; 31D72 ×48

loc_B6_9D75:                    ; from 31d6c
  9D75  4C 7D A8  JMP loc_B6_A87D               ; 31D75 ×114

sub_B6_9D78:                    ; from 31e93
  9D78  AD 70 01  LDA $0170                     ; 31D78 ×23889
  9D7B  AC 85 05  LDY $0585                     ; 31D7B ×23889
  9D7E  D0 03     BNE $9D83                     ; 31D7E ×23889
  9D80  18        CLC                           ; 31D80 ×23889
  9D81  69 F8     ADC #$F8                      ; 31D81 ×23889
  9D83  8D 05 20  STA $2005                     ; 31D83 ×23889
  9D86  AD 3B 04  LDA $043B                     ; 31D86 ×23889
  9D89  C9 30     CMP #$30                      ; 31D89 ×23889
  9D8B  B0 03     BCS loc_B6_9D90               ; 31D8B ×23889
  9D8D  38        SEC                           ; 31D8D ×62
  9D8E  B0 04     BCS loc_B6_9D94               ; 31D8E ×62

loc_B6_9D90:                    ; from 31d8b
  9D90  C9 F0     CMP #$F0                      ; 31D90 ×23827
  9D92  90 02     BCC loc_B6_9D96               ; 31D92 ×23827

loc_B6_9D94:                    ; from 31d8e
  9D94  69 0F     ADC #$0F                      ; 31D94 ×8895

loc_B6_9D96:                    ; from 31d92
  9D96  8D 05 20  STA $2005                     ; 31D96 ×23889
  9D99  60        RTS                           ; 31D99 ×23889
  9D9A  A0 00     LDY #$00                      ; 31D9A ×0
  9D9C  B9 82 80  LDA $8082,Y                   ; 31D9C ×0
  9D9F  8D 06 20  STA $2006                     ; 31D9F ×0
  9DA2  B9 83 80  LDA $8083,Y                   ; 31DA2 ×0
  9DA5  8D 06 20  STA $2006                     ; 31DA5 ×0
  9DA8  B9 84 80  LDA $8084,Y                   ; 31DA8 ×0
  9DAB  8D 07 20  STA $2007                     ; 31DAB ×0
  9DAE  B9 85 80  LDA $8085,Y                   ; 31DAE ×0
  9DB1  8D 07 20  STA $2007                     ; 31DB1 ×0
  9DB4  B9 86 80  LDA $8086,Y                   ; 31DB4 ×0
  9DB7  8D 07 20  STA $2007                     ; 31DB7 ×0
  9DBA  B9 87 80  LDA $8087,Y                   ; 31DBA ×0
  9DBD  8D 07 20  STA $2007                     ; 31DBD ×0
  9DC0  B9 88 80  LDA $8088,Y                   ; 31DC0 ×0
  9DC3  8D 07 20  STA $2007                     ; 31DC3 ×0
  9DC6  B9 89 80  LDA $8089,Y                   ; 31DC6 ×0
  9DC9  8D 07 20  STA $2007                     ; 31DC9 ×0
  9DCC  B9 8A 80  LDA $808A,Y                   ; 31DCC ×0
  9DCF  8D 07 20  STA $2007                     ; 31DCF ×0
  9DD2  B9 8B 80  LDA $808B,Y                   ; 31DD2 ×0
  9DD5  8D 07 20  STA $2007                     ; 31DD5 ×0
  9DD8  B9 8C 80  LDA $808C,Y                   ; 31DD8 ×0
  9DDB  8D 07 20  STA $2007                     ; 31DDB ×0
  9DDE  B9 8D 80  LDA $808D,Y                   ; 31DDE ×0
  9DE1  8D 07 20  STA $2007                     ; 31DE1 ×0
  9DE4  B9 8E 80  LDA $808E,Y                   ; 31DE4 ×0
  9DE7  8D 07 20  STA $2007                     ; 31DE7 ×0
  9DEA  98        TYA                           ; 31DEA ×0
  9DEB  18        CLC                           ; 31DEB ×0
  9DEC  69 0D     ADC #$0D                      ; 31DEC ×0
  9DEE  A8        TAY                           ; 31DEE ×0
  9DEF  C9 A9     CMP #$A9                      ; 31DEF ×0
  9DF1  90 A9     BCC $9D9C                     ; 31DF1 ×0
  9DF3  4C 90 9E  JMP loc_B6_9E90               ; 31DF3 ×0
  9DF6  30 A2     BMI $9D9A                     ; 31DF6 ×0
  9DF8  AD 85 05  LDA $0585                     ; 31DF8 ×0
  9DFB  49 03     EOR #$03                      ; 31DFB ×0
  9DFD  F0 09     BEQ $9E08                     ; 31DFD ×0
  9DFF  A9 00     LDA #$00                      ; 31DFF ×0
  9E01  85 CB     STA $CB                       ; 31E01 ×0
  9E03  20 83 A8  JSR sub_B6_A883               ; 31E03 ×0
  9E06  A9 10     LDA #$10                      ; 31E06 ×0
  9E08  85 CB     STA $CB                       ; 31E08 ×0
  9E0A  20 83 A8  JSR sub_B6_A883               ; 31E0A ×0
  9E0D  A5 0B     LDA $0B                       ; 31E0D ×0
  9E0F  29 07     AND #$07                      ; 31E0F ×0
  9E11  D0 36     BNE $9E49                     ; 31E11 ×0
  9E13  A5 C9     LDA $C9                       ; 31E13 ×0
  9E15  18        CLC                           ; 31E15 ×0
  9E16  69 10     ADC #$10                      ; 31E16 ×0
  9E18  85 C9     STA $C9                       ; 31E18 ×0
  9E1A  C9 50     CMP #$50                      ; 31E1A ×0
  9E1C  90 2B     BCC $9E49                     ; 31E1C ×0
  9E1E  A9 00     LDA #$00                      ; 31E1E ×0
  9E20  85 C9     STA $C9                       ; 31E20 ×0
  9E22  AD 85 05  LDA $0585                     ; 31E22 ×0
  9E25  C9 03     CMP #$03                      ; 31E25 ×0
  9E27  D0 1B     BNE $9E44                     ; 31E27 ×0
  9E29  A2 0B     LDX #$0B                      ; 31E29 ×0
  9E2B  BD A9 A4  LDA $A4A9,X                   ; 31E2B ×0
  9E2E  95 55     STA $55,X                     ; 31E2E ×0
  9E30  CA        DEX                           ; 31E30 ×0
  9E31  10 F8     BPL $9E2B                     ; 31E31 ×0
  9E33  A9 0F     LDA #$0F                      ; 31E33 ×0
  9E35  85 64     STA $64                       ; 31E35 ×0
  9E37  E8        INX                           ; 31E37 ×0
  9E38  86 CB     STX $CB                       ; 31E38 ×0
  9E3A  20 83 A8  JSR sub_B6_A883               ; 31E3A ×0
  9E3D  A9 01     LDA #$01                      ; 31E3D ×0
  9E3F  8D 85 05  STA $0585                     ; 31E3F ×0
  9E42  D0 05     BNE $9E49                     ; 31E42 ×0
  9E44  A9 FF     LDA #$FF                      ; 31E44 ×0
  9E46  8D 85 05  STA $0585                     ; 31E46 ×0
  9E49  AD 85 05  LDA $0585                     ; 31E49 ×0
  9E4C  C9 03     CMP #$03                      ; 31E4C ×0
  9E4E  F0 18     BEQ loc_B6_9E68               ; 31E4E ×0
  9E50  4C 90 9E  JMP loc_B6_9E90               ; 31E50 ×0

loc_B6_9E53:                    ; from 30027
  9E53  A5 C9     LDA $C9                       ; 31E53 ×29551
  9E55  D0 9F     BNE $9DF6                     ; 31E55 ×29551
  9E57  AD 85 05  LDA $0585                     ; 31E57 ×29551
  9E5A  C9 03     CMP #$03                      ; 31E5A ×29551
  9E5C  D0 19     BNE loc_B6_9E77               ; 31E5C ×29551
  9E5E  A5 0B     LDA $0B                       ; 31E5E ×5662
  9E60  C9 E0     CMP #$E0                      ; 31E60 ×5662
  9E62  D0 04     BNE loc_B6_9E68               ; 31E62 ×5662
  9E64  A9 10     LDA #$10                      ; 31E64 ×0
  9E66  85 C9     STA $C9                       ; 31E66 ×0

loc_B6_9E68:                    ; from 31e62
  9E68  20 46 91  JSR sub_B6_9146               ; 31E68 ×5662
  9E6B  A9 08     LDA #$08                      ; 31E6B ×5662
  9E6D  8D 00 20  STA $2000                     ; 31E6D ×5662
  9E70  85 09     STA $09                       ; 31E70 ×5662
  9E72  A2 B0     LDX #$B0                      ; 31E72 ×5662
  9E74  4C 5B A0  JMP loc_B6_A05B               ; 31E74 ×5662

loc_B6_9E77:                    ; from 31e5c
  9E77  A9 00     LDA #$00                      ; 31E77 ×23889
  9E79  8D 7F 01  STA $017F                     ; 31E79 ×23889
  9E7C  20 2E 99  JSR sub_B6_992E               ; 31E7C ×23889
  9E7F  EE 7F 01  INC $017F                     ; 31E7F ×23889
  9E82  20 2E 99  JSR sub_B6_992E               ; 31E82 ×23889
  9E85  AD 85 05  LDA $0585                     ; 31E85 ×23889
  9E88  F0 06     BEQ loc_B6_9E90               ; 31E88 ×23889
  9E8A  EE 7F 01  INC $017F                     ; 31E8A ×0
  9E8D  20 2E 99  JSR sub_B6_992E               ; 31E8D ×0

loc_B6_9E90:                    ; from 31e88
  9E90  20 46 91  JSR sub_B6_9146               ; 31E90 ×23889
  9E93  20 78 9D  JSR sub_B6_9D78               ; 31E93 ×23889
  9E96  A9 08     LDA #$08                      ; 31E96 ×23889
  9E98  8D 00 20  STA $2000                     ; 31E98 ×23889
  9E9B  A9 08     LDA #$08                      ; 31E9B ×23889
  9E9D  AC 85 05  LDY $0585                     ; 31E9D ×23889
  9EA0  C0 01     CPY #$01                      ; 31EA0 ×23889
  9EA2  F0 20     BEQ $9EC4                     ; 31EA2 ×23889
  9EA4  A9 79     LDA #$79                      ; 31EA4 ×23889
  9EA6  C0 02     CPY #$02                      ; 31EA6 ×23889
  9EA8  90 10     BCC loc_B6_9EBA               ; 31EA8 ×23889
  9EAA  A0 12     LDY #$12                      ; 31EAA ×0
  9EAC  88        DEY                           ; 31EAC ×0
  9EAD  D0 FD     BNE $9EAC                     ; 31EAD ×0
  9EAF  A5 C9     LDA $C9                       ; 31EAF ×0
  9EB1  2A        ROL A                         ; 31EB1 ×0
  9EB2  A9 6D     LDA #$6D                      ; 31EB2 ×0
  9EB4  90 04     BCC loc_B6_9EBA               ; 31EB4 ×0
  9EB6  84 C9     STY $C9                       ; 31EB6 ×0
  9EB8  69 02     ADC #$02                      ; 31EB8 ×0

loc_B6_9EBA:                    ; from 31ea8
  9EBA  18        CLC                           ; 31EBA ×23889
  9EBB  6D 3B 04  ADC $043B                     ; 31EBB ×23889
  9EBE  A8        TAY                           ; 31EBE ×23889
  9EBF  20 70 80  JSR sub_B6_8070               ; 31EBF ×23889
  9EC2  A9 18     LDA #$18                      ; 31EC2 ×23889
  9EC4  8D 00 20  STA $2000                     ; 31EC4 ×23889
  9EC7  85 09     STA $09                       ; 31EC7 ×23889
  9EC9  AD 85 05  LDA $0585                     ; 31EC9 ×23889
  9ECC  D0 47     BNE loc_B6_9F15               ; 31ECC ×23889
  9ECE  AD 67 05  LDA $0567                     ; 31ECE ×23889
  9ED1  C9 03     CMP #$03                      ; 31ED1 ×23889
  9ED3  B0 40     BCS loc_B6_9F15               ; 31ED3 ×23889
  9ED5  AD 70 01  LDA $0170                     ; 31ED5 ×23889
  9ED8  C9 08     CMP #$08                      ; 31ED8 ×23889
  9EDA  F0 39     BEQ loc_B6_9F15               ; 31EDA ×23889
  9EDC  C9 48     CMP #$48                      ; 31EDC ×13296
  9EDE  AD 74 01  LDA $0174                     ; 31EDE ×13296
  9EE1  B0 0B     BCS loc_B6_9EEE               ; 31EE1 ×13296
  9EE3  18        CLC                           ; 31EE3 ×5184
  9EE4  69 02     ADC #$02                      ; 31EE4 ×5184
  9EE6  8D 74 01  STA $0174                     ; 31EE6 ×5184
  9EE9  90 03     BCC loc_B6_9EEE               ; 31EE9 ×5184
  9EEB  EE 73 01  INC $0173                     ; 31EEB inferred, not run

loc_B6_9EEE:                    ; from 31ee1 31ee9
  9EEE  18        CLC                           ; 31EEE ×13296
  9EEF  6D 76 01  ADC $0176                     ; 31EEF ×13296
  9EF2  8D 76 01  STA $0176                     ; 31EF2 ×13296
  9EF5  AD 73 01  LDA $0173                     ; 31EF5 ×13296
  9EF8  6D 70 01  ADC $0170                     ; 31EF8 ×13296
  9EFB  8D 70 01  STA $0170                     ; 31EFB ×13296
  9EFE  8D 71 01  STA $0171                     ; 31EFE ×13296
  9F01  8D 72 01  STA $0172                     ; 31F01 ×13296
  9F04  C9 14     CMP #$14                      ; 31F04 ×13296
  9F06  D0 0D     BNE loc_B6_9F15               ; 31F06 ×13296
  9F08  AD 85 05  LDA $0585                     ; 31F08 ×96
  9F0B  D0 08     BNE loc_B6_9F15               ; 31F0B ×96
  9F0D  A9 60     LDA #$60                      ; 31F0D ×96
  9F0F  8D D1 04  STA $04D1                     ; 31F0F ×96
  9F12  8D 68 04  STA $0468                     ; 31F12 ×96

loc_B6_9F15:                    ; from 31f06 31eda
  9F15  A2 02     LDX #$02                      ; 31F15 ×23889
  9F17  AD 85 05  LDA $0585                     ; 31F17 ×23889
  9F1A  D0 03     BNE $9F1F                     ; 31F1A ×23889
  9F1C  4C 95 9F  JMP loc_B6_9F95               ; 31F1C ×23889
  9F1F  C9 02     CMP #$02                      ; 31F1F ×0
  9F21  D0 4F     BNE $9F72                     ; 31F21 ×0
  9F23  AD 67 05  LDA $0567                     ; 31F23 ×0
  9F26  F0 29     BEQ $9F51                     ; 31F26 ×0
  9F28  A5 0C     LDA $0C                       ; 31F28 ×0
  9F2A  C9 93     CMP #$93                      ; 31F2A ×0
  9F2C  90 16     BCC $9F44                     ; 31F2C ×0
  9F2E  29 03     AND #$03                      ; 31F2E ×0
  9F30  D0 12     BNE $9F44                     ; 31F30 ×0
  9F32  CE 70 01  DEC $0170                     ; 31F32 ×0
  9F35  CE 71 01  DEC $0171                     ; 31F35 ×0
  9F38  CE 72 01  DEC $0172                     ; 31F38 ×0
  9F3B  AD 70 01  LDA $0170                     ; 31F3B ×0
  9F3E  6A        ROR A                         ; 31F3E ×0
  9F3F  B0 03     BCS $9F44                     ; 31F3F ×0
  9F41  EE 3B 04  INC $043B                     ; 31F41 ×0
  9F44  A5 0C     LDA $0C                       ; 31F44 ×0
  9F46  C9 B0     CMP #$B0                      ; 31F46 ×0
  9F48  D0 25     BNE $9F6F                     ; 31F48 ×0
  9F4A  A9 10     LDA #$10                      ; 31F4A ×0
  9F4C  85 C9     STA $C9                       ; 31F4C ×0
  9F4E  4C 6F 9F  JMP $9F6F                     ; 31F4E ×0
  9F51  AD 70 01  LDA $0170                     ; 31F51 ×0
  9F54  EE 70 01  INC $0170                     ; 31F54 ×0
  9F57  EE 71 01  INC $0171                     ; 31F57 ×0
  9F5A  EE 72 01  INC $0172                     ; 31F5A ×0
  9F5D  C9 AD     CMP #$AD                      ; 31F5D ×0
  9F5F  D0 05     BNE $9F66                     ; 31F5F ×0
  9F61  85 C9     STA $C9                       ; 31F61 ×0
  9F63  8D 67 05  STA $0567                     ; 31F63 ×0
  9F66  B0 07     BCS $9F6F                     ; 31F66 ×0
  9F68  29 03     AND #$03                      ; 31F68 ×0
  9F6A  D0 03     BNE $9F6F                     ; 31F6A ×0
  9F6C  CE 3B 04  DEC $043B                     ; 31F6C ×0
  9F6F  4C B6 9F  JMP $9FB6                     ; 31F6F ×0
  9F72  EE 70 01  INC $0170                     ; 31F72 ×0
  9F75  EE 71 01  INC $0171                     ; 31F75 ×0
  9F78  EE 72 01  INC $0172                     ; 31F78 ×0
  9F7B  AD 70 01  LDA $0170                     ; 31F7B ×0
  9F7E  6A        ROR A                         ; 31F7E ×0
  9F7F  B0 03     BCS $9F84                     ; 31F7F ×0
  9F81  CE 3B 04  DEC $043B                     ; 31F81 ×0
  9F84  A2 02     LDX #$02                      ; 31F84 ×0
  9F86  A5 0B     LDA $0B                       ; 31F86 ×0
  9F88  29 40     AND #$40                      ; 31F88 ×0
  9F8A  C9 08     CMP #$08                      ; 31F8A ×0
  9F8C  A9 08     LDA #$08                      ; 31F8C ×0
  9F8E  B0 02     BCS $9F92                     ; 31F8E ×0
  9F90  A9 F7     LDA #$F7                      ; 31F90 ×0
  9F92  4C AD 9F  JMP loc_B6_9FAD               ; 31F92 ×0

loc_B6_9F95:                    ; from 31f1c
  9F95  AD 70 01  LDA $0170                     ; 31F95 ×23889
  9F98  C9 14     CMP #$14                      ; 31F98 ×23889
  9F9A  90 04     BCC loc_B6_9FA0               ; 31F9A ×23889
  9F9C  A9 02     LDA #$02                      ; 31F9C ×11472
  9F9E  D0 0D     BNE loc_B6_9FAD               ; 31F9E ×11472

loc_B6_9FA0:                    ; from 31f9a
  9FA0  A9 0F     LDA #$0F                      ; 31FA0 ×12417
  9FA2  18        CLC                           ; 31FA2 ×12417
  9FA3  6D 3B 04  ADC $043B                     ; 31FA3 ×12417
  9FA6  2A        ROL A                         ; 31FA6 ×12417
  9FA7  A9 04     LDA #$04                      ; 31FA7 ×12417
  9FA9  B0 02     BCS loc_B6_9FAD               ; 31FA9 ×12417
  9FAB  A9 FC     LDA #$FC                      ; 31FAB ×7522

loc_B6_9FAD:                    ; from 31f9e 31fa9
  9FAD  85 39     STA $39                       ; 31FAD ×23889
  9FAF  A2 0C     LDX #$0C                      ; 31FAF ×23889
  9FB1  A0 00     LDY #$00                      ; 31FB1 ×23889
  9FB3  20 CB FF  JSR sub_B6_FFCB               ; 31FB3 ×23889
  9FB6  AD 70 01  LDA $0170                     ; 31FB6 ×23889
  9FB9  49 FF     EOR #$FF                      ; 31FB9 ×23889
  9FBB  8D 6B 01  STA $016B                     ; 31FBB ×23889
  9FBE  8D 6C 01  STA $016C                     ; 31FBE ×23889
  9FC1  8D 6D 01  STA $016D                     ; 31FC1 ×23889
  9FC4  8D 6E 01  STA $016E                     ; 31FC4 ×23889
  9FC7  AD 3B 04  LDA $043B                     ; 31FC7 ×23889
  9FCA  8D 50 01  STA $0150                     ; 31FCA ×23889
  9FCD  A2 00     LDX #$00                      ; 31FCD ×23889
  9FCF  AD 85 05  LDA $0585                     ; 31FCF ×23889
  9FD2  D0 31     BNE loc_B6_A005               ; 31FD2 ×23889
  9FD4  A5 0B     LDA $0B                       ; 31FD4 ×23889
  9FD6  29 02     AND #$02                      ; 31FD6 ×23889
  9FD8  4A        LSR A                         ; 31FD8 ×23889
  9FD9  69 05     ADC #$05                      ; 31FD9 ×23889
  9FDB  A8        TAY                           ; 31FDB ×23889
  9FDC  20 15 9A  JSR sub_B6_9A15               ; 31FDC ×23889
  9FDF  A5 0C     LDA $0C                       ; 31FDF ×23889
  9FE1  30 22     BMI loc_B6_A005               ; 31FE1 ×23889
  9FE3  A4 F4     LDY $F4                       ; 31FE3 ×12477
  9FE5  88        DEY                           ; 31FE5 ×12477
  9FE6  D0 1D     BNE loc_B6_A005               ; 31FE6 ×12477
  9FE8  A2 9C     LDX #$9C                      ; 31FE8 ×256
  9FEA  29 01     AND #$01                      ; 31FEA ×256
  9FEC  F0 02     BEQ loc_B6_9FF0               ; 31FEC ×256
  9FEE  A9 40     LDA #$40                      ; 31FEE ×128

loc_B6_9FF0:                    ; from 31fec
  9FF0  85 90     STA $90                       ; 31FF0 ×256
  9FF2  85 1B     STA $1B                       ; 31FF2 ×256
  9FF4  A5 0C     LDA $0C                       ; 31FF4 ×256
  9FF6  09 80     ORA #$80                      ; 31FF6 ×256
  9FF8  85 17     STA $17                       ; 31FF8 ×256
  9FFA  A9 E8     LDA #$E8                      ; 31FFA ×256
  9FFC  E5 0C     SBC $0C                       ; 31FFC ×256
  9FFE  85 8C     STA $8C                       ; 31FFE ×256
  A000  A0 0B     LDY #$0B                      ; 32000 ×256
  A002  20 3D AA  JSR sub_B6_AA3D               ; 32002 ×256

loc_B6_A005:                    ; from 31fe6 31fe1
  A005  A9 F8     LDA #$F8                      ; 32005 ×23889

loc_B6_A007:                    ; from 32010
  A007  9D 00 02  STA $0200,X                   ; 32007 ×627298
  A00A  E8        INX                           ; 3200A ×627298
  A00B  E8        INX                           ; 3200B ×627298
  A00C  E8        INX                           ; 3200C ×627298
  A00D  E8        INX                           ; 3200D ×627298
  A00E  E0 B0     CPX #$B0                      ; 3200E ×627298
  A010  D0 F5     BNE loc_B6_A007               ; 32010 ×627298
  A012  AD 85 05  LDA $0585                     ; 32012 ×23889
  A015  D0 07     BNE $A01E                     ; 32015 ×23889
  A017  AD 70 01  LDA $0170                     ; 32017 ×23889
  A01A  C9 08     CMP #$08                      ; 3201A ×23889
  A01C  F0 6C     BEQ loc_B6_A08A               ; 3201C ×23889
  A01E  AC 85 05  LDY $0585                     ; 3201E ×13248
  A021  F0 58     BEQ loc_B6_A07B               ; 32021 ×13248
  A023  C0 02     CPY #$02                      ; 32023 ×0
  A025  D0 34     BNE loc_B6_A05B               ; 32025 ×0
  A027  AD 67 05  LDA $0567                     ; 32027 ×0
  A02A  D0 2F     BNE loc_B6_A05B               ; 3202A ×0
  A02C  AD 86 04  LDA $0486                     ; 3202C ×0
  A02F  85 17     STA $17                       ; 3202F ×0
  A031  AD 95 04  LDA $0495                     ; 32031 ×0
  A034  85 8C     STA $8C                       ; 32034 ×0
  A036  A2 70     LDX #$70                      ; 32036 ×0
  A038  A9 00     LDA #$00                      ; 32038 ×0
  A03A  85 90     STA $90                       ; 3203A ×0
  A03C  85 1B     STA $1B                       ; 3203C ×0
  A03E  A9 8D     LDA #$8D                      ; 3203E ×0
  A040  85 19     STA $19                       ; 32040 ×0
  A042  A9 DF     LDA #$DF                      ; 32042 ×0
  A044  20 23 8D  JSR sub_B6_8D23               ; 32044 ×0
  A047  A2 B0     LDX #$B0                      ; 32047 ×0
  A049  A5 0B     LDA $0B                       ; 32049 ×0
  A04B  29 01     AND #$01                      ; 3204B ×0
  A04D  D0 0C     BNE loc_B6_A05B               ; 3204D ×0
  A04F  CE 86 04  DEC $0486                     ; 3204F ×0
  A052  A5 0B     LDA $0B                       ; 32052 ×0
  A054  29 07     AND #$07                      ; 32054 ×0
  A056  D0 03     BNE loc_B6_A05B               ; 32056 ×0
  A058  EE 95 04  INC $0495                     ; 32058 ×0

loc_B6_A05B:                    ; from 32077 31e74
  A05B  BD 01 02  LDA $0201,X                   ; 3205B ×113240
  A05E  29 03     AND #$03                      ; 3205E ×113240
  A060  49 03     EOR #$03                      ; 32060 ×113240
  A062  25 0B     AND $0B                       ; 32062 ×113240
  A064  D0 0D     BNE loc_B6_A073               ; 32064 ×113240
  A066  FE 03 02  INC $0203,X                   ; 32066 ×64038
  A069  BD 03 02  LDA $0203,X                   ; 32069 ×64038
  A06C  29 01     AND #$01                      ; 3206C ×64038
  A06E  F0 03     BEQ loc_B6_A073               ; 3206E ×64038
  A070  DE 00 02  DEC $0200,X                   ; 32070 ×31956

loc_B6_A073:                    ; from 32064 3206e
  A073  E8        INX                           ; 32073 ×113240
  A074  E8        INX                           ; 32074 ×113240
  A075  E8        INX                           ; 32075 ×113240
  A076  E8        INX                           ; 32076 ×113240
  A077  D0 E2     BNE loc_B6_A05B               ; 32077 ×113240
  A079  F0 5F     BEQ loc_B6_A0DA               ; 32079 ×5662

loc_B6_A07B:                    ; from 32021
  A07B  A5 0B     LDA $0B                       ; 3207B ×13248
  A07D  29 03     AND #$03                      ; 3207D ×13248
  A07F  D0 09     BNE loc_B6_A08A               ; 3207F ×13248

loc_B6_A081:                    ; from 32088
  A081  DE 03 02  DEC $0203,X                   ; 32081 ×66240
  A084  E8        INX                           ; 32084 ×66240
  A085  E8        INX                           ; 32085 ×66240
  A086  E8        INX                           ; 32086 ×66240
  A087  E8        INX                           ; 32087 ×66240
  A088  D0 F7     BNE loc_B6_A081               ; 32088 ×66240

loc_B6_A08A:                    ; from 3201c 3207f
  A08A  A6 82     LDX $82                       ; 3208A ×23889

loc_B6_A08C:                    ; from 320d8
  A08C  BD 00 02  LDA $0200,X                   ; 3208C ×229483
  A08F  C9 F8     CMP #$F8                      ; 3208F ×229483
  A091  F0 47     BEQ loc_B6_A0DA               ; 32091 ×229483
  A093  BD 03 02  LDA $0203,X                   ; 32093 ×205594
  A096  C9 64     CMP #$64                      ; 32096 ×205594
  A098  B0 11     BCS loc_B6_A0AB               ; 32098 ×205594
  A09A  A5 F4     LDA $F4                       ; 3209A ×109267
  A09C  F0 04     BEQ loc_B6_A0A2               ; 3209C ×109267
  A09E  C9 B4     CMP #$B4                      ; 3209E ×9486
  A0A0  90 04     BCC loc_B6_A0A6               ; 320A0 ×9486

loc_B6_A0A2:                    ; from 3209c
  A0A2  A5 11     LDA $11                       ; 320A2 ×104409
  A0A4  30 29     BMI loc_B6_A0CF               ; 320A4 ×104409

loc_B6_A0A6:                    ; from 320a0
  A0A6  A9 00     LDA #$00                      ; 320A6 ×109267
  A0A8  18        CLC                           ; 320A8 ×109267
  A0A9  90 0E     BCC loc_B6_A0B9               ; 320A9 ×109267

loc_B6_A0AB:                    ; from 32098
  A0AB  A5 F4     LDA $F4                       ; 320AB ×96327
  A0AD  F0 04     BEQ loc_B6_A0B3               ; 320AD ×96327
  A0AF  C9 B4     CMP #$B4                      ; 320AF ×9218
  A0B1  90 04     BCC loc_B6_A0B7               ; 320B1 ×9218

loc_B6_A0B3:                    ; from 320ad
  A0B3  A5 12     LDA $12                       ; 320B3 ×91737
  A0B5  30 18     BMI loc_B6_A0CF               ; 320B5 ×91737

loc_B6_A0B7:                    ; from 320b1
  A0B7  A9 05     LDA #$05                      ; 320B7 ×6683

loc_B6_A0B9:                    ; from 320a9
  A0B9  7D 00 02  ADC $0200,X                   ; 320B9 ×115950
  A0BC  ED FF 03  SBC $03FF                     ; 320BC ×115950
  A0BF  90 0E     BCC loc_B6_A0CF               ; 320BF ×115950
  A0C1  C9 0B     CMP #$0B                      ; 320C1 ×66926
  A0C3  B0 0F     BCS loc_B6_A0D4               ; 320C3 ×66926
  A0C5  A9 20     LDA #$20                      ; 320C5 ×12784
  A0C7  1D 02 02  ORA $0202,X                   ; 320C7 ×12784
  A0CA  9D 02 02  STA $0202,X                   ; 320CA ×12784
  A0CD  D0 05     BNE loc_B6_A0D4               ; 320CD ×12784

loc_B6_A0CF:                    ; from 320b5 320bf
  A0CF  A9 F8     LDA #$F8                      ; 320CF ×138668
  A0D1  9D 00 02  STA $0200,X                   ; 320D1 ×138668

loc_B6_A0D4:                    ; from 320c3 320cd
  A0D4  E8        INX                           ; 320D4 ×205594
  A0D5  E8        INX                           ; 320D5 ×205594
  A0D6  E8        INX                           ; 320D6 ×205594
  A0D7  E8        INX                           ; 320D7 ×205594
  A0D8  D0 B2     BNE loc_B6_A08C               ; 320D8 ×205594

loc_B6_A0DA:                    ; from 32091 32079
  A0DA  A5 F4     LDA $F4                       ; 320DA ×29551
  A0DC  F0 63     BEQ loc_B6_A141               ; 320DC ×29551
  A0DE  C9 1E     CMP #$1E                      ; 320DE ×1282
  A0E0  90 30     BCC loc_B6_A112               ; 320E0 ×1282
  A0E2  C9 B4     CMP #$B4                      ; 320E2 ×759
  A0E4  90 08     BCC loc_B6_A0EE               ; 320E4 ×759
  A0E6  C9 D2     CMP #$D2                      ; 320E6 ×609
  A0E8  90 28     BCC loc_B6_A112               ; 320E8 ×609
  A0EA  C9 FF     CMP #$FF                      ; 320EA ×414
  A0EC  F0 7B     BEQ $A169                     ; 320EC ×414

loc_B6_A0EE:                    ; from 320e4
  A0EE  C6 0B     DEC $0B                       ; 320EE ×564
  A0F0  C6 0B     DEC $0B                       ; 320F0 ×564
  A0F2  C6 0C     DEC $0C                       ; 320F2 ×564
  A0F4  A5 F4     LDA $F4                       ; 320F4 ×564
  A0F6  C9 B4     CMP #$B4                      ; 320F6 ×564
  A0F8  90 63     BCC loc_B6_A15D               ; 320F8 ×564
  A0FA  A5 0C     LDA $0C                       ; 320FA ×414
  A0FC  C9 30     CMP #$30                      ; 320FC ×414
  A0FE  B0 5F     BCS loc_B6_A15F               ; 320FE ×414
  A100  C9 20     CMP #$20                      ; 32100 ×31
  A102  F0 5E     BEQ loc_B6_A162               ; 32102 ×31
  A104  EE 3B 04  INC $043B                     ; 32104 ×30
  A107  C9 28     CMP #$28                      ; 32107 ×30
  A109  B0 54     BCS loc_B6_A15F               ; 32109 ×30
  A10B  EE 3B 04  INC $043B                     ; 3210B ×14
  A10E  A9 00     LDA #$00                      ; 3210E ×14
  A110  F0 4D     BEQ loc_B6_A15F               ; 32110 ×14

loc_B6_A112:                    ; from 320e0 320e8
  A112  A2 00     LDX #$00                      ; 32112 ×718

loc_B6_A114:                    ; from 3213f
  A114  BD 01 02  LDA $0201,X                   ; 32114 ×25848
  A117  C9 25     CMP #$25                      ; 32117 ×25848
  A119  F0 11     BEQ loc_B6_A12C               ; 32119 ×25848
  A11B  90 1C     BCC loc_B6_A139               ; 3211B ×25054
  A11D  C9 2A     CMP #$2A                      ; 3211D ×16689
  A11F  B0 18     BCS loc_B6_A139               ; 3211F ×16689
  A121  C9 27     CMP #$27                      ; 32121 ×3178
  A123  F0 07     BEQ loc_B6_A12C               ; 32123 ×3178
  A125  A9 F8     LDA #$F8                      ; 32125 ×2384
  A127  9D 00 02  STA $0200,X                   ; 32127 ×2384
  A12A  D0 0D     BNE loc_B6_A139               ; 3212A ×2384

loc_B6_A12C:                    ; from 32119 32123
  A12C  A9 2A     LDA #$2A                      ; 3212C ×1588
  A12E  9D 01 02  STA $0201,X                   ; 3212E ×1588
  A131  BD 02 02  LDA $0202,X                   ; 32131 ×1588
  A134  49 01     EOR #$01                      ; 32134 ×1588
  A136  9D 02 02  STA $0202,X                   ; 32136 ×1588

loc_B6_A139:                    ; from 3211f 3211b 3212a
  A139  E8        INX                           ; 32139 ×25848
  A13A  E8        INX                           ; 3213A ×25848
  A13B  E8        INX                           ; 3213B ×25848
  A13C  E8        INX                           ; 3213C ×25848
  A13D  E0 90     CPX #$90                      ; 3213D ×25848
  A13F  90 D3     BCC loc_B6_A114               ; 3213F ×25848

loc_B6_A141:                    ; from 320dc
  A141  AD 85 05  LDA $0585                     ; 32141 ×28987
  A144  F0 06     BEQ loc_B6_A14C               ; 32144 ×28987
  A146  C9 08     CMP #$08                      ; 32146 ×5662
  A148  F0 20     BEQ $A16A                     ; 32148 ×5662
  A14A  D0 13     BNE loc_B6_A15F               ; 3214A ×5662

loc_B6_A14C:                    ; from 32144
  A14C  A5 0C     LDA $0C                       ; 3214C ×23325
  A14E  C9 F0     CMP #$F0                      ; 3214E ×23325
  A150  D0 0D     BNE loc_B6_A15F               ; 32150 ×23325
  A152  A5 F4     LDA $F4                       ; 32152 ×106
  A154  F0 0C     BEQ loc_B6_A162               ; 32154 ×106
  A156  6A        ROR A                         ; 32156 ×59
  A157  90 02     BCC loc_B6_A15B               ; 32157 ×59
  A159  C6 0B     DEC $0B                       ; 32159 ×30

loc_B6_A15B:                    ; from 32157
  A15B  C6 0C     DEC $0C                       ; 3215B ×59

loc_B6_A15D:                    ; from 320f8
  A15D  E6 F4     INC $F4                       ; 3215D ×209

loc_B6_A15F:                    ; from 32150 3214a 320fe 32109 32110
  A15F  4C 7D A8  JMP loc_B6_A87D               ; 3215F ×29503

loc_B6_A162:                    ; from 32154 32102
  A162  A2 06     LDX #$06                      ; 32162 ×48
  A164  A0 00     LDY #$00                      ; 32164 ×48
  A166  4C CB FF  JMP sub_B6_FFCB               ; 32166 ×48
  A169  60        RTS                           ; 32169 inferred, not run
  A16A  4C 6A A1  JMP $A16A                     ; 3216A inferred, not run

loc_B6_A16D:                    ; from 3000c
  A16D  20 88 FE  JSR sub_B6_FE88               ; 3216D ×49
  A170  20 BD FE  JSR sub_B6_FEBD               ; 32170 ×49
  A173  A2 20     LDX #$20                      ; 32173 ×49
  A175  20 FB D5  JSR sub_B6_D5FB               ; 32175 ×49
  A178  20 FC DA  JSR sub_B6_DAFC               ; 32178 ×49
  A17B  A9 0A     LDA #$0A                      ; 3217B ×49
  A17D  A0 04     LDY #$04                      ; 3217D ×49
  A17F  20 94 DB  JSR sub_B6_DB94               ; 3217F ×49
  A182  A9 0C     LDA #$0C                      ; 32182 ×49
  A184  20 47 90  JSR sub_B6_9047               ; 32184 ×49
  A187  A9 16     LDA #$16                      ; 32187 ×49
  A189  8D C9 FF  STA $FFC9                     ; 32189 ×49
  A18C  A9 20     LDA #$20                      ; 3218C ×49
  A18E  8D 06 20  STA $2006                     ; 3218E ×49
  A191  A9 2A     LDA #$2A                      ; 32191 ×49
  A193  A2 EE     LDX #$EE                      ; 32193 ×49
  A195  A0 9A     LDY #$9A                      ; 32195 ×49
  A197  20 5B 92  JSR sub_B6_925B               ; 32197 ×49
  A19A  A9 22     LDA #$22                      ; 3219A ×49
  A19C  8D 06 20  STA $2006                     ; 3219C ×49
  A19F  A9 6B     LDA #$6B                      ; 3219F ×49
  A1A1  A2 2D     LDX #$2D                      ; 321A1 ×49
  A1A3  A0 9B     LDY #$9B                      ; 321A3 ×49
  A1A5  20 5B 92  JSR sub_B6_925B               ; 321A5 ×49
  A1A8  A2 A0     LDX #$A0                      ; 321A8 ×49
  A1AA  A0 D7     LDY #$D7                      ; 321AA ×49
  A1AC  A9 03     LDA #$03                      ; 321AC ×49
  A1AE  20 65 D7  JSR sub_B6_D765               ; 321AE ×49
  A1B1  A2 12     LDX #$12                      ; 321B1 ×49
  A1B3  20 FB D5  JSR sub_B6_D5FB               ; 321B3 ×49
  A1B6  A9 06     LDA #$06                      ; 321B6 ×49
  A1B8  8D B9 FF  STA $FFB9                     ; 321B8 ×49
  A1BB  A2 06     LDX #$06                      ; 321BB ×49
  A1BD  A0 D8     LDY #$D8                      ; 321BD ×49
  A1BF  A9 01     LDA #$01                      ; 321BF ×49
  A1C1  20 65 D7  JSR sub_B6_D765               ; 321C1 ×49
  A1C4  A9 F8     LDA #$F8                      ; 321C4 ×49
  A1C6  85 C1     STA $C1                       ; 321C6 ×49
  A1C8  A9 50     LDA #$50                      ; 321C8 ×49
  A1CA  85 C9     STA $C9                       ; 321CA ×49
  A1CC  20 D2 A1  JSR sub_B6_A1D2               ; 321CC ×49
  A1CF  4C 7D A8  JMP loc_B6_A87D               ; 321CF ×49

sub_B6_A1D2:                    ; from 321cc 32c93 30fd3
  A1D2  A2 00     LDX #$00                      ; 321D2 ×51
  A1D4  A0 C7     LDY #$C7                      ; 321D4 ×51

loc_B6_A1D6:                    ; from 321ef
  A1D6  98        TYA                           ; 321D6 ×714
  A1D7  9D 39 02  STA $0239,X                   ; 321D7 ×714
  A1DA  18        CLC                           ; 321DA ×714
  A1DB  69 0E     ADC #$0E                      ; 321DB ×714
  A1DD  9D 01 02  STA $0201,X                   ; 321DD ×714
  A1E0  A9 00     LDA #$00                      ; 321E0 ×714
  A1E2  9D 02 02  STA $0202,X                   ; 321E2 ×714
  A1E5  9D 3A 02  STA $023A,X                   ; 321E5 ×714
  A1E8  C8        INY                           ; 321E8 ×714
  A1E9  E8        INX                           ; 321E9 ×714
  A1EA  E8        INX                           ; 321EA ×714
  A1EB  E8        INX                           ; 321EB ×714
  A1EC  E8        INX                           ; 321EC ×714
  A1ED  E0 38     CPX #$38                      ; 321ED ×714
  A1EF  D0 E5     BNE loc_B6_A1D6               ; 321EF ×714
  A1F1  4C F4 A1  JMP loc_B6_A1F4               ; 321F1 ×51

loc_B6_A1F4:                    ; from 321f1
  A1F4  A2 70     LDX #$70                      ; 321F4 ×51
  A1F6  A9 FF     LDA #$FF                      ; 321F6 ×51
  A1F8  A0 6F     LDY #$6F                      ; 321F8 ×51

sub_B6_A1FA:                    ; from 31d66
  A1FA  85 15     STA $15                       ; 321FA ×213
  A1FC  84 16     STY $16                       ; 321FC ×213

loc_B6_A1FE:                    ; from 32225
  A1FE  20 D1 DA  JSR sub_B6_DAD1               ; 321FE ×5076
  A201  29 03     AND #$03                      ; 32201 ×5076
  A203  49 23     EOR #$23                      ; 32203 ×5076
  A205  9D 02 02  STA $0202,X                   ; 32205 ×5076
  A208  20 D1 DA  JSR sub_B6_DAD1               ; 32208 ×5076
  A20B  29 03     AND #$03                      ; 3220B ×5076
  A20D  18        CLC                           ; 3220D ×5076
  A20E  65 16     ADC $16                       ; 3220E ×5076
  A210  9D 01 02  STA $0201,X                   ; 32210 ×5076
  A213  20 D1 DA  JSR sub_B6_DAD1               ; 32213 ×5076
  A216  25 15     AND $15                       ; 32216 ×5076
  A218  9D 00 02  STA $0200,X                   ; 32218 ×5076
  A21B  20 D1 DA  JSR sub_B6_DAD1               ; 3221B ×5076
  A21E  9D 03 02  STA $0203,X                   ; 3221E ×5076
  A221  E8        INX                           ; 32221 ×5076
  A222  E8        INX                           ; 32222 ×5076
  A223  E8        INX                           ; 32223 ×5076
  A224  E8        INX                           ; 32224 ×5076
  A225  D0 D7     BNE loc_B6_A1FE               ; 32225 ×5076
  A227  60        RTS                           ; 32227 ×213

sub_B6_A228:                    ; from 30ec6 30f1e
  A228  A5 D1     LDA $D1                       ; 32228 ×0
  A22A  C9 02     CMP #$02                      ; 3222A ×0
  A22C  D0 09     BNE $A237                     ; 3222C ×0
  A22E  A9 02     LDA #$02                      ; 3222E ×0
  A230  85 15     STA $15                       ; 32230 ×0
  A232  A9 22     LDA #$22                      ; 32232 ×0
  A234  4C 3D A2  JMP $A23D                     ; 32234 ×0
  A237  A9 04     LDA #$04                      ; 32237 ×0
  A239  85 15     STA $15                       ; 32239 ×0
  A23B  A9 06     LDA #$06                      ; 3223B ×0
  A23D  85 16     STA $16                       ; 3223D ×0
  A23F  A2 00     LDX #$00                      ; 3223F ×0
  A241  F0 15     BEQ $A258                     ; 32241 ×0

sub_B6_A243:                    ; from 32246 32250 30f12
  A243  AD 02 20  LDA $2002                     ; 32243 ×1656352
  A246  10 FB     BPL sub_B6_A243               ; 32246 ×1656352
  A248  60        RTS                           ; 32248 ×736

sub_B6_A249:                    ; from 31042 310e2 35aee 31897 311cc 32bd3 (+10)
  A249  86 15     STX $15                       ; 32249 ×736
  A24B  84 16     STY $16                       ; 3224B ×736
  A24D  AD 02 20  LDA $2002                     ; 3224D ×736
  A250  20 43 A2  JSR sub_B6_A243               ; 32250 ×736
  A253  A2 2C     LDX #$2C                      ; 32253 ×736

loc_B6_A255:                    ; from 32256
  A255  CA        DEX                           ; 32255 ×32384
  A256  D0 FD     BNE loc_B6_A255               ; 32256 ×32384
  A258  A9 3F     LDA #$3F                      ; 32258 ×736
  A25A  8D 06 20  STA $2006                     ; 3225A ×736
  A25D  8E 06 20  STX $2006                     ; 3225D ×736
  A260  A4 15     LDY $15                       ; 32260 ×736
  A262  20 67 A2  JSR sub_B6_A267               ; 32262 ×736
  A265  A4 16     LDY $16                       ; 32265 ×736

sub_B6_A267:                    ; from 32262
  A267  B9 81 A2  LDA $A281,Y                   ; 32267 ×1472
  A26A  85 1D     STA $1D                       ; 3226A ×1472
  A26C  B9 82 A2  LDA $A282,Y                   ; 3226C ×1472
  A26F  85 1E     STA $1E                       ; 3226F ×1472
  A271  A0 00     LDY #$00                      ; 32271 ×1472

loc_B6_A273:                    ; from 3227e
  A273  B1 1D     LDA ($1D),Y                   ; 32273 ×23552
  A275  95 55     STA $55,X                     ; 32275 ×23552
  A277  8D 07 20  STA $2007                     ; 32277 ×23552
  A27A  C8        INY                           ; 3227A ×23552
  A27B  E8        INX                           ; 3227B ×23552
  A27C  C0 10     CPY #$10                      ; 3227C ×23552
  A27E  D0 F3     BNE loc_B6_A273               ; 3227E ×23552
  A280  60        RTS                           ; 32280 ×1472
  A281  .byte CD A2 DD A2                                       ; 32281 data, read by 32267 3226c
  A285  .byte ED A2 FD A2                                       ; 32285
  A289  .byte 0D A3 1D A3 2D A3 3D A3 5D A3                     ; 32289 data, read by 32267 3226c
  A293  .byte 4D A3                                             ; 32293
  A295  .byte 6D A3 7D A3 8D A3 9D A3 AD A3 BD A3 CD A3 DD A3   ; 32295 data, read by 32267 3226c
  A2A5  .byte ED A3 0D A4 11 A4 21 A4 31 A4 41 A4 51 A4 59 A4   ; 322A5 data, read by 32267 3226c
  A2B5  .byte FD A3 6D A4 7D A4 8D A4                           ; 322B5 data, read by 32267 3226c
  A2BD  .byte 91 A4 99 A4 5D A4                                 ; 322BD
  A2C3  .byte A9 A4                                             ; 322C3 data, read by 32267 3226c
  A2C5  .byte B9 A4 C9 A4 D9 A4 E5 A4                           ; 322C5
  A2CD  .byte 0F 05 15 34 0F 06 15 34 0F 07 15 34 0F 01 23 34   ; 322CD data, read by 32273
  A2DD  .byte 0F 07 17 27 0F 08 17 10 0F 08 09 07 0F 02 12 20   ; 322DD data, read by 32273
  A2ED  .byte 0F 06 06 16 0F 07 06 16 0F 07 06 16 0F 02 12 20   ; 322ED
  A2FD  .byte 0F 0F 06 16 0F 0F 16 26 0F 16 26 36 0F 0F 00 20   ; 322FD
  A30D  .byte 0F 07 06 16 0F 06 16 26 0F 06 15 25 0F 06 05 20   ; 3230D data, read by 32273
  A31D  .byte 0F 07 16 26 0F 05 15 25 0F 04 14 24 0F 16 26 20   ; 3231D data, read by 32273
  A32D  .byte 0F 03 21 31 0F 03 15 25 0F 23 13 03 0F 1C 21 31   ; 3232D data, read by 32273
  A33D  .byte 0F 04 14 24 0F 0C 1C 2C 0F 0F 04 14 0F 14 24 30   ; 3233D data, read by 32273
  A34D  .byte 0F 06 16 26 0F 14 04 24 0F 05 16 26 0F 05 04 15   ; 3234D
  A35D  .byte 0F 07 06 16 0F 14 04 24 0F 05 06 16 0F 05 04 15   ; 3235D data, read by 32273
  A36D  .byte 0F 03 13 23 0F 05 04 14 0F 03 1C 2C 0F 05 15 25   ; 3236D data, read by 32273
  A37D  .byte 0F 16 20 12 0F 12 20 16 0F 18 08 17 0F 07 17 28   ; 3237D data, read by 32273
  A38D  .byte 0F 15 25 35 0F 07 05 15 0F 15 25 20 0F 09 19 2A   ; 3238D data, read by 32273
  A39D  .byte 0F 00 10 20 0F 07 05 15 0F 10 00 27 0F 03 13 23   ; 3239D data, read by 32273
  A3AD  .byte 0F 15 25 35 0F 02 12 22 0F 08 19 29 0F 06 05 15   ; 323AD data, read by 32273
  A3BD  .byte 0F 07 17 27 0F 02 1C 2C 0F 07 05 14 0F 07 16 27   ; 323BD data, read by 32273
  A3CD  .byte 0F 00 10 20 0F 04 14 24 0F 0C 1C 0F 0F 02 12 22   ; 323CD data, read by 32273
  A3DD  .byte 0F 0F 0A 1A 0F 0F 17 27 0F 18 28 20 0F 0F 16 26   ; 323DD data, read by 32273
  A3ED  .byte 0F 19 09 28 0F 1B 0B 27 0F 15 05 00 0F 20 10 00   ; 323ED data, read by 32273
  A3FD  .byte 0F 19 09 28 0F 1B 0B 27 0F 00 10 20 0F 05 15 25   ; 323FD data, read by 32273
  A40D  .byte 0F 20 17 28 0F 05 22 38 0F 04 13 23 0F 05 15 25   ; 3240D data, read by 32273
  A41D  .byte 0F 20 20 20 0F 20 10 00 0F 05 15 25 0F 16 26 36   ; 3241D data, read by 32273
  A42D  .byte 0F 02 12 22 0F 0A 1A 10 0F 18 28 10 0F 20 00 10   ; 3242D data, read by 32273
  A43D  .byte 0F 08 18 10 0F 20 18 28 0F 0A 1A 20 0F 18 28 20   ; 3243D data, read by 32273
  A44D  .byte 0F 16 26 36 0F 0C 1C 2C 0F 0C 1C 20 0F 0F 2C 3C   ; 3244D data, read by 32273
  A45D  .byte 0F 12 22 32 0F 0F 0A 1A 0F 08 18 28               ; 3245D data, read by 32273
  A469  .byte 0F 06 16 26                                       ; 32469
  A46D  .byte 0F 16 26 20 0F 0C 1C 20 0F 0C 28 20 0F 01 22 20   ; 3246D data, read by 32273
  A47D  .byte 0F 0F 22 20 0F 0F 28 20 0F 05 15 20 0F 16 26 20   ; 3247D data, read by 32273
  A48D  .byte 0F 02 22 32 0F 0C 1C 2C 0F 04 14 34 0F 00 10 20   ; 3248D data, read by 32273
  A49D  .byte 0F 09 19 28 0F 06 28 36 0F 09 19 20               ; 3249D
  A4A9  .byte 0F 06 16 26 0F 00 10 20 0F 00 10 20 0F 00 10 20   ; 324A9 data, read by 32273
  A4B9  .byte 0F 18 28 20 0F 0A 18 28 0F 0A 1A 2A 0F 1A 28 20   ; 324B9
  A4C9  .byte 0F 0C 1C 2C 0F 06 16 26 0F 00 10 20 0F 11 21 31   ; 324C9
  A4D9  .byte 0F 0F 15 20 0F 0F 25 37 0F 06 26 36 0F 00 10 20   ; 324D9
  A4E9  .byte 0F 02 16 26 0F 06 26 36 0F 02 22 32               ; 324E9

loc_B6_A4F5:                    ; from 3000f
  A4F5  AD 65 05  LDA $0565                     ; 324F5 ×51179
  A4F8  F0 1E     BEQ loc_B6_A518               ; 324F8 ×51179
  A4FA  C9 50     CMP #$50                      ; 324FA ×23739
  A4FC  90 16     BCC loc_B6_A514               ; 324FC ×23739
  A4FE  A9 0F     LDA #$0F                      ; 324FE ×2784
  A500  25 0B     AND $0B                       ; 32500 ×2784
  A502  D0 7D     BNE loc_B6_A581               ; 32502 ×2784
  A504  A5 66     LDA $66                       ; 32504 ×147
  A506  E9 10     SBC #$10                      ; 32506 ×147
  A508  B0 02     BCS loc_B6_A50C               ; 32508 ×147
  A50A  A9 0F     LDA #$0F                      ; 3250A ×49

loc_B6_A50C:                    ; from 32508
  A50C  85 66     STA $66                       ; 3250C ×147
  A50E  A0 03     LDY #$03                      ; 3250E ×147
  A510  A2 11     LDX #$11                      ; 32510 ×147
  A512  D0 50     BNE loc_B6_A564               ; 32512 ×147

loc_B6_A514:                    ; from 324fc
  A514  A5 C9     LDA $C9                       ; 32514 ×20955
  A516  F0 69     BEQ loc_B6_A581               ; 32516 ×20955

loc_B6_A518:                    ; from 324f8
  A518  A5 0B     LDA $0B                       ; 32518 ×30233
  A51A  29 03     AND #$03                      ; 3251A ×30233
  A51C  D0 40     BNE loc_B6_A55E               ; 3251C ×30233
  A51E  AD 39 04  LDA $0439                     ; 3251E ×7595
  A521  D0 28     BNE loc_B6_A54B               ; 32521 ×7595
  A523  AD 2A 04  LDA $042A                     ; 32523 ×931
  A526  C9 02     CMP #$02                      ; 32526 ×931
  A528  90 21     BCC loc_B6_A54B               ; 32528 ×931
  A52A  C9 04     CMP #$04                      ; 3252A ×833
  A52C  B0 1D     BCS loc_B6_A54B               ; 3252C ×833
  A52E  A2 BA     LDX #$BA                      ; 3252E ×98
  A530  A0 D7     LDY #$D7                      ; 32530 ×98
  A532  C9 02     CMP #$02                      ; 32532 ×98
  A534  F0 04     BEQ loc_B6_A53A               ; 32534 ×98
  A536  A2 DE     LDX #$DE                      ; 32536 ×49
  A538  A0 D7     LDY #$D7                      ; 32538 ×49

loc_B6_A53A:                    ; from 32534
  A53A  A9 16     LDA #$16                      ; 3253A ×98
  A53C  8D C9 FF  STA $FFC9                     ; 3253C ×98
  A53F  A9 02     LDA #$02                      ; 3253F ×98
  A541  20 65 D7  JSR sub_B6_D765               ; 32541 ×98
  A544  A9 06     LDA #$06                      ; 32544 ×98
  A546  8D B9 FF  STA $FFB9                     ; 32546 ×98
  A549  F0 39     BEQ loc_B6_A584               ; 32549 ×98

loc_B6_A54B:                    ; from 32521 3252c 32528
  A54B  C9 70     CMP #$70                      ; 3254B ×7595
  A54D  90 06     BCC loc_B6_A555               ; 3254D ×7595
  A54F  A5 C9     LDA $C9                       ; 3254F ×1372
  A551  69 0F     ADC #$0F                      ; 32551 ×1372
  A553  D0 07     BNE loc_B6_A55C               ; 32553 ×1372

loc_B6_A555:                    ; from 3254d
  A555  A5 C9     LDA $C9                       ; 32555 ×6223
  A557  38        SEC                           ; 32557 ×6223
  A558  E9 10     SBC #$10                      ; 32558 ×6223
  A55A  90 02     BCC loc_B6_A55E               ; 3255A ×6223

loc_B6_A55C:                    ; from 32553
  A55C  85 C9     STA $C9                       ; 3255C ×3381

loc_B6_A55E:                    ; from 3251c 3255a
  A55E  AC 2A 04  LDY $042A                     ; 3255E ×30233
  A561  BE 6F A8  LDX $A86F,Y                   ; 32561 ×30233

loc_B6_A564:                    ; from 32512
  A564  A9 3F     LDA #$3F                      ; 32564 ×30380
  A566  8D 06 20  STA $2006                     ; 32566 ×30380
  A569  8E 06 20  STX $2006                     ; 32569 ×30380

loc_B6_A56C:                    ; from 3257b
  A56C  B5 55     LDA $55,X                     ; 3256C ×285719
  A56E  38        SEC                           ; 3256E ×285719
  A56F  E5 C9     SBC $C9                       ; 3256F ×285719
  A571  B0 02     BCS loc_B6_A575               ; 32571 ×285719
  A573  A9 0F     LDA #$0F                      ; 32573 ×87416

loc_B6_A575:                    ; from 32571
  A575  8D 07 20  STA $2007                     ; 32575 ×285719
  A578  E8        INX                           ; 32578 ×285719
  A579  E0 10     CPX #$10                      ; 32579 ×285719
  A57B  90 EF     BCC loc_B6_A56C               ; 3257B ×285719
  A57D  C0 04     CPY #$04                      ; 3257D ×30380
  A57F  90 03     BCC loc_B6_A584               ; 3257F ×30380

loc_B6_A581:                    ; from 32516 32502
  A581  20 EF 91  JSR sub_B6_91EF               ; 32581 ×23592

loc_B6_A584:                    ; from 3257f
  A584  A9 00     LDA #$00                      ; 32584 ×51179
  A586  8D 05 20  STA $2005                     ; 32586 ×51179
  A589  AC 2A 04  LDY $042A                     ; 32589 ×51179
  A58C  C0 01     CPY #$01                      ; 3258C ×51179
  A58E  D0 18     BNE loc_B6_A5A8               ; 3258E ×51179
  A590  A9 16     LDA #$16                      ; 32590 ×6860
  A592  8D C9 FF  STA $FFC9                     ; 32592 ×6860
  A595  A9 60     LDA #$60                      ; 32595 ×6860
  A597  8D 05 20  STA $2005                     ; 32597 ×6860
  A59A  A5 0A     LDA $0A                       ; 3259A ×6860
  A59C  8D 01 20  STA $2001                     ; 3259C ×6860
  A59F  A0 02     LDY #$02                      ; 3259F ×6860
  A5A1  A2 01     LDX #$01                      ; 325A1 ×6860
  A5A3  20 EB FF  JSR sub_B6_FFEB               ; 325A3 ×6860
  A5A6  F0 16     BEQ loc_B6_A5BE               ; 325A6 ×6860

loc_B6_A5A8:                    ; from 3258e
  A5A8  B9 68 A8  LDA $A868,Y                   ; 325A8 ×44319
  A5AB  C9 10     CMP #$10                      ; 325AB ×44319
  A5AD  D0 07     BNE loc_B6_A5B6               ; 325AD ×44319
  A5AF  09 06     ORA #$06                      ; 325AF ×15914
  A5B1  8D C9 FF  STA $FFC9                     ; 325B1 ×15914
  A5B4  A5 83     LDA $83                       ; 325B4 ×15914

loc_B6_A5B6:                    ; from 325ad
  A5B6  8D 05 20  STA $2005                     ; 325B6 ×44319
  A5B9  A5 0A     LDA $0A                       ; 325B9 ×44319
  A5BB  8D 01 20  STA $2001                     ; 325BB ×44319

loc_B6_A5BE:                    ; from 325a6
  A5BE  AD 2A 04  LDA $042A                     ; 325BE ×51179
  A5C1  C9 06     CMP #$06                      ; 325C1 ×51179
  A5C3  D0 3B     BNE loc_B6_A600               ; 325C3 ×51179
  A5C5  A5 83     LDA $83                       ; 325C5 ×426
  A5C7  30 1F     BMI loc_B6_A5E8               ; 325C7 ×426
  A5C9  C9 40     CMP #$40                      ; 325C9 ×380
  A5CB  90 1B     BCC loc_B6_A5E8               ; 325CB ×380
  A5CD  AD 65 05  LDA $0565                     ; 325CD ×316
  A5D0  C9 6C     CMP #$6C                      ; 325D0 ×316
  A5D2  D0 2C     BNE loc_B6_A600               ; 325D2 ×316
  A5D4  A5 0B     LDA $0B                       ; 325D4 ×0
  A5D6  49 40     EOR #$40                      ; 325D6 ×0
  A5D8  D0 02     BNE $A5DC                     ; 325D8 ×0
  A5DA  85 24     STA $24                       ; 325DA ×0
  A5DC  A9 16     LDA #$16                      ; 325DC ×0
  A5DE  8D C9 FF  STA $FFC9                     ; 325DE ×0
  A5E1  A2 0A     LDX #$0A                      ; 325E1 ×0
  A5E3  A0 0C     LDY #$0C                      ; 325E3 ×0
  A5E5  20 EB FF  JSR sub_B6_FFEB               ; 325E5 ×0

loc_B6_A5E8:                    ; from 325cb 325c7
  A5E8  20 F0 A5  JSR sub_B6_A5F0               ; 325E8 ×110
  A5EB  A9 00     LDA #$00                      ; 325EB ×110
  A5ED  4C 13 A7  JMP loc_B6_A713               ; 325ED ×110

sub_B6_A5F0:                    ; from 3261a 325e8
  A5F0  A4 83     LDY $83                       ; 325F0 ×8176
  A5F2  C0 50     CPY #$50                      ; 325F2 ×8176
  A5F4  F0 09     BEQ loc_B6_A5FF               ; 325F4 ×8176
  A5F6  C8        INY                           ; 325F6 ×6259
  A5F7  C0 F0     CPY #$F0                      ; 325F7 ×6259
  A5F9  D0 02     BNE loc_B6_A5FD               ; 325F9 ×6259
  A5FB  A0 00     LDY #$00                      ; 325FB ×50

loc_B6_A5FD:                    ; from 325f9
  A5FD  84 83     STY $83                       ; 325FD ×6259

loc_B6_A5FF:                    ; from 325f4
  A5FF  60        RTS                           ; 325FF ×8176

loc_B6_A600:                    ; from 325c3 325d2
  A600  A5 BA     LDA $BA                       ; 32600 ×51069
  A602  29 03     AND #$03                      ; 32602 ×51069
  A604  F0 03     BEQ loc_B6_A609               ; 32604 ×51069
  A606  4C D8 A6  JMP loc_B6_A6D8               ; 32606 ×11840

loc_B6_A609:                    ; from 32604
  A609  AD A1 05  LDA $05A1                     ; 32609 ×39229
  A60C  F0 1A     BEQ loc_B6_A628               ; 3260C ×39229
  A60E  AD 65 05  LDA $0565                     ; 3260E ×8114
  A611  C9 6C     CMP #$6C                      ; 32611 ×8114
  A613  F0 5E     BEQ loc_B6_A673               ; 32613 ×8114
  A615  A9 16     LDA #$16                      ; 32615 ×8066
  A617  8D C9 FF  STA $FFC9                     ; 32617 ×8066
  A61A  20 F0 A5  JSR sub_B6_A5F0               ; 3261A ×8066
  A61D  CE 65 05  DEC $0565                     ; 3261D ×8066
  A620  A9 02     LDA #$02                      ; 32620 ×8066
  A622  4C C9 A6  JMP loc_B6_A6C9               ; 32622 ×8066

loc_B6_A625:                    ; from 3262b
  A625  4C BB A6  JMP loc_B6_A6BB               ; 32625 ×3675

loc_B6_A628:                    ; from 3260c
  A628  AD 65 05  LDA $0565                     ; 32628 ×31115
  A62B  D0 F8     BNE loc_B6_A625               ; 3262B ×31115
  A62D  85 09     STA $09                       ; 3262D ×27440
  A62F  A0 03     LDY #$03                      ; 3262F ×27440
  A631  A2 64     LDX #$64                      ; 32631 ×27440
  A633  20 EB FF  JSR sub_B6_FFEB               ; 32633 ×27440
  A636  A9 16     LDA #$16                      ; 32636 ×27440
  A638  8D C9 FF  STA $FFC9                     ; 32638 ×27440
  A63B  A0 0B     LDY #$0B                      ; 3263B ×27440
  A63D  20 EB FF  JSR sub_B6_FFEB               ; 3263D ×27440
  A640  A9 06     LDA #$06                      ; 32640 ×27440
  A642  8D B9 FF  STA $FFB9                     ; 32642 ×27440
  A645  EE 39 04  INC $0439                     ; 32645 ×27440
  A648  AD 39 04  LDA $0439                     ; 32648 ×27440
  A64B  49 8C     EOR #$8C                      ; 3264B ×27440
  A64D  D0 1A     BNE loc_B6_A669               ; 3264D ×27440
  A64F  8D 39 04  STA $0439                     ; 3264F ×196
  A652  EE 2A 04  INC $042A                     ; 32652 ×196
  A655  AD 2A 04  LDA $042A                     ; 32655 ×196
  A658  C9 04     CMP #$04                      ; 32658 ×196
  A65A  D0 0D     BNE loc_B6_A669               ; 3265A ×196
  A65C  A2 15     LDX #$15                      ; 3265C ×49
  A65E  A9 18     LDA #$18                      ; 3265E ×49
  A660  20 6C A6  JSR sub_B6_A66C               ; 32660 ×49
  A663  A9 F0     LDA #$F0                      ; 32663 ×49
  A665  85 C9     STA $C9                       ; 32665 ×49
  A667  D0 52     BNE loc_B6_A6BB               ; 32667 ×49

loc_B6_A669:                    ; from 3264d 3265a
  A669  4C 7D A8  JMP loc_B6_A87D               ; 32669 ×27391

sub_B6_A66C:                    ; from 32660
  A66C  85 39     STA $39                       ; 3266C ×49
  A66E  A0 03     LDY #$03                      ; 3266E ×49
  A670  4C CB FF  JMP sub_B6_FFCB               ; 32670 ×49

loc_B6_A673:                    ; from 32613
  A673  A0 00     LDY #$00                      ; 32673 ×48
  A675  84 82     STY $82                       ; 32675 ×48
  A677  A2 0F     LDX #$0F                      ; 32677 ×48
  A679  20 CB FF  JSR sub_B6_FFCB               ; 32679 ×48
  A67C  A9 06     LDA #$06                      ; 3267C ×48
  A67E  8D B9 FF  STA $FFB9                     ; 3267E ×48
  A681  A9 00     LDA #$00                      ; 32681 ×48
  A683  85 C9     STA $C9                       ; 32683 ×48
  A685  85 CB     STA $CB                       ; 32685 ×48
  A687  A9 00     LDA #$00                      ; 32687 ×48
  A689  85 24     STA $24                       ; 32689 ×48
  A68B  4C 7D A8  JMP loc_B6_A87D               ; 3268B ×48

loc_B6_A68E:                    ; from 30012
  A68E  A5 0B     LDA $0B                       ; 3268E ×1008
  A690  29 03     AND #$03                      ; 32690 ×1008
  A692  D0 0B     BNE loc_B6_A69F               ; 32692 ×1008
  A694  A5 C9     LDA $C9                       ; 32694 ×288
  A696  18        CLC                           ; 32696 ×288
  A697  69 10     ADC #$10                      ; 32697 ×288
  A699  85 C9     STA $C9                       ; 32699 ×288
  A69B  C9 60     CMP #$60                      ; 3269B ×288
  A69D  B0 15     BCS loc_B6_A6B4               ; 3269D ×288

loc_B6_A69F:                    ; from 32692
  A69F  20 83 A8  JSR sub_B6_A883               ; 3269F ×960
  A6A2  A9 00     LDA #$00                      ; 326A2 ×960
  A6A4  8D 05 20  STA $2005                     ; 326A4 ×960
  A6A7  A5 83     LDA $83                       ; 326A7 ×960
  A6A9  20 4B 91  JSR sub_B6_914B               ; 326A9 ×960
  A6AC  A0 0C     LDY #$0C                      ; 326AC ×960
  A6AE  20 EB FF  JSR sub_B6_FFEB               ; 326AE ×960
  A6B1  4C 7D A8  JMP loc_B6_A87D               ; 326B1 ×960

loc_B6_A6B4:                    ; from 3269d
  A6B4  A2 09     LDX #$09                      ; 326B4 ×48
  A6B6  A0 00     LDY #$00                      ; 326B6 ×48
  A6B8  4C CB FF  JMP sub_B6_FFCB               ; 326B8 ×48

loc_B6_A6BB:                    ; from 32625 32667
  A6BB  EE 65 05  INC $0565                     ; 326BB ×3724
  A6BE  AD 65 05  LDA $0565                     ; 326BE ×3724
  A6C1  C9 08     CMP #$08                      ; 326C1 ×3724
  A6C3  A9 FF     LDA #$FF                      ; 326C3 ×3724
  A6C5  90 02     BCC loc_B6_A6C9               ; 326C5 ×3724
  A6C7  A9 FD     LDA #$FD                      ; 326C7 ×3381

loc_B6_A6C9:                    ; from 32622 326c5
  A6C9  18        CLC                           ; 326C9 ×11790
  A6CA  65 C1     ADC $C1                       ; 326CA ×11790
  A6CC  C9 FD     CMP #$FD                      ; 326CC ×11790
  A6CE  B0 08     BCS loc_B6_A6D8               ; 326CE ×11790
  A6D0  C9 20     CMP #$20                      ; 326D0 ×9150
  A6D2  B0 02     BCS loc_B6_A6D6               ; 326D2 ×9150
  A6D4  A9 20     LDA #$20                      ; 326D4 inferred, not run

loc_B6_A6D6:                    ; from 326d2
  A6D6  85 C1     STA $C1                       ; 326D6 ×9150

loc_B6_A6D8:                    ; from 32606 326ce
  A6D8  AC 2A 04  LDY $042A                     ; 326D8 ×23630
  A6DB  B9 76 A8  LDA $A876,Y                   ; 326DB ×23630
  A6DE  09 07     ORA #$07                      ; 326DE ×23630
  A6E0  A8        TAY                           ; 326E0 ×23630
  A6E1  A2 03     LDX #$03                      ; 326E1 ×23630
  A6E3  20 CB FF  JSR sub_B6_FFCB               ; 326E3 ×23630
  A6E6  A5 BA     LDA $BA                       ; 326E6 ×23630
  A6E8  29 01     AND #$01                      ; 326E8 ×23630
  A6EA  85 BA     STA $BA                       ; 326EA ×23630
  A6EC  D0 63     BNE loc_B6_A751               ; 326EC ×23630
  A6EE  AD 2A 04  LDA $042A                     ; 326EE ×11839
  A6F1  49 06     EOR #$06                      ; 326F1 ×11839
  A6F3  F0 1E     BEQ loc_B6_A713               ; 326F3 ×11839
  A6F5  A5 83     LDA $83                       ; 326F5 ×11681
  A6F7  C9 50     CMP #$50                      ; 326F7 ×11681
  A6F9  F0 56     BEQ loc_B6_A751               ; 326F9 ×11681
  A6FB  AD A1 05  LDA $05A1                     ; 326FB ×9857
  A6FE  D0 07     BNE loc_B6_A707               ; 326FE ×9857
  A700  AD 65 05  LDA $0565                     ; 32700 ×3724
  A703  C9 20     CMP #$20                      ; 32703 ×3724
  A705  90 4A     BCC loc_B6_A751               ; 32705 ×3724

loc_B6_A707:                    ; from 326fe
  A707  AD DE 04  LDA $04DE                     ; 32707 ×8338
  A70A  0A        ASL A                         ; 3270A ×8338
  A70B  AD ED 04  LDA $04ED                     ; 3270B ×8338
  A70E  2A        ROL A                         ; 3270E ×8338
  A70F  10 02     BPL loc_B6_A713               ; 3270F ×8338
  A711  A9 00     LDA #$00                      ; 32711 ×2786

loc_B6_A713:                    ; from 3270f 326f3 325ed
  A713  85 15     STA $15                       ; 32713 ×8606
  A715  A2 70     LDX #$70                      ; 32715 ×8606

loc_B6_A717:                    ; from 3274f
  A717  AD A1 05  LDA $05A1                     ; 32717 ×309816
  A71A  F0 1D     BEQ loc_B6_A739               ; 3271A ×309816
  A71C  AD 2A 04  LDA $042A                     ; 3271C ×230436
  A71F  C9 06     CMP #$06                      ; 3271F ×230436
  A721  F0 16     BEQ loc_B6_A739               ; 32721 ×230436
  A723  BD 00 02  LDA $0200,X                   ; 32723 ×220788
  A726  C9 C0     CMP #$C0                      ; 32726 ×220788
  A728  90 07     BCC loc_B6_A731               ; 32728 ×220788
  A72A  A9 F8     LDA #$F8                      ; 3272A ×89349
  A72C  9D 00 02  STA $0200,X                   ; 3272C ×89349
  A72F  D0 0E     BNE loc_B6_A73F               ; 3272F ×89349

loc_B6_A731:                    ; from 32728
  A731  AD 65 05  LDA $0565                     ; 32731 ×131439
  A734  29 01     AND #$01                      ; 32734 ×131439
  A736  4C 3D A7  JMP loc_B6_A73D               ; 32736 ×131439

loc_B6_A739:                    ; from 3271a 32721
  A739  A5 0B     LDA $0B                       ; 32739 ×89028
  A73B  29 07     AND #$07                      ; 3273B ×89028

loc_B6_A73D:                    ; from 32736
  A73D  D0 03     BNE loc_B6_A742               ; 3273D ×220467

loc_B6_A73F:                    ; from 3272f
  A73F  DE 00 02  DEC $0200,X                   ; 3273F ×175181

loc_B6_A742:                    ; from 3273d
  A742  BD 03 02  LDA $0203,X                   ; 32742 ×309816
  A745  38        SEC                           ; 32745 ×309816
  A746  E5 15     SBC $15                       ; 32746 ×309816
  A748  9D 03 02  STA $0203,X                   ; 32748 ×309816
  A74B  E8        INX                           ; 3274B ×309816
  A74C  E8        INX                           ; 3274C ×309816
  A74D  E8        INX                           ; 3274D ×309816
  A74E  E8        INX                           ; 3274E ×309816
  A74F  D0 C6     BNE loc_B6_A717               ; 3274F ×309816

loc_B6_A751:                    ; from 326ec 326f9 32705
  A751  AD 2A 04  LDA $042A                     ; 32751 ×23740
  A754  C9 06     CMP #$06                      ; 32754 ×23740
  A756  D0 0F     BNE loc_B6_A767               ; 32756 ×23740
  A758  AD 65 05  LDA $0565                     ; 32758 ×426
  A75B  C9 6C     CMP #$6C                      ; 3275B ×426
  A75D  F0 27     BEQ loc_B6_A786               ; 3275D ×426
  A75F  A5 83     LDA $83                       ; 3275F ×426
  A761  30 23     BMI loc_B6_A786               ; 32761 ×426
  A763  C9 40     CMP #$40                      ; 32763 ×381
  A765  90 1F     BCC loc_B6_A786               ; 32765 ×381

loc_B6_A767:                    ; from 32756
  A767  AD ED 04  LDA $04ED                     ; 32767 ×23631
  A76A  0A        ASL A                         ; 3276A ×23631
  A76B  0A        ASL A                         ; 3276B ×23631
  A76C  0A        ASL A                         ; 3276C ×23631
  A76D  69 03     ADC #$03                      ; 3276D ×23631
  A76F  AC A1 05  LDY $05A1                     ; 3276F ×23631
  A772  F0 2F     BEQ loc_B6_A7A3               ; 32772 ×23631
  A774  18        CLC                           ; 32774 ×16183
  A775  69 08     ADC #$08                      ; 32775 ×16183
  A777  85 15     STA $15                       ; 32777 ×16183
  A779  AD 0B 05  LDA $050B                     ; 32779 ×16183
  A77C  D0 12     BNE loc_B6_A790               ; 3277C ×16183
  A77E  EE 65 05  INC $0565                     ; 3277E ×9583
  A781  AC ED 04  LDY $04ED                     ; 32781 ×9583
  A784  D0 06     BNE loc_B6_A78C               ; 32784 ×9583

loc_B6_A786:                    ; from 32765 32761
  A786  AD FD 03  LDA $03FD                     ; 32786 ×7110
  A789  4C 0A A8  JMP loc_B6_A80A               ; 32789 ×7110

loc_B6_A78C:                    ; from 32784
  A78C  A9 04     LDA #$04                      ; 3278C ×2582
  A78E  D0 13     BNE loc_B6_A7A3               ; 3278E ×2582

loc_B6_A790:                    ; from 3277c
  A790  CE 0B 05  DEC $050B                     ; 32790 ×6600
  A793  AD DE 04  LDA $04DE                     ; 32793 ×6600
  A796  38        SEC                           ; 32796 ×6600
  A797  E5 15     SBC $15                       ; 32797 ×6600
  A799  8D DE 04  STA $04DE                     ; 32799 ×6600
  A79C  B0 10     BCS loc_B6_A7AE               ; 3279C ×6600
  A79E  CE ED 04  DEC $04ED                     ; 3279E ×450
  A7A1  90 0B     BCC loc_B6_A7AE               ; 327A1 ×450

loc_B6_A7A3:                    ; from 32772 3278e
  A7A3  6D DE 04  ADC $04DE                     ; 327A3 ×10030
  A7A6  8D DE 04  STA $04DE                     ; 327A6 ×10030
  A7A9  90 03     BCC loc_B6_A7AE               ; 327A9 ×10030
  A7AB  EE ED 04  INC $04ED                     ; 327AB ×441

loc_B6_A7AE:                    ; from 327a9 3279c 327a1
  A7AE  AD DE 04  LDA $04DE                     ; 327AE ×16630
  A7B1  18        CLC                           ; 327B1 ×16630
  A7B2  6D 48 04  ADC $0448                     ; 327B2 ×16630
  A7B5  8D 48 04  STA $0448                     ; 327B5 ×16630
  A7B8  AD ED 04  LDA $04ED                     ; 327B8 ×16630
  A7BB  6D FD 03  ADC $03FD                     ; 327BB ×16630
  A7BE  90 4A     BCC loc_B6_A80A               ; 327BE ×16630
  A7C0  AC A1 05  LDY $05A1                     ; 327C0 ×5778
  A7C3  D0 45     BNE loc_B6_A80A               ; 327C3 ×5778
  A7C5  EE A1 05  INC $05A1                     ; 327C5 ×49
  A7C8  A9 84     LDA #$84                      ; 327C8 ×49
  A7CA  8D 0B 05  STA $050B                     ; 327CA ×49
  A7CD  A9 00     LDA #$00                      ; 327CD ×49
  A7CF  8D 01 20  STA $2001                     ; 327CF ×49
  A7D2  8D 00 20  STA $2000                     ; 327D2 ×49
  A7D5  20 88 FE  JSR sub_B6_FE88               ; 327D5 ×49
  A7D8  A2 06     LDX #$06                      ; 327D8 ×49
  A7DA  A0 05     LDY #$05                      ; 327DA ×49
  A7DC  20 CB FF  JSR sub_B6_FFCB               ; 327DC ×49
  A7DF  A2 12     LDX #$12                      ; 327DF ×49
  A7E1  A0 00     LDY #$00                      ; 327E1 ×49
  A7E3  20 CB FF  JSR sub_B6_FFCB               ; 327E3 ×49
  A7E6  A2 00     LDX #$00                      ; 327E6 ×49
  A7E8  A0 2A     LDY #$2A                      ; 327E8 ×49
  A7EA  20 49 A2  JSR sub_B6_A249               ; 327EA ×49
  A7ED  EE 2A 04  INC $042A                     ; 327ED ×49

loc_B6_A7F0:                    ; from 32c9b
  A7F0  A9 C2     LDA #$C2                      ; 327F0 ×50
  A7F2  85 83     STA $83                       ; 327F2 ×50
  A7F4  A0 07     LDY #$07                      ; 327F4 ×50
  A7F6  A2 03     LDX #$03                      ; 327F6 ×50
  A7F8  20 CB FF  JSR sub_B6_FFCB               ; 327F8 ×50
  A7FB  AD 02 20  LDA $2002                     ; 327FB ×50
  A7FE  A9 10     LDA #$10                      ; 327FE ×50
  A800  85 09     STA $09                       ; 32800 ×50
  A802  A9 00     LDA #$00                      ; 32802 ×50
  A804  8D FD 03  STA $03FD                     ; 32804 ×50
  A807  4C 7D A8  JMP loc_B6_A87D               ; 32807 ×50

loc_B6_A80A:                    ; from 327be 32789 327c3
  A80A  8D FD 03  STA $03FD                     ; 3280A ×23691
  A80D  AC 2A 04  LDY $042A                     ; 3280D ×23691
  A810  C0 06     CPY #$06                      ; 32810 ×23691
  A812  D0 02     BNE loc_B6_A816               ; 32812 ×23691
  A814  49 FF     EOR #$FF                      ; 32814 ×426

loc_B6_A816:                    ; from 32812
  A816  85 17     STA $17                       ; 32816 ×23691
  A818  A9 06     LDA #$06                      ; 32818 ×23691
  A81A  20 84 FF  JSR sub_B6_FF84               ; 3281A ×23691
  A81D  A5 09     LDA $09                       ; 3281D ×23691
  A81F  09 80     ORA #$80                      ; 3281F ×23691
  A821  8D 00 20  STA $2000                     ; 32821 ×23691
  A824  A9 00     LDA #$00                      ; 32824 ×23691
  A826  A2 C7     LDX #$C7                      ; 32826 ×23691
  A828  86 16     STX $16                       ; 32828 ×23691
  A82A  AA        TAX                           ; 3282A ×23691
  A82B  A8        TAY                           ; 3282B ×23691
  A82C  85 15     STA $15                       ; 3282C ×23691

loc_B6_A82E:                    ; from 3285a 32863
  A82E  98        TYA                           ; 3282E ×331674
  A82F  18        CLC                           ; 3282F ×331674
  A830  65 17     ADC $17                       ; 32830 ×331674
  A832  9D 3B 02  STA $023B,X                   ; 32832 ×331674
  A835  9D 03 02  STA $0203,X                   ; 32835 ×331674
  A838  A9 F8     LDA #$F8                      ; 32838 ×331674
  A83A  9D 38 02  STA $0238,X                   ; 3283A ×331674
  A83D  B0 0C     BCS loc_B6_A84B               ; 3283D ×331674
  A83F  A5 15     LDA $15                       ; 3283F ×328168
  A841  6D 65 05  ADC $0565                     ; 32841 ×328168
  A844  69 50     ADC #$50                      ; 32844 ×328168
  A846  9D 38 02  STA $0238,X                   ; 32846 ×328168
  A849  69 0F     ADC #$0F                      ; 32849 ×328168

loc_B6_A84B:                    ; from 3283d
  A84B  9D 00 02  STA $0200,X                   ; 3284B ×331674
  A84E  E8        INX                           ; 3284E ×331674
  A84F  E8        INX                           ; 3284F ×331674
  A850  E8        INX                           ; 32850 ×331674
  A851  E8        INX                           ; 32851 ×331674
  A852  A5 15     LDA $15                       ; 32852 ×331674
  A854  49 08     EOR #$08                      ; 32854 ×331674
  A856  85 15     STA $15                       ; 32856 ×331674
  A858  29 08     AND #$08                      ; 32858 ×331674
  A85A  D0 D2     BNE loc_B6_A82E               ; 3285A ×331674
  A85C  98        TYA                           ; 3285C ×165837
  A85D  18        CLC                           ; 3285D ×165837
  A85E  69 08     ADC #$08                      ; 3285E ×165837
  A860  A8        TAY                           ; 32860 ×165837
  A861  49 38     EOR #$38                      ; 32861 ×165837
  A863  D0 C9     BNE loc_B6_A82E               ; 32863 ×165837
  A865  4C 7D A8  JMP loc_B6_A87D               ; 32865 ×23691
  A868  .byte D0                                                ; 32868 data, read by 325a8
  A869  .byte 60                                                ; 32869
  A86A  .byte E0 E0 11 10 00 00 00 0C 0C 0C                     ; 3286A data, read by 325a8 32561
  A874  .byte 00 00 00 00 00 00                                 ; 32874
  A87A  .byte 00 10 00                                          ; 3287A data, read by 326db

loc_B6_A87D:                    ; from 3215f 32669 32865 31a09 311e9 311a2 (+12)
  A87D  A9 00     LDA #$00                      ; 3287D ×104302
  A87F  85 2D     STA $2D                       ; 3287F ×104302
  A881  60        RTS                           ; 32881 ×104302
  A882  .byte 60                                                ; 32882

sub_B6_A883:                    ; from 3269f 31169 31170 35af9 31e03 31e0a (+1)
  A883  A2 03     LDX #$03                      ; 32883 ×2331
  A885  A0 00     LDY #$00                      ; 32885 ×2331
  A887  4C CB FF  JMP sub_B6_FFCB               ; 32887 ×2331

loc_B6_A88A:                    ; from 30033
  A88A  20 AC 91  JSR sub_B6_91AC               ; 3288A ×51
  A88D  20 88 FE  JSR sub_B6_FE88               ; 3288D ×51
  A890  20 BD FE  JSR sub_B6_FEBD               ; 32890 ×51
  A893  A9 04     LDA #$04                      ; 32893 ×51
  A895  20 9B DB  JSR sub_B6_DB9B               ; 32895 ×51
  A898  A9 06     LDA #$06                      ; 32898 ×51
  A89A  20 9B DB  JSR sub_B6_DB9B               ; 3289A ×51
  A89D  A9 30     LDA #$30                      ; 3289D ×51
  A89F  20 92 DB  JSR sub_B6_DB92               ; 3289F ×51
  A8A2  A9 20     LDA #$20                      ; 328A2 ×51
  A8A4  8D 06 20  STA $2006                     ; 328A4 ×51
  A8A7  A2 00     LDX #$00                      ; 328A7 ×51
  A8A9  8E 06 20  STX $2006                     ; 328A9 ×51
  A8AC  A0 04     LDY #$04                      ; 328AC ×51
  A8AE  A9 F7     LDA #$F7                      ; 328AE ×51

loc_B6_A8B0:                    ; from 328b4 328b7
  A8B0  8D 07 20  STA $2007                     ; 328B0 ×52224
  A8B3  CA        DEX                           ; 328B3 ×52224
  A8B4  D0 FA     BNE loc_B6_A8B0               ; 328B4 ×52224
  A8B6  88        DEY                           ; 328B6 ×204
  A8B7  D0 F7     BNE loc_B6_A8B0               ; 328B7 ×204
  A8B9  A9 14     LDA #$14                      ; 328B9 ×51
  A8BB  8D 00 20  STA $2000                     ; 328BB ×51
  A8BE  A0 20     LDY #$20                      ; 328BE ×51
  A8C0  8C 06 20  STY $2006                     ; 328C0 ×51
  A8C3  A9 67     LDA #$67                      ; 328C3 ×51
  A8C5  8D 06 20  STA $2006                     ; 328C5 ×51
  A8C8  A9 FC     LDA #$FC                      ; 328C8 ×51
  A8CA  8D 07 20  STA $2007                     ; 328CA ×51
  A8CD  A9 F9     LDA #$F9                      ; 328CD ×51
  A8CF  A2 10     LDX #$10                      ; 328CF ×51

loc_B6_A8D1:                    ; from 328d5
  A8D1  8D 07 20  STA $2007                     ; 328D1 ×816
  A8D4  CA        DEX                           ; 328D4 ×816
  A8D5  D0 FA     BNE loc_B6_A8D1               ; 328D5 ×816
  A8D7  A9 FE     LDA #$FE                      ; 328D7 ×51
  A8D9  8D 07 20  STA $2007                     ; 328D9 ×51
  A8DC  8C 06 20  STY $2006                     ; 328DC ×51
  A8DF  A9 76     LDA #$76                      ; 328DF ×51
  A8E1  8D 06 20  STA $2006                     ; 328E1 ×51
  A8E4  A9 FD     LDA #$FD                      ; 328E4 ×51
  A8E6  8D 07 20  STA $2007                     ; 328E6 ×51
  A8E9  A9 FA     LDA #$FA                      ; 328E9 ×51
  A8EB  A2 10     LDX #$10                      ; 328EB ×51

loc_B6_A8ED:                    ; from 328f1
  A8ED  8D 07 20  STA $2007                     ; 328ED ×816
  A8F0  CA        DEX                           ; 328F0 ×816
  A8F1  D0 FA     BNE loc_B6_A8ED               ; 328F1 ×816
  A8F3  A9 FF     LDA #$FF                      ; 328F3 ×51
  A8F5  8D 07 20  STA $2007                     ; 328F5 ×51
  A8F8  A9 90     LDA #$90                      ; 328F8 ×51
  A8FA  8D 00 20  STA $2000                     ; 328FA ×51
  A8FD  A9 22     LDA #$22                      ; 328FD ×51
  A8FF  8D 06 20  STA $2006                     ; 328FF ×51
  A902  A9 A1     LDA #$A1                      ; 32902 ×51
  A904  A2 39     LDX #$39                      ; 32904 ×51
  A906  A0 96     LDY #$96                      ; 32906 ×51
  A908  20 5B 92  JSR sub_B6_925B               ; 32908 ×51
  A90B  A9 20     LDA #$20                      ; 3290B ×51
  A90D  8D 06 20  STA $2006                     ; 3290D ×51
  A910  A9 68     LDA #$68                      ; 32910 ×51
  A912  A2 77     LDX #$77                      ; 32912 ×51
  A914  A0 94     LDY #$94                      ; 32914 ×51
  A916  20 5B 92  JSR sub_B6_925B               ; 32916 ×51
  A919  A2 36     LDX #$36                      ; 32919 ×51
  A91B  A0 38     LDY #$38                      ; 3291B ×51
  A91D  20 49 A2  JSR sub_B6_A249               ; 3291D ×51
  A920  A2 58     LDX #$58                      ; 32920 ×51
  A922  20 FB D5  JSR sub_B6_D5FB               ; 32922 ×51
  A925  A9 FF     LDA #$FF                      ; 32925 ×51
  A927  85 10     STA $10                       ; 32927 ×51
  A929  20 84 E5  JSR sub_B6_E584               ; 32929 ×51
  A92C  4C 7D A8  JMP loc_B6_A87D               ; 3292C ×51

loc_B6_A92F:                    ; from 3293c
  A92F  A9 60     LDA #$60                      ; 3292F ×1
  A931  85 81     STA $81                       ; 32931 ×1
  A933  60        RTS                           ; 32933 ×1

sub_B6_A934:                    ; from 329b5
  A934  A6 BC     LDX $BC                       ; 32934 ×2679
  A936  A4 BB     LDY $BB                       ; 32936 ×2679
  A938  B1 CE     LDA ($CE),Y                   ; 32938 ×2679
  A93A  C9 FD     CMP #$FD                      ; 3293A ×2679
  A93C  F0 F1     BEQ loc_B6_A92F               ; 3293C ×2679
  A93E  C9 80     CMP #$80                      ; 3293E ×2678
  A940  90 40     BCC loc_B6_A982               ; 32940 ×2678
  A942  29 1F     AND #$1F                      ; 32942 ×194
  A944  85 16     STA $16                       ; 32944 ×194
  A946  A9 2A     LDA #$2A                      ; 32946 ×194
  A948  E0 2B     CPX #$2B                      ; 32948 ×194
  A94A  90 30     BCC loc_B6_A97C               ; 3294A ×194
  A94C  A9 44     LDA #$44                      ; 3294C ×146
  A94E  E0 45     CPX #$45                      ; 3294E ×146
  A950  90 2A     BCC loc_B6_A97C               ; 32950 ×146
  A952  A9 5E     LDA #$5E                      ; 32952 ×98
  A954  E0 5F     CPX #$5F                      ; 32954 ×98
  A956  90 24     BCC loc_B6_A97C               ; 32956 ×98
  A958  A9 78     LDA #$78                      ; 32958 ×50
  A95A  E0 79     CPX #$79                      ; 3295A ×50
  A95C  90 1E     BCC loc_B6_A97C               ; 3295C ×50
  A95E  A9 92     LDA #$92                      ; 3295E ×2
  A960  E0 93     CPX #$93                      ; 32960 ×2
  A962  90 18     BCC loc_B6_A97C               ; 32962 ×2
  A964  A0 2A     LDY #$2A                      ; 32964 ×1
  A966  A2 10     LDX #$10                      ; 32966 ×1

loc_B6_A968:                    ; from 32978
  A968  B9 00 01  LDA $0100,Y                   ; 32968 ×156
  A96B  C0 AC     CPY #$AC                      ; 3296B ×156
  A96D  90 02     BCC loc_B6_A971               ; 3296D ×156
  A96F  A9 00     LDA #$00                      ; 3296F ×26

loc_B6_A971:                    ; from 3296d
  A971  9D 00 01  STA $0100,X                   ; 32971 ×156
  A974  E8        INX                           ; 32974 ×156
  A975  C8        INY                           ; 32975 ×156
  A976  E0 AC     CPX #$AC                      ; 32976 ×156
  A978  D0 EE     BNE loc_B6_A968               ; 32978 ×156
  A97A  A9 91     LDA #$91                      ; 3297A ×1

loc_B6_A97C:                    ; from 3294a 32950 32956 3295c 32962
  A97C  65 16     ADC $16                       ; 3297C ×194
  A97E  85 BC     STA $BC                       ; 3297E ×194
  A980  D0 0F     BNE loc_B6_A991               ; 32980 ×194

loc_B6_A982:                    ; from 32940
  A982  38        SEC                           ; 32982 ×2484
  A983  E9 20     SBC #$20                      ; 32983 ×2484
  A985  A8        TAY                           ; 32985 ×2484
  A986  B9 8B DA  LDA $DA8B,Y                   ; 32986 ×2484
  A989  18        CLC                           ; 32989 ×2484
  A98A  69 C8     ADC #$C8                      ; 3298A ×2484
  A98C  9D 00 01  STA $0100,X                   ; 3298C ×2484
  A98F  E6 BC     INC $BC                       ; 3298F ×2484

loc_B6_A991:                    ; from 32980
  A991  E6 BB     INC $BB                       ; 32991 ×2678
  A993  60        RTS                           ; 32993 ×2678
  A994  A2 00     LDX #$00                      ; 32994 ×0
  A996  A9 70     LDA #$70                      ; 32996 ×0
  A998  85 17     STA $17                       ; 32998 ×0
  A99A  A5 0C     LDA $0C                       ; 3299A ×0
  A99C  29 40     AND #$40                      ; 3299C ×0
  A99E  85 90     STA $90                       ; 3299E ×0
  A9A0  85 1B     STA $1B                       ; 329A0 ×0
  A9A2  A9 A4     LDA #$A4                      ; 329A2 ×0
  A9A4  85 8C     STA $8C                       ; 329A4 ×0
  A9A6  A0 08     LDY #$08                      ; 329A6 ×0
  A9A8  4C 3D AA  JMP sub_B6_AA3D               ; 329A8 ×0

sub_B6_A9AB:                    ; from 329b9
  A9AB  A5 81     LDA $81                       ; 329AB ×5546
  A9AD  D0 09     BNE loc_B6_A9B8               ; 329AD ×5546
  A9AF  A5 0B     LDA $0B                       ; 329AF ×5356
  A9B1  29 01     AND #$01                      ; 329B1 ×5356
  A9B3  D0 03     BNE loc_B6_A9B8               ; 329B3 ×5356
  A9B5  20 34 A9  JSR sub_B6_A934               ; 329B5 ×2679

loc_B6_A9B8:                    ; from 329b3 329ad
  A9B8  60        RTS                           ; 329B8 ×5546

loc_B6_A9B9:                    ; from 30036
  A9B9  20 AB A9  JSR sub_B6_A9AB               ; 329B9 ×5546
  A9BC  A2 0F     LDX #$0F                      ; 329BC ×5546

loc_B6_A9BE:                    ; from 329c5
  A9BE  20 D1 DA  JSR sub_B6_DAD1               ; 329BE ×88736
  A9C1  9D AC 01  STA $01AC,X                   ; 329C1 ×88736
  A9C4  CA        DEX                           ; 329C4 ×88736
  A9C5  10 F7     BPL loc_B6_A9BE               ; 329C5 ×88736
  A9C7  A2 00     LDX #$00                      ; 329C7 ×5546
  A9C9  86 90     STX $90                       ; 329C9 ×5546
  A9CB  86 1B     STX $1B                       ; 329CB ×5546
  A9CD  A5 FE     LDA $FE                       ; 329CD ×5546
  A9CF  10 1C     BPL loc_B6_A9ED               ; 329CF ×5546
  A9D1  A9 50     LDA #$50                      ; 329D1 ×5542
  A9D3  85 17     STA $17                       ; 329D3 ×5542
  A9D5  A9 3A     LDA #$3A                      ; 329D5 ×5542
  A9D7  85 8C     STA $8C                       ; 329D7 ×5542
  A9D9  A0 07     LDY #$07                      ; 329D9 ×5542
  A9DB  20 3D AA  JSR sub_B6_AA3D               ; 329DB ×5542
  A9DE  A5 0B     LDA $0B                       ; 329DE ×5542
  A9E0  29 58     AND #$58                      ; 329E0 ×5542
  A9E2  D0 09     BNE loc_B6_A9ED               ; 329E2 ×5542
  A9E4  A0 C6     LDY #$C6                      ; 329E4 ×808
  A9E6  8C 15 02  STY $0215                     ; 329E6 ×808
  A9E9  C8        INY                           ; 329E9 ×808
  A9EA  8C 19 02  STY $0219                     ; 329EA ×808

loc_B6_A9ED:                    ; from 329e2 329cf
  A9ED  A9 9C     LDA #$9C                      ; 329ED ×5546
  A9EF  85 17     STA $17                       ; 329EF ×5546
  A9F1  A9 64     LDA #$64                      ; 329F1 ×5546
  A9F3  85 8C     STA $8C                       ; 329F3 ×5546
  A9F5  A5 0B     LDA $0B                       ; 329F5 ×5546
  A9F7  4A        LSR A                         ; 329F7 ×5546
  A9F8  4A        LSR A                         ; 329F8 ×5546
  A9F9  4A        LSR A                         ; 329F9 ×5546
  A9FA  4A        LSR A                         ; 329FA ×5546
  A9FB  A8        TAY                           ; 329FB ×5546
  A9FC  B9 48 AA  LDA $AA48,Y                   ; 329FC ×5546
  A9FF  A8        TAY                           ; 329FF ×5546
  AA00  20 3D AA  JSR sub_B6_AA3D               ; 32A00 ×5546
  AA03  A9 84     LDA #$84                      ; 32A03 ×5546
  AA05  85 17     STA $17                       ; 32A05 ×5546
  AA07  A9 5C     LDA #$5C                      ; 32A07 ×5546
  AA09  85 8C     STA $8C                       ; 32A09 ×5546
  AA0B  A5 0C     LDA $0C                       ; 32A0B ×5546
  AA0D  29 20     AND #$20                      ; 32A0D ×5546
  AA0F  F0 04     BEQ loc_B6_AA15               ; 32A0F ×5546
  AA11  A5 0C     LDA $0C                       ; 32A11 ×2322
  AA13  29 04     AND #$04                      ; 32A13 ×2322

loc_B6_AA15:                    ; from 32a0f
  AA15  4A        LSR A                         ; 32A15 ×5546
  AA16  4A        LSR A                         ; 32A16 ×5546
  AA17  69 03     ADC #$03                      ; 32A17 ×5546
  AA19  A8        TAY                           ; 32A19 ×5546
  AA1A  20 3D AA  JSR sub_B6_AA3D               ; 32A1A ×5546
  AA1D  A5 0B     LDA $0B                       ; 32A1D ×5546
  AA1F  C9 C0     CMP #$C0                      ; 32A1F ×5546
  AA21  B0 17     BCS loc_B6_AA3A               ; 32A21 ×5546
  AA23  29 42     AND #$42                      ; 32A23 ×5468
  AA25  F0 13     BEQ loc_B6_AA3A               ; 32A25 ×5468
  AA27  A9 5C     LDA #$5C                      ; 32A27 ×3854
  AA29  85 17     STA $17                       ; 32A29 ×3854
  AA2B  A9 8A     LDA #$8A                      ; 32A2B ×3854
  AA2D  85 8C     STA $8C                       ; 32A2D ×3854
  AA2F  A5 0B     LDA $0B                       ; 32A2F ×3854
  AA31  29 01     AND #$01                      ; 32A31 ×3854
  AA33  18        CLC                           ; 32A33 ×3854
  AA34  69 05     ADC #$05                      ; 32A34 ×3854
  AA36  A8        TAY                           ; 32A36 ×3854
  AA37  20 3D AA  JSR sub_B6_AA3D               ; 32A37 ×3854

loc_B6_AA3A:                    ; from 32a25 32a21
  AA3A  4C 78 87  JMP sub_B6_8778               ; 32A3A ×5546

sub_B6_AA3D:                    ; from 32a00 32a1a 329db 32a37 32002 32e08
  AA3D  B9 58 AA  LDA $AA58,Y                   ; 32A3D ×20744
  AA40  85 19     STA $19                       ; 32A40 ×20744
  AA42  B9 64 AA  LDA $AA64,Y                   ; 32A42 ×20744
  AA45  4C 23 8D  JMP sub_B6_8D23               ; 32A45 ×20744
  AA48  .byte 00 00 00 01 00 00 00 00 01 01 01 02 02 02 02 02   ; 32A48 data, read by 329fc
  AA58  .byte 93 B0 C7 DE E7 F0 1B 46                           ; 32A58 data, read by 32a3d
  AA60  .byte B6 B6 6C                                          ; 32A60
  AA63  .byte 89 DE DE DE DE DE DE DF DF                        ; 32A63 data, read by 32a3d 32a42
  AA6C  .byte DF DF E1                                          ; 32A6C
  AA6F  .byte E1                                                ; 32A6F data, read by 32a42

loc_B6_AA70:                    ; from 30039
  AA70  20 88 FE  JSR sub_B6_FE88               ; 32A70 ×50
  AA73  20 BD FE  JSR sub_B6_FEBD               ; 32A73 ×50
  AA76  A9 44     LDA #$44                      ; 32A76 ×50
  AA78  20 92 DB  JSR sub_B6_DB92               ; 32A78 ×50
  AA7B  A5 8D     LDA $8D                       ; 32A7B ×50
  AA7D  0A        ASL A                         ; 32A7D ×50
  AA7E  69 08     ADC #$08                      ; 32A7E ×50
  AA80  20 9B DB  JSR sub_B6_DB9B               ; 32A80 ×50
  AA83  A9 10     LDA #$10                      ; 32A83 ×50
  AA85  20 9B DB  JSR sub_B6_DB9B               ; 32A85 ×50
  AA88  A9 12     LDA #$12                      ; 32A88 ×50
  AA8A  20 9B DB  JSR sub_B6_DB9B               ; 32A8A ×50
  AA8D  A4 8D     LDY $8D                       ; 32A8D ×50
  AA8F  A9 20     LDA #$20                      ; 32A8F ×50
  AA91  8D 06 20  STA $2006                     ; 32A91 ×50
  AA94  BE 96 E1  LDX $E196,Y                   ; 32A94 ×50
  AA97  B9 9C E1  LDA $E19C,Y                   ; 32A97 ×50
  AA9A  A8        TAY                           ; 32A9A ×50
  AA9B  A9 44     LDA #$44                      ; 32A9B ×50
  AA9D  20 5B 92  JSR sub_B6_925B               ; 32A9D ×50
  AAA0  A4 8D     LDY $8D                       ; 32AA0 ×50
  AAA2  C0 01     CPY #$01                      ; 32AA2 ×50
  AAA4  F0 04     BEQ $AAAA                     ; 32AA4 ×50
  AAA6  C0 02     CPY #$02                      ; 32AA6 ×50
  AAA8  D0 11     BNE loc_B6_AABB               ; 32AA8 ×50
  AAAA  A9 21     LDA #$21                      ; 32AAA ×0
  AAAC  8D 06 20  STA $2006                     ; 32AAC ×0
  AAAF  BE 99 E1  LDX $E199,Y                   ; 32AAF ×0
  AAB2  B9 9F E1  LDA $E19F,Y                   ; 32AB2 ×0
  AAB5  A8        TAY                           ; 32AB5 ×0
  AAB6  A9 24     LDA #$24                      ; 32AB6 ×0
  AAB8  20 5B 92  JSR sub_B6_925B               ; 32AB8 ×0

loc_B6_AABB:                    ; from 32aa8
  AABB  A4 8D     LDY $8D                       ; 32ABB ×50
  AABD  B9 2F AB  LDA $AB2F,Y                   ; 32ABD ×50
  AAC0  8D 06 20  STA $2006                     ; 32AC0 ×50
  AAC3  B9 33 AB  LDA $AB33,Y                   ; 32AC3 ×50
  AAC6  A2 D4     LDX #$D4                      ; 32AC6 ×50
  AAC8  A0 94     LDY #$94                      ; 32AC8 ×50
  AACA  20 5B 92  JSR sub_B6_925B               ; 32ACA ×50
  AACD  A2 3A     LDX #$3A                      ; 32ACD ×50
  AACF  A0 22     LDY #$22                      ; 32ACF ×50
  AAD1  20 49 A2  JSR sub_B6_A249               ; 32AD1 ×50
  AAD4  A2 6A     LDX #$6A                      ; 32AD4 ×50
  AAD6  20 D9 D6  JSR sub_B6_D6D9               ; 32AD6 ×50
  AAD9  A9 74     LDA #$74                      ; 32AD9 ×50
  AADB  20 A4 E5  JSR sub_B6_E5A4               ; 32ADB ×50
  AADE  A2 83     LDX #$83                      ; 32ADE ×50
  AAE0  A0 D8     LDY #$D8                      ; 32AE0 ×50
  AAE2  A9 01     LDA #$01                      ; 32AE2 ×50
  AAE4  20 65 D7  JSR sub_B6_D765               ; 32AE4 ×50
  AAE7  A5 0D     LDA $0D                       ; 32AE7 ×50
  AAE9  D0 02     BNE loc_B6_AAED               ; 32AE9 ×50
  AAEB  A9 01     LDA #$01                      ; 32AEB ×47

loc_B6_AAED:                    ; from 32ae9
  AAED  85 15     STA $15                       ; 32AED ×50
  AAEF  C9 0A     CMP #$0A                      ; 32AEF ×50
  AAF1  90 08     BCC loc_B6_AAFB               ; 32AF1 ×50
  AAF3  E9 0A     SBC #$0A                      ; 32AF3 ×0
  AAF5  18        CLC                           ; 32AF5 ×0
  AAF6  A0 02     LDY #$02                      ; 32AF6 ×0
  AAF8  8C 07 20  STY $2007                     ; 32AF8 ×0

loc_B6_AAFB:                    ; from 32af1
  AAFB  69 01     ADC #$01                      ; 32AFB ×50
  AAFD  8D 07 20  STA $2007                     ; 32AFD ×50
  AB00  AD 07 20  LDA $2007                     ; 32B00 ×50
  AB03  A9 0D     LDA #$0D                      ; 32B03 ×50
  AB05  8D 07 20  STA $2007                     ; 32B05 ×50
  AB08  AD 07 20  LDA $2007                     ; 32B08 ×50
  AB0B  A5 15     LDA $15                       ; 32B0B ×50
  AB0D  0A        ASL A                         ; 32B0D ×50
  AB0E  85 15     STA $15                       ; 32B0E ×50
  AB10  0A        ASL A                         ; 32B10 ×50
  AB11  0A        ASL A                         ; 32B11 ×50
  AB12  0A        ASL A                         ; 32B12 ×50
  AB13  65 15     ADC $15                       ; 32B13 ×50
  AB15  E9 11     SBC #$11                      ; 32B15 ×50
  AB17  A8        TAY                           ; 32B17 ×50
  AB18  A9 A0     LDA #$A0                      ; 32B18 ×50
  AB1A  99 12 07  STA $0712,Y                   ; 32B1A ×50
  AB1D  A9 00     LDA #$00                      ; 32B1D ×50
  AB1F  85 19     STA $19                       ; 32B1F ×50
  AB21  A9 01     LDA #$01                      ; 32B21 ×50
  AB23  85 15     STA $15                       ; 32B23 ×50
  AB25  A9 07     LDA #$07                      ; 32B25 ×50
  AB27  85 1A     STA $1A                       ; 32B27 ×50
  AB29  20 81 D7  JSR sub_B6_D781               ; 32B29 ×50
  AB2C  4C 7D A8  JMP loc_B6_A87D               ; 32B2C ×50
  AB2F  .byte 20                                                ; 32B2F data, read by 32abd
  AB30  .byte 22 21 20                                          ; 32B30
  AB33  .byte B1                                                ; 32B33 data, read by 32ac3
  AB34  .byte 45 25 65 F1 85 65 A5                              ; 32B34
  AB3B  20 AC 91  JSR sub_B6_91AC               ; 32B3B ×0
  AB3E  20 88 FE  JSR sub_B6_FE88               ; 32B3E ×0
  AB41  20 BD FE  JSR sub_B6_FEBD               ; 32B41 ×0
  AB44  A9 14     LDA #$14                      ; 32B44 ×0
  AB46  20 9B DB  JSR sub_B6_DB9B               ; 32B46 ×0
  AB49  A9 16     LDA #$16                      ; 32B49 ×0
  AB4B  20 9B DB  JSR sub_B6_DB9B               ; 32B4B ×0
  AB4E  A0 04     LDY #$04                      ; 32B4E ×0
  AB50  A9 1A     LDA #$1A                      ; 32B50 ×0
  AB52  20 94 DB  JSR sub_B6_DB94               ; 32B52 ×0
  AB55  A9 10     LDA #$10                      ; 32B55 ×0
  AB57  8D 00 20  STA $2000                     ; 32B57 ×0
  AB5A  A9 16     LDA #$16                      ; 32B5A ×0
  AB5C  8D C9 FF  STA $FFC9                     ; 32B5C ×0
  AB5F  A9 20     LDA #$20                      ; 32B5F ×0
  AB61  8D 06 20  STA $2006                     ; 32B61 ×0
  AB64  A9 84     LDA #$84                      ; 32B64 ×0
  AB66  A2 15     LDX #$15                      ; 32B66 ×0
  AB68  A0 95     LDY #$95                      ; 32B68 ×0
  AB6A  20 5B 92  JSR sub_B6_925B               ; 32B6A ×0
  AB6D  A9 90     LDA #$90                      ; 32B6D ×0
  AB6F  8D 00 20  STA $2000                     ; 32B6F ×0
  AB72  A2 3C     LDX #$3C                      ; 32B72 ×0
  AB74  A0 22     LDY #$22                      ; 32B74 ×0
  AB76  20 49 A2  JSR sub_B6_A249               ; 32B76 ×0
  AB79  A9 E6     LDA #$E6                      ; 32B79 ×0
  AB7B  8D 86 04  STA $0486                     ; 32B7B ×0
  AB7E  A9 80     LDA #$80                      ; 32B7E ×0
  AB80  8D 95 04  STA $0495                     ; 32B80 ×0
  AB83  A9 02     LDA #$02                      ; 32B83 ×0
  AB85  A0 24     LDY #$24                      ; 32B85 ×0
  AB87  4C 08 9D  JMP sub_B6_9D08               ; 32B87 ×0

loc_B6_AB8A:                    ; from 3003f
  AB8A  20 AC 91  JSR sub_B6_91AC               ; 32B8A ×57
  AB8D  20 88 FE  JSR sub_B6_FE88               ; 32B8D ×57
  AB90  20 BD FE  JSR sub_B6_FEBD               ; 32B90 ×57
  AB93  A9 08     LDA #$08                      ; 32B93 ×57
  AB95  A0 04     LDY #$04                      ; 32B95 ×57
  AB97  20 94 DB  JSR sub_B6_DB94               ; 32B97 ×57
  AB9A  A9 44     LDA #$44                      ; 32B9A ×57
  AB9C  20 92 DB  JSR sub_B6_DB92               ; 32B9C ×57
  AB9F  A9 18     LDA #$18                      ; 32B9F ×57
  ABA1  20 9B DB  JSR sub_B6_DB9B               ; 32BA1 ×57
  ABA4  A2 E4     LDX #$E4                      ; 32BA4 ×57
  ABA6  A0 D8     LDY #$D8                      ; 32BA6 ×57
  ABA8  A9 03     LDA #$03                      ; 32BA8 ×57
  ABAA  20 65 D7  JSR sub_B6_D765               ; 32BAA ×57
  ABAD  A2 78     LDX #$78                      ; 32BAD ×57
  ABAF  20 FB D5  JSR sub_B6_D5FB               ; 32BAF ×57
  ABB2  A9 10     LDA #$10                      ; 32BB2 ×57
  ABB4  8D 00 20  STA $2000                     ; 32BB4 ×57
  ABB7  A9 16     LDA #$16                      ; 32BB7 ×57
  ABB9  8D C9 FF  STA $FFC9                     ; 32BB9 ×57
  ABBC  A9 20     LDA #$20                      ; 32BBC ×57
  ABBE  8D 06 20  STA $2006                     ; 32BBE ×57
  ABC1  A9 C2     LDA #$C2                      ; 32BC1 ×57
  ABC3  A2 A9     LDX #$A9                      ; 32BC3 ×57
  ABC5  A0 95     LDY #$95                      ; 32BC5 ×57
  ABC7  20 5B 92  JSR sub_B6_925B               ; 32BC7 ×57
  ABCA  A9 90     LDA #$90                      ; 32BCA ×57
  ABCC  8D 00 20  STA $2000                     ; 32BCC ×57
  ABCF  A2 42     LDX #$42                      ; 32BCF ×57
  ABD1  A0 22     LDY #$22                      ; 32BD1 ×57
  ABD3  20 49 A2  JSR sub_B6_A249               ; 32BD3 ×57
  ABD6  A9 01     LDA #$01                      ; 32BD6 ×57
  ABD8  A0 24     LDY #$24                      ; 32BD8 ×57
  ABDA  20 08 9D  JSR sub_B6_9D08               ; 32BDA ×57
  ABDD  A9 03     LDA #$03                      ; 32BDD ×57
  ABDF  8D 85 05  STA $0585                     ; 32BDF ×57
  ABE2  4C 7D A8  JMP loc_B6_A87D               ; 32BE2 ×57
  ABE5  20 AC 91  JSR sub_B6_91AC               ; 32BE5 ×0
  ABE8  20 88 FE  JSR sub_B6_FE88               ; 32BE8 ×0
  ABEB  20 BD FE  JSR sub_B6_FEBD               ; 32BEB ×0
  ABEE  A9 1A     LDA #$1A                      ; 32BEE ×0
  ABF0  20 9B DB  JSR sub_B6_DB9B               ; 32BF0 ×0
  ABF3  A9 04     LDA #$04                      ; 32BF3 ×0
  ABF5  20 92 DB  JSR sub_B6_DB92               ; 32BF5 ×0
  ABF8  A2 82     LDX #$82                      ; 32BF8 ×0
  ABFA  20 FB D5  JSR sub_B6_D5FB               ; 32BFA ×0
  ABFD  A2 3E     LDX #$3E                      ; 32BFD ×0
  ABFF  A0 22     LDY #$22                      ; 32BFF ×0
  AC01  20 49 A2  JSR sub_B6_A249               ; 32C01 ×0
  AC04  A9 20     LDA #$20                      ; 32C04 ×0
  AC06  8D 06 20  STA $2006                     ; 32C06 ×0
  AC09  A9 AA     LDA #$AA                      ; 32C09 ×0
  AC0B  A9 A8     LDA #$A8                      ; 32C0B ×0
  AC0D  A2 D1     LDX #$D1                      ; 32C0D ×0
  AC0F  A0 95     LDY #$95                      ; 32C0F ×0
  AC11  20 5B 92  JSR sub_B6_925B               ; 32C11 ×0
  AC14  A2 D4     LDX #$D4                      ; 32C14 ×0
  AC16  A0 D8     LDY #$D8                      ; 32C16 ×0
  AC18  A9 01     LDA #$01                      ; 32C18 ×0
  AC1A  20 65 D7  JSR sub_B6_D765               ; 32C1A ×0
  AC1D  A9 FF     LDA #$FF                      ; 32C1D ×0
  AC1F  85 10     STA $10                       ; 32C1F ×0
  AC21  4C 7D A8  JMP loc_B6_A87D               ; 32C21 ×0

loc_B6_AC24:                    ; from 30045
  AC24  20 AC 91  JSR sub_B6_91AC               ; 32C24 ×1
  AC27  A9 00     LDA #$00                      ; 32C27 ×1
  AC29  85 C9     STA $C9                       ; 32C29 ×1
  AC2B  20 88 FE  JSR sub_B6_FE88               ; 32C2B ×1
  AC2E  20 BD FE  JSR sub_B6_FEBD               ; 32C2E ×1
  AC31  A9 0A     LDA #$0A                      ; 32C31 ×1
  AC33  A0 04     LDY #$04                      ; 32C33 ×1
  AC35  20 94 DB  JSR sub_B6_DB94               ; 32C35 ×1
  AC38  A9 04     LDA #$04                      ; 32C38 ×1
  AC3A  20 92 DB  JSR sub_B6_DB92               ; 32C3A ×1
  AC3D  A9 1C     LDA #$1C                      ; 32C3D ×1
  AC3F  20 9B DB  JSR sub_B6_DB9B               ; 32C3F ×1
  AC42  A9 10     LDA #$10                      ; 32C42 ×1
  AC44  8D 00 20  STA $2000                     ; 32C44 ×1
  AC47  A9 16     LDA #$16                      ; 32C47 ×1
  AC49  8D C9 FF  STA $FFC9                     ; 32C49 ×1
  AC4C  20 9E AC  JSR sub_B6_AC9E               ; 32C4C ×1
  AC4F  A2 8D     LDX #$8D                      ; 32C4F ×1
  AC51  A0 D9     LDY #$D9                      ; 32C51 ×1
  AC53  A9 03     LDA #$03                      ; 32C53 ×1
  AC55  20 65 D7  JSR sub_B6_D765               ; 32C55 ×1
  AC58  A9 06     LDA #$06                      ; 32C58 ×1
  AC5A  8D B9 FF  STA $FFB9                     ; 32C5A ×1
  AC5D  A9 90     LDA #$90                      ; 32C5D ×1
  AC5F  8D 00 20  STA $2000                     ; 32C5F ×1
  AC62  20 9E AC  JSR sub_B6_AC9E               ; 32C62 ×1
  AC65  A2 33     LDX #$33                      ; 32C65 ×1
  AC67  A0 D9     LDY #$D9                      ; 32C67 ×1
  AC69  A9 04     LDA #$04                      ; 32C69 ×1
  AC6B  20 65 D7  JSR sub_B6_D765               ; 32C6B ×1
  AC6E  A9 06     LDA #$06                      ; 32C6E ×1
  AC70  8D 2A 04  STA $042A                     ; 32C70 ×1
  AC73  A9 4C     LDA #$4C                      ; 32C73 ×1
  AC75  8D 65 05  STA $0565                     ; 32C75 ×1
  AC78  A9 22     LDA #$22                      ; 32C78 ×1
  AC7A  85 C1     STA $C1                       ; 32C7A ×1
  AC7C  A9 40     LDA #$40                      ; 32C7C ×1
  AC7E  8D DE 04  STA $04DE                     ; 32C7E ×1
  AC81  A9 08     LDA #$08                      ; 32C81 ×1
  AC83  8D ED 04  STA $04ED                     ; 32C83 ×1
  AC86  A9 84     LDA #$84                      ; 32C86 ×1
  AC88  8D 0B 05  STA $050B                     ; 32C88 ×1
  AC8B  A9 03     LDA #$03                      ; 32C8B ×1
  AC8D  85 25     STA $25                       ; 32C8D ×1
  AC8F  85 27     STA $27                       ; 32C8F ×1
  AC91  85 28     STA $28                       ; 32C91 ×1
  AC93  20 D2 A1  JSR sub_B6_A1D2               ; 32C93 ×1
  AC96  A9 0C     LDA #$0C                      ; 32C96 ×1
  AC98  20 47 90  JSR sub_B6_9047               ; 32C98 ×1
  AC9B  4C F0 A7  JMP loc_B6_A7F0               ; 32C9B ×1

sub_B6_AC9E:                    ; from 32c4c 32c62
  AC9E  A2 7E     LDX #$7E                      ; 32C9E ×2
  ACA0  20 FB D5  JSR sub_B6_D5FB               ; 32CA0 ×2
  ACA3  A2 28     LDX #$28                      ; 32CA3 ×2
  ACA5  A0 2A     LDY #$2A                      ; 32CA5 ×2
  ACA7  20 49 A2  JSR sub_B6_A249               ; 32CA7 ×2
  ACAA  A9 22     LDA #$22                      ; 32CAA ×2
  ACAC  8D 06 20  STA $2006                     ; 32CAC ×2
  ACAF  A9 CE     LDA #$CE                      ; 32CAF ×2
  ACB1  A2 11     LDX #$11                      ; 32CB1 ×2
  ACB3  A0 96     LDY #$96                      ; 32CB3 ×2
  ACB5  4C 5B 92  JMP sub_B6_925B               ; 32CB5 ×2
  ACB8  20 AC 91  JSR sub_B6_91AC               ; 32CB8 ×0
  ACBB  20 88 FE  JSR sub_B6_FE88               ; 32CBB ×0
  ACBE  20 BD FE  JSR sub_B6_FEBD               ; 32CBE ×0
  ACC1  A9 00     LDA #$00                      ; 32CC1 ×0
  ACC3  20 E5 DA  JSR sub_B6_DAE5               ; 32CC3 ×0
  ACC6  A9 30     LDA #$30                      ; 32CC6 ×0
  ACC8  20 92 DB  JSR sub_B6_DB92               ; 32CC8 ×0
  ACCB  A2 9A     LDX #$9A                      ; 32CCB ×0
  ACCD  20 FB D5  JSR sub_B6_D5FB               ; 32CCD ×0
  ACD0  A2 44     LDX #$44                      ; 32CD0 ×0
  ACD2  A0 22     LDY #$22                      ; 32CD2 ×0
  ACD4  20 49 A2  JSR sub_B6_A249               ; 32CD4 ×0
  ACD7  A9 20     LDA #$20                      ; 32CD7 ×0
  ACD9  8D 06 20  STA $2006                     ; 32CD9 ×0
  ACDC  A9 88     LDA #$88                      ; 32CDC ×0
  ACDE  A2 64     LDX #$64                      ; 32CDE ×0
  ACE0  A0 96     LDY #$96                      ; 32CE0 ×0
  ACE2  20 5B 92  JSR sub_B6_925B               ; 32CE2 ×0
  ACE5  A9 00     LDA #$00                      ; 32CE5 ×0
  ACE7  85 BD     STA $BD                       ; 32CE7 ×0
  ACE9  A9 01     LDA #$01                      ; 32CE9 ×0
  ACEB  85 CE     STA $CE                       ; 32CEB ×0
  ACED  20 84 E5  JSR sub_B6_E584               ; 32CED ×0
  ACF0  A9 FF     LDA #$FF                      ; 32CF0 ×0
  ACF2  85 10     STA $10                       ; 32CF2 ×0
  ACF4  4C 7D A8  JMP loc_B6_A87D               ; 32CF4 ×0
  ACF7  20 AC 91  JSR sub_B6_91AC               ; 32CF7 ×0
  ACFA  20 88 FE  JSR sub_B6_FE88               ; 32CFA ×0
  ACFD  20 BD FE  JSR sub_B6_FEBD               ; 32CFD ×0
  AD00  A9 10     LDA #$10                      ; 32D00 ×0
  AD02  8D 00 20  STA $2000                     ; 32D02 ×0
  AD05  A9 16     LDA #$16                      ; 32D05 ×0
  AD07  8D C9 FF  STA $FFC9                     ; 32D07 ×0
  AD0A  A9 20     LDA #$20                      ; 32D0A ×0
  AD0C  8D 06 20  STA $2006                     ; 32D0C ×0
  AD0F  A9 00     LDA #$00                      ; 32D0F ×0
  AD11  8D 06 20  STA $2006                     ; 32D11 ×0
  AD14  A9 02     LDA #$02                      ; 32D14 ×0
  AD16  85 15     STA $15                       ; 32D16 ×0
  AD18  A0 40     LDY #$40                      ; 32D18 ×0
  AD1A  A2 FD     LDX #$FD                      ; 32D1A ×0
  AD1C  8E 07 20  STX $2007                     ; 32D1C ×0
  AD1F  E8        INX                           ; 32D1F ×0
  AD20  D0 FA     BNE $AD1C                     ; 32D20 ×0
  AD22  88        DEY                           ; 32D22 ×0
  AD23  D0 F5     BNE $AD1A                     ; 32D23 ×0
  AD25  C6 15     DEC $15                       ; 32D25 ×0
  AD27  D0 F1     BNE $AD1A                     ; 32D27 ×0
  AD29  A2 40     LDX #$40                      ; 32D29 ×0
  AD2B  A9 AA     LDA #$AA                      ; 32D2B ×0
  AD2D  8D 07 20  STA $2007                     ; 32D2D ×0
  AD30  CA        DEX                           ; 32D30 ×0
  AD31  D0 FA     BNE $AD2D                     ; 32D31 ×0
  AD33  A9 06     LDA #$06                      ; 32D33 ×0
  AD35  8D B9 FF  STA $FFB9                     ; 32D35 ×0
  AD38  A9 90     LDA #$90                      ; 32D38 ×0
  AD3A  8D 00 20  STA $2000                     ; 32D3A ×0
  AD3D  A9 02     LDA #$02                      ; 32D3D ×0
  AD3F  20 E5 DA  JSR sub_B6_DAE5               ; 32D3F ×0
  AD42  A9 04     LDA #$04                      ; 32D42 ×0
  AD44  20 E5 DA  JSR sub_B6_DAE5               ; 32D44 ×0
  AD47  A9 30     LDA #$30                      ; 32D47 ×0
  AD49  20 92 DB  JSR sub_B6_DB92               ; 32D49 ×0
  AD4C  A2 00     LDX #$00                      ; 32D4C ×0
  AD4E  20 D9 D6  JSR sub_B6_D6D9               ; 32D4E ×0
  AD51  A2 46     LDX #$46                      ; 32D51 ×0
  AD53  A0 48     LDY #$48                      ; 32D53 ×0
  AD55  20 49 A2  JSR sub_B6_A249               ; 32D55 ×0
  AD58  A9 20     LDA #$20                      ; 32D58 ×0
  AD5A  8D 06 20  STA $2006                     ; 32D5A ×0
  AD5D  A9 84     LDA #$84                      ; 32D5D ×0
  AD5F  A2 C2     LDX #$C2                      ; 32D5F ×0
  AD61  A0 96     LDY #$96                      ; 32D61 ×0
  AD63  20 5B 92  JSR sub_B6_925B               ; 32D63 ×0
  AD66  A9 00     LDA #$00                      ; 32D66 ×0
  AD68  85 BD     STA $BD                       ; 32D68 ×0
  AD6A  85 1E     STA $1E                       ; 32D6A ×0
  AD6C  A9 02     LDA #$02                      ; 32D6C ×0
  AD6E  85 CE     STA $CE                       ; 32D6E ×0
  AD70  20 84 E5  JSR sub_B6_E584               ; 32D70 ×0
  AD73  A9 FF     LDA #$FF                      ; 32D73 ×0
  AD75  85 10     STA $10                       ; 32D75 ×0
  AD77  4C 7D A8  JMP loc_B6_A87D               ; 32D77 ×0
  AD7A  20 AC 91  JSR sub_B6_91AC               ; 32D7A ×0
  AD7D  20 88 FE  JSR sub_B6_FE88               ; 32D7D ×0
  AD80  20 BD FE  JSR sub_B6_FEBD               ; 32D80 ×0
  AD83  A9 06     LDA #$06                      ; 32D83 ×0
  AD85  20 E5 DA  JSR sub_B6_DAE5               ; 32D85 ×0
  AD88  A9 30     LDA #$30                      ; 32D88 ×0
  AD8A  20 92 DB  JSR sub_B6_DB92               ; 32D8A ×0
  AD8D  A9 3A     LDA #$3A                      ; 32D8D ×0
  AD8F  20 92 DB  JSR sub_B6_DB92               ; 32D8F ×0
  AD92  A2 38     LDX #$38                      ; 32D92 ×0
  AD94  20 D9 D6  JSR sub_B6_D6D9               ; 32D94 ×0
  AD97  A2 4A     LDX #$4A                      ; 32D97 ×0
  AD99  A0 48     LDY #$48                      ; 32D99 ×0
  AD9B  20 49 A2  JSR sub_B6_A249               ; 32D9B ×0
  AD9E  A9 20     LDA #$20                      ; 32D9E ×0
  ADA0  8D 06 20  STA $2006                     ; 32DA0 ×0
  ADA3  A9 84     LDA #$84                      ; 32DA3 ×0
  ADA5  A2 3A     LDX #$3A                      ; 32DA5 ×0
  ADA7  A0 97     LDY #$97                      ; 32DA7 ×0
  ADA9  20 5B 92  JSR sub_B6_925B               ; 32DA9 ×0
  ADAC  A9 00     LDA #$00                      ; 32DAC ×0
  ADAE  85 BD     STA $BD                       ; 32DAE ×0
  ADB0  85 1E     STA $1E                       ; 32DB0 ×0
  ADB2  A9 03     LDA #$03                      ; 32DB2 ×0
  ADB4  85 CE     STA $CE                       ; 32DB4 ×0
  ADB6  A5 F4     LDA $F4                       ; 32DB6 ×0
  ADB8  F0 04     BEQ $ADBE                     ; 32DB8 ×0
  ADBA  A9 1C     LDA #$1C                      ; 32DBA ×0
  ADBC  D0 10     BNE $ADCE                     ; 32DBC ×0
  ADBE  A5 0D     LDA $0D                       ; 32DBE ×0
  ADC0  F0 33     BEQ $ADF5                     ; 32DC0 ×0
  ADC2  30 31     BMI $ADF5                     ; 32DC2 ×0
  ADC4  A5 11     LDA $11                       ; 32DC4 ×0
  ADC6  10 12     BPL $ADDA                     ; 32DC6 ×0
  ADC8  A5 12     LDA $12                       ; 32DC8 ×0
  ADCA  10 0E     BPL $ADDA                     ; 32DCA ×0
  ADCC  A9 1B     LDA #$1B                      ; 32DCC ×0
  ADCE  85 BD     STA $BD                       ; 32DCE ×0
  ADD0  20 D1 DA  JSR sub_B6_DAD1               ; 32DD0 ×0
  ADD3  29 03     AND #$03                      ; 32DD3 ×0
  ADD5  85 CE     STA $CE                       ; 32DD5 ×0
  ADD7  4C EC AD  JMP $ADEC                     ; 32DD7 ×0
  ADDA  A9 80     LDA #$80                      ; 32DDA ×0
  ADDC  85 FE     STA $FE                       ; 32DDC ×0
  ADDE  20 D1 DA  JSR sub_B6_DAD1               ; 32DDE ×0
  ADE1  29 03     AND #$03                      ; 32DE1 ×0
  ADE3  85 CE     STA $CE                       ; 32DE3 ×0
  ADE5  A5 0D     LDA $0D                       ; 32DE5 ×0
  ADE7  0A        ASL A                         ; 32DE7 ×0
  ADE8  E9 01     SBC #$01                      ; 32DE8 ×0
  ADEA  85 BD     STA $BD                       ; 32DEA ×0
  ADEC  20 84 E5  JSR sub_B6_E584               ; 32DEC ×0
  ADEF  A9 2A     LDA #$2A                      ; 32DEF ×0
  ADF1  85 BC     STA $BC                       ; 32DF1 ×0
  ADF3  D0 03     BNE $ADF8                     ; 32DF3 ×0
  ADF5  20 84 E5  JSR sub_B6_E584               ; 32DF5 ×0
  ADF8  A2 00     LDX #$00                      ; 32DF8 ×0
  ADFA  86 90     STX $90                       ; 32DFA ×0
  ADFC  86 1B     STX $1B                       ; 32DFC ×0
  ADFE  A9 80     LDA #$80                      ; 32DFE ×0
  AE00  85 17     STA $17                       ; 32E00 ×0
  AE02  A9 77     LDA #$77                      ; 32E02 ×0
  AE04  85 8C     STA $8C                       ; 32E04 ×0
  AE06  A0 0A     LDY #$0A                      ; 32E06 ×0
  AE08  20 3D AA  JSR sub_B6_AA3D               ; 32E08 ×0
  AE0B  20 15 AE  JSR sub_B6_AE15               ; 32E0B ×0
  AE0E  A9 FF     LDA #$FF                      ; 32E0E ×0
  AE10  85 10     STA $10                       ; 32E10 ×0
  AE12  4C 7D A8  JMP loc_B6_A87D               ; 32E12 ×0

sub_B6_AE15:                    ; from 32e0b
  AE15  A5 0B     LDA $0B                       ; 32E15 ×0
  AE17  4A        LSR A                         ; 32E17 ×0
  AE18  4A        LSR A                         ; 32E18 ×0
  AE19  A8        TAY                           ; 32E19 ×0
  AE1A  B9 43 AE  LDA $AE43,Y                   ; 32E1A ×0
  AE1D  F0 04     BEQ $AE23                     ; 32E1D ×0
  AE1F  C9 03     CMP #$03                      ; 32E1F ×0
  AE21  D0 06     BNE $AE29                     ; 32E21 ×0
  AE23  A6 81     LDX $81                       ; 32E23 ×0
  AE25  F0 02     BEQ $AE29                     ; 32E25 ×0
  AE27  A9 05     LDA #$05                      ; 32E27 ×0
  AE29  0A        ASL A                         ; 32E29 ×0
  AE2A  0A        ASL A                         ; 32E2A ×0
  AE2B  85 15     STA $15                       ; 32E2B ×0
  AE2D  0A        ASL A                         ; 32E2D ×0
  AE2E  65 15     ADC $15                       ; 32E2E ×0
  AE30  A8        TAY                           ; 32E30 ×0
  AE31  A2 00     LDX #$00                      ; 32E31 ×0
  AE33  B9 24 E1  LDA $E124,Y                   ; 32E33 ×0
  AE36  9D 01 02  STA $0201,X                   ; 32E36 ×0
  AE39  C8        INY                           ; 32E39 ×0
  AE3A  E8        INX                           ; 32E3A ×0
  AE3B  E8        INX                           ; 32E3B ×0
  AE3C  E8        INX                           ; 32E3C ×0
  AE3D  E8        INX                           ; 32E3D ×0
  AE3E  E0 30     CPX #$30                      ; 32E3E ×0
  AE40  D0 F1     BNE $AE33                     ; 32E40 ×0
  AE42  60        RTS                           ; 32E42 ×0
  AE43  .byte 05 05 00 00 03 05 00 05 03 05 03 00 05 03 00 05   ; 32E43
  AE53  .byte 05 02 02 03 05 00 05 03 05 00 05 00 05 03 05 02   ; 32E53
  AE63  .byte 02 05 05 03 00 03 00 03 00 03 00 05 05 05 04 04   ; 32E63
  AE73  .byte 04 04 04 04 04 04 05 01 01 01 01 01 01 01 01 01   ; 32E73
  AE83  .byte 01 01 01 01 01 01 00 00 00 00                     ; 32E83
  AE8D  .byte F0 F5 FD F4                                       ; 32E8D data, read by 30c8c 30c7e 30c95
  AE91  .byte F0 F5 FD F4                                       ; 32E91
  AE95  .byte F8 F4 04 F3                                       ; 32E95 data, read by 30c7e 30c95
  AE99  .byte ED F0 FB EF                                       ; 32E99
  AE9D  .byte EB ED F8 ED F9 F2 06 F1                           ; 32E9D data, read by 30c7e 30c8c 30c95
  AEA5  .byte FE EE 0A ED FB F4 07 F2                           ; 32EA5
  AEAD  .byte F6 F5 03 F4                                       ; 32EAD data, read by 30c8c 30c95
  AEB1  .byte EE F3 FB F4                                       ; 32EB1
  AEB5  .byte F0 F5 FD F5                                       ; 32EB5 data, read by 30c8c 30c95
  AEB9  .byte FD 01 09 00 F1 F7 FD F6 F4 F7 00 F4 00 00 00 00   ; 32EB9
  AEC9  .byte 00 00 00 00 E8 F9 F4 F9 E7 F8 EF F7 EF EF F7 EE   ; 32EC9
  AED9  .byte 00 00 00 00 EE F2 FB F3 F0 F3 FD F4 00 00 00 00   ; 32ED9
  AEE9  .byte 00 00 00 00 00 00 00 00 F6 EA 03 EB E4 F4 EC F3   ; 32EE9
  AEF9  .byte E9 F5 F1 F4 E6 E2 EE E1 11 F0 19 EF 10 F7 18 F8   ; 32EF9
  AF09  .byte EE F1 FC F2 EF EE FD EF EA F7 F2 F6 E9 F8 F1 F7   ; 32F09
  AF19  .byte EC ED F9 EE                                       ; 32F19 data, read by 30c8c 30c7e 30c95
  AF1D  .byte 00 00 00 00 F0 07 FF 05 EA F9 F9 F9 F3 F6 FE F5   ; 32F1D
  AF2D  .byte E8 F1 F6 F2 EC F4 F9 F5 EF EF 0B EF 0D FD 15 FD   ; 32F2D
  AF3D  .byte EA F8 F2 F7 EC F6 F4 F5 06 F5 0E F4 07 F6 0F F5   ; 32F3D
  AF4D  .byte F9 F9 06 F9 FE FA 0B F9 FE F8 0B F7 0D F9 15 F9   ; 32F4D
  AF5D  .byte 0A F9 12 F8 06 F5 0E F4 07 F8 0F F7 FA F7 09 F8   ; 32F5D
  AF6D  .byte F6 DF 01 DE F0 E4 F8 E4 1B F2 23 F2 04 38 FD 45   ; 32F6D
  AF7D  .byte 04 85 21 BD 15 04 FD 35 04 85 22 A5 0B F5 01 89   ; 32F7D
  AF8D  .byte 2A 0A 18 04 14 0A 10 03 0C 0D 08 05 08 00 04 10   ; 32F8D
  AF9D  .byte 00 08 00 0B F4 01 88 33 0D 10 05 10 0E 08 06 08   ; 32F9D
  AFAD  .byte 00 08 10 00 08 00 01 00 0B FE 01 89 3B 00 18 10   ; 32FAD
  AFBD  .byte 10 08 10 00 10 10 08 08 08 04 08 0C 00 06 00 0F   ; 32FBD
  AFCD  .byte FC 01 8A 44 06 18 00 18 0E 10 06 10 00 10 10 08   ; 32FCD
  AFDD  .byte 08 08 02 08 10 00 08 00                           ; 32FDD
  AFE5  .byte 09 02 01 85 4E 0B 08 04 08 0B 10 08 00 00 00 09   ; 32FE5 data, read by 30d2b 30d4c 30d51 30d56 (+5)
  AFF5  .byte 02 01 86 50 0B 10 08 00 00 00 0F 08 07 08 04 08   ; 32FF5 data, read by 30d4c 30d51 30d56 30d5d (+5)
  B005  .byte 06 0A 01 87 56 08 18 01 18 08 10 00 10 03 08 01   ; 33005
  B015  .byte 08 01 00 10 02 01 87 56 08 18 01 18 08 10 00 10   ; 33015
  B025  .byte 03 08 01 08 01 00 09 02 01 08 50 0B 10 51 08 00   ; 33025
  B035  .byte 52 00 00 67 0F 08 68 17 08 69 1F 07 54 07 08 55   ; 33035
  B045  .byte 04 08 05 03 80 04 F4 00 08 00 F4 06 08 40 F5 00   ; 33045
  B055  .byte 00 00 F5 06 00 40 05 03 80 04 F6 00 08 00 F6 06   ; 33055
  B065  .byte 08 40 F7 00 00 00 F7 06 00 40 05 0B 80 05 F3 03   ; 33065
  B075  .byte 01 01 F4 00 10 00 F4 06 10 40 F5 00 08 00 F5 06   ; 33075
  B085  .byte 08 40 05 0B 80 05 F3 03 01 02 F6 00 10 00 F6 06   ; 33085
  B095  .byte 10 40 F7 00 08 00 F7 06 08 40 03 04 00 01 F3 00   ; 33095
  B0A5  .byte 00 12 0A 01 0C 2A 0A 1C 2B 04 18 2C 0A 14 2D 03   ; 330A5
  B0B5  .byte 10 6B 0D 0C 2F 05 0C 30 00 08 65 10 04 32 08 04   ; 330B5
  B0C5  .byte 63 15 08 64 1D 08 66 16 00 12 09 01 0B 33 0D 14   ; 330C5
  B0D5  .byte 34 05 14 62 0E 0C 63 15 07 64 1D 06 36 06 0C 37   ; 330D5
  B0E5  .byte 00 0C 65 10 04 66 16 01 39 08 04 3A 01 04 12 0F   ; 330E5
  B0F5  .byte 01 0B 3B 00 18 67 10 0D 3D 08 10 3E 00 10 6A 10   ; 330F5
  B105  .byte 08 68 18 0D 69 20 0C 40 08 08 41 04 08 42 0C 00   ; 33105
  B115  .byte 43 06 00 0F 07 03 8C 2A 04 10 0C 10 08 08 10 08   ; 33115
  B125  .byte 14 10 1A 10 00 08 18 08 1E 08 02 00 0A 00 12 00   ; 33125
  B135  .byte 0F 07 03 88 2E 14 10 1A 10 00 08 18 08 1E 08 02   ; 33135
  B145  .byte 00 0A 00 12 00 0B 06 03 89 38 16 10 1E 10 01 08   ; 33145
  B155  .byte 09 08 11 08 19 08 00 02 08 00 10 00 0B 06 03 8B   ; 33155
  B165  .byte 36 06 10 0E 10 16 10 1E 10 01 08 09 08 11 08 19   ; 33165
  B175  .byte 08 00 02 08 00 10 00 0C 03 03 8A 58 06 10 0E 10   ; 33175
  B185  .byte 01 08 09 08 11 08 13 09 00 00 08 00 10 00 13 01   ; 33185
  B195  .byte 0C 07 02 03 D5 00 00 D5 08 04 D5 0E 07 04 07 02   ; 33195 data, read by 30d39 30d2b 30d4c 30d51 (+8)
  B1A5  .byte 02 D0 00 00 D0 00 08 07 0F 80 04 D0 03 08 02 D0   ; 331A5 data, read by 30d5d 30dcb 30dd1 30ddf (+8)
  B1B5  .byte 03 10 02 A4 00 18 02 A4 00 00 82 06 07 02 02 D4   ; 331B5 data, read by 30e19 30e24 30e30 30e10 (+7)
  B1C5  .byte 00 00 D4 04 08 0B 04 02 03 DA 00 00 DA 08 00 DA   ; 331C5 data, read by 30e19 30dd1 30e24 30ddf (+7)
  B1D5  .byte 10 00 1B E7 02 03 DB 14 0B D5 08 04 D5 00 00      ; 331D5 data, read by 30dd1 30ddf 30d39 30d2b (+8)
  B1E4  .byte EF ED 02 03 D5 00 00 D5 08 04 D5 10 08            ; 331E4
  B1F1  .byte F0 FB 80 03 D5 00 03 42 DC 08 00 02 DD 10 00 02   ; 331F1 data, read by 30d39 30d2b 30d4c 30d51 (+10)
  B201  .byte 16 F9 80 0B E0 00 1D 02 DF 08 20 02 DE 10 27 02   ; 33201 data, read by 30d39 30d2b 30d4c 30d51 (+10)
  B211  .byte E2 18 25 02 E2 20 24 02 DE 28 27 42 DF 30 20 42   ; 33211 data, read by 30dcb 30e10 30dd1 30e19 (+4)
  B221  .byte E0 38 1D 42 E1 3F 15 02 E1 3F 0D 82 E0 38 05 C2   ; 33221 data, read by 30dcb 30e10 30dd1 30e19 (+4)
  B231  .byte 16 F9 80 07 E0 00 1D 02 DF 08 20 02 DE 10 27 02   ; 33231
  B241  .byte E2 18 25 02 E2 20 24 02 DE 28 27 42 DF 30 20 42   ; 33241
  B251  .byte 00 00 80 97 34 18 38 00 08 30 00 10 30 00 00 2B   ; 33251 data, read by 30d39 30d4c 30d51 30d56 (+5)
  B261  .byte 00 08 28 00 18 28 01 20 28 01 28 28 00 10 20 00   ; 33261 data, read by 30deb 30dd1 30ddf
  B271  .byte 28 20 00 10 18 00 30 1B 00 28 18 00 10 10 00 18   ; 33271 data, read by 30dd1 30ddf 30deb
  B281  .byte 10 01 28 10 00 30 13 00 21 08 00 29 08 00 31 0B   ; 33281 data, read by 30ddf 30deb 30dd1
  B291  .byte 00 33 03 00 19 00 00 21 00 00 00 00 80 90 4B 00   ; 33291 data, read by 30deb 30dd1 30ddf 30d39 (+5)
  B2A1  .byte 20 02 08 20 02 10 20 02 18 20 02 00 18 02 08 18   ; 332A1 data, read by 30ddf 30deb 30dd1
  B2B1  .byte 02 10 18 02 18 18 02 0C 10 02 14 10 02 0E 08 02   ; 332B1 data, read by 30deb 30dd1 30ddf
  B2C1  .byte 16 08 02 1E 08 02 09 00 02 11 00 02 0C 16 03 00   ; 332C1 data, read by 30dd1 30ddf 30deb 30d39
  B2D1  .byte 00 80 99 5B 0A 30 02 12 30 02 1A 30 02 22 30 02   ; 332D1 data, read by 30d4c 30d51 30d56 30d5d (+4)
  B2E1  .byte 1C 28 02 24 28 02 00 18 01 20 18 02 28 18 02 00   ; 332E1 data, read by 30dd1 30ddf 30deb
  B2F1  .byte 10 01 08 10 01 20 10 02 28 10 02 00 08 01 08 08   ; 332F1 data, read by 30ddf 30deb 30dd1
  B301  .byte 01 20 08 02 28 08 02 30 08 02 38 08 02 00 00 01   ; 33301 data, read by 30deb 30dd1 30ddf
  B311  .byte 08 00 01 20 00 02 28 00 02 30 00 02 38 00 02      ; 33311 data, read by 30dd1 30ddf 30deb
  B320  .byte 00 00 02 06 00 08 08 08 10 08 00 00 08 00 10 00   ; 33320
  B330  .byte 08 00 02 82 E3 00 00 08 00 08 00 02 04 E3 00 08   ; 33330 data, read by 30d39 30d4c 30d51 30d56 (+5)
  B340  .byte E4 08 08 E8 00 00 E9 08 00 08 00 02 06 E3 00 10   ; 33340 data, read by 30dcb 30dd1 30ddf 30d39 (+4)
  B350  .byte E4 08 10 E5 00 08 E6 08 08 E8 00 00 E9 08 00 08   ; 33350 data, read by 30dcb 30dd1 30ddf 30d39
  B360  .byte 00 02 08 E3 00 18 E4 08 18 E5 00 10 E6 08 10 E5   ; 33360 data, read by 30d4c 30d51 30d56 30d5d (+3)
  B370  .byte 00 08 E6 08 08 E8 00 00 E9 08 00 08 00 02 0A E3   ; 33370 data, read by 30dd1 30ddf 30dcb 30d39 (+4)
  B380  .byte 00 20 E4 08 20 E5 00 18 E6 08 18 E5 00 10 E6 08   ; 33380 data, read by 30dd1 30ddf 30dcb
  B390  .byte 10 E5 00 08 E6 08 08 E8 00 00 E9 08 00 08 00 02   ; 33390 data, read by 30ddf 30dcb 30dd1 30d39 (+3)
  B3A0  .byte 0C E3 00 28 E4 08 28 E5 00 20 E6 08 20 E5 00 18   ; 333A0 data, read by 30d5d 30dcb 30dd1 30ddf
  B3B0  .byte E6 08 18 E5 00 10 E6 08 10 E5 00 08 E6 08 08 E8   ; 333B0 data, read by 30dcb 30dd1 30ddf
  B3C0  .byte 00 00 E9 08 00                                    ; 333C0 data, read by 30dd1 30ddf 30dcb
  B3C5  .byte 06 08 02 8C 4C 00 28 08 28 00 20 08 20 00 18 08   ; 333C5
  B3D5  .byte 18 00 10 08 10 00 08 08 08 00 00 08 00 0B 05 02   ; 333D5
  B3E5  .byte 8B A2 08 18 10 18 00 10 08 10 10 10 00 08 08 08   ; 333E5
  B3F5  .byte 10 08 00 00 08 00 10 00 0C 0C 02 0E 4C 00 28 4D   ; 333F5
  B405  .byte 08 28 4E 00 20 4F 08 20 54 00 18 4C 08 18 4D 10   ; 33405
  B415  .byte 18 56 00 10 4E 08 10 4F 10 10 54 08 08 51 10 08   ; 33415
  B425  .byte 56 08 00 57 10 00                                 ; 33425
  B42B  .byte 08 14 02 04 29 00 00 29 00 10 29 00 20 29 00 30   ; 3342B data, read by 30d39 30d4c 30d51 30d56 (+4)
  B43B  .byte 0C 20 03 12 4C 00 40 4D 08 40 4E 00 38 4F 08 38   ; 3343B
  B44B  .byte 54 00 30 4C 08 30 4D 10 30 56 00 28 4E 08 28 4F   ; 3344B
  B45B  .byte 10 28 54 08 20 51 10 20 56 08 18 57 10 18 75 00   ; 3345B
  B46B  .byte 18 75 04 10 75 08 08 75 0C 00 06 08 02 08 4C 00   ; 3346B
  B47B  .byte 18 4D 08 18 4E 00 10 4F 08 10 54 00 08 55 08 08   ; 3347B
  B48B  .byte 56 00 00 57 08 00 0B 05 02 8B 41 08 18 10 18 00   ; 3348B
  B49B  .byte 10 08 10 10 10 00 08 08 08 10 08 00 00 08 00 10   ; 3349B
  B4AB  .byte 00 14 16 03 0C 62 00 38 63 08 38 64 00 30 65 08   ; 334AB
  B4BB  .byte 30 66 00 28 67 08 28 62 14 10 63 1C 10 64 14 08   ; 334BB
  B4CB  .byte 65 1C 08 66 14 00 67 1C 00 0C 16 02 04 74 00 30   ; 334CB
  B4DB  .byte 74 04 28 74 08 20 74 0C 18 08 08 02 86 A0 06 18   ; 334DB
  B4EB  .byte 0E 18 04 10 08 10 03 08 00 00 0D 04 FF 0F 2A 03   ; 334EB
  B4FB  .byte 20 01 2B 0A 20 01 2C 00 18 03 2D 08 18 03 2E 0F   ; 334FB
  B50B  .byte 18 03 2F 00 10 03 30 02 10 03 31 0A 10 03 32 12   ; 3350B
  B51B  .byte 10 03 33 00 08 03 34 08 08 03 35 10 08 03 36 02   ; 3351B
  B52B  .byte 00 03 37 07 00 03 55 0F 00 03 14 04 FF 8C 38 0A   ; 3352B
  B53B  .byte 10 03 12 10 01 1A 10 01 05 08 03 0D 08 03 15 08   ; 3353B
  B54B  .byte 01 1D 08 01 00 00 03 08 00 03 10 00 03 18 00 03   ; 3354B
  B55B  .byte 20 00 03 13 03 FF 91 44 09 20 01 10 20 01 03 18   ; 3355B
  B56B  .byte 03 0B 18 03 13 18 03 1B 18 03 00 14 03 05 10 03   ; 3356B
  B57B  .byte 0D 10 03 15 10 03 1D 10 03 09 08 03 0F 08 03 17   ; 3357B
  B58B  .byte 08 03 1F 08 03 0C 00 03 12 00 03 0D 04 FF 92 68   ; 3358B
  B59B  .byte 10 20 01 18 20 01 01 18 03 09 18 03 11 18 03 19   ; 3359B
  B5AB  .byte 18 03 1F 16 03 01 10 03 09 10 03 11 10 03 19 10   ; 335AB
  B5BB  .byte 03 04 08 03 0C 08 03 14 08 03 00 06 03 02 00 03   ; 335BB
  B5CB  .byte 0A 00 03 12 00 03 0A 03 03 89 7A 02 10 0A 10 0E   ; 335CB
  B5DB  .byte 10 00 08 08 08 0F 08 00 00 08 00 0F 00 0D 05 03   ; 335DB
  B5EB  .byte 8B 83 01 10 09 10 11 10 13 10 00 08 08 08 10 08   ; 335EB
  B5FB  .byte 14 08 03 00 0B 00 13 00 0D 05 03 8C 8E 00 10 08   ; 335FB
  B60B  .byte 10 10 10 16 10 00 08 08 08 10 08 16 08 00 00 08   ; 3360B
  B61B  .byte 00 10 00 15 00                                    ; 3361B
  B620  .byte 04 08 03 83 9A 00 10 00 08 00 00                  ; 33620 data, read by 30d39 30d4c 30d51 30d56 (+4)
  B62B  .byte 08 0C 03 88 9D 00 20 08 20 01 18 08 18 03 10 06   ; 3362B
  B63B  .byte 10 05 08 05 00 08 08 FF 04 A5 00 08 03 A5 08 08   ; 3363B
  B64B  .byte 43 A6 00 00 03 A6 08 00 43 05 05 03 84 AC 01 08   ; 3364B
  B65B  .byte 03 08 00 00 04 00 03 03 03 81 57 00 00 03 03 03   ; 3365B
  B66B  .byte 81 58 00 00 04 04 03 82 59 02 02 00 00 06 06 03   ; 3366B
  B67B  .byte 84 5B 00 08 06 08 00 00 06 00 08 07 03 88 B6 04   ; 3367B
  B68B  .byte 10 06 10 00 08 08 08 0A 08 00 00 08 00 0A 00 0C   ; 3368B
  B69B  .byte 08 03 89 5F 00 10 08 10 10 10 00 08 08 08 10 08   ; 3369B
  B6AB  .byte 00 00 08 00 10 00 0C 0C FF 0A CF 00 08 02 D0 08   ; 336AB
  B6BB  .byte 08 02 D1 10 08 02 D0 18 08 42 CF 20 08 42 D2 00   ; 336BB
  B6CB  .byte 00 02 D3 08 00 02 D4 10 00 02 D3 18 00 42 D2 20   ; 336CB
  B6DB  .byte 00 42 08 08 03 85 A7 00 08 08 08 0C 06 02 00 0A   ; 336DB
  B6EB  .byte 00 0C 00 03 86 B0 01 08 04 08 0C 08 00 00 08 00   ; 336EB
  B6FB  .byte 0F 00 0A 02 03 8F 2A 03 20 08 20 10 20 03 18 08   ; 336FB
  B70B  .byte 18 10 18 00 10 04 10 0C 10 00 08 05 08 0D 08 00   ; 3370B
  B71B  .byte 00 05 00 0D 00 0A 03 03 0E 2A 03 20 2B 08 20 2C   ; 3371B
  B72B  .byte 10 20 2D 03 18 2E 08 18 2F 10 18 39 00 10 3A 07   ; 3372B
  B73B  .byte 10 3B 0F 10 3C 00 08 3D 07 08 3E 0F 08 3F 02 00   ; 3373B
  B74B  .byte 40 0A 00 0A 03 FF 0E 2A 03 00 83 2B 08 00 83 2C   ; 3374B
  B75B  .byte 10 00 83 2D 03 08 83 2E 08 08 83 2F 10 08 83 39   ; 3375B
  B76B  .byte 00 10 83 3A 07 10 83 3B 0F 10 83 3C 00 18 83 3D   ; 3376B
  B77B  .byte 07 18 83 3E 0F 18 83 3F 02 20 83 40 0A 20 83 0C   ; 3377B
  B78B  .byte 03 03 0F 2A 05 20 2B 0A 20 2C 12 20 2D 05 18 2E   ; 3378B
  B79B  .byte 0A 18 2F 12 18 41 05 10 42 0B 10 43 04 08 44 07   ; 3379B
  B7AB  .byte 08 45 0F 08 46 00 00 47 03 00 48 0B 00 49 13 00   ; 337AB
  B7BB  .byte 08 18 03 0C BE 00 28 BF 08 28 C0 00 20 C1 08 20   ; 337BB
  B7CB  .byte C2 00 18 C3 08 18 C0 00 10 C1 08 10 C2 00 08 C3   ; 337CB
  B7DB  .byte 08 08 C4 00 00 C5 08 00 0C 06 00 89 C6 02 10 0A   ; 337DB
  B7EB  .byte 10 0D 10 00 08 08 08 10 08 00 00 08 00 10 00      ; 337EB
  B7FA  .byte 0C 04 01 83 2A 00 00 08 00 10 00                  ; 337FA data, read by 30d39 30d4c 30d51 30d56 (+4)
  B805  .byte 0C 0C 01 84 2D 00 08 08 08 10 08 08 00 0C 0C FF   ; 33805
  B815  .byte 06 3A 00 08 02 3B 08 08 02 3A 10 08 42 3A 00 00   ; 33815
  B825  .byte 81 3B 08 00 81 3A 10 00 C1 0C 0A FF 06 3C 00 08   ; 33825
  B835  .byte 02 3D 08 08 02 3C 10 08 42 3E 00 00 01 3F 08 00   ; 33835
  B845  .byte 01 3E 10 00 41 0C 08 02 89 31 00 10 08 10 0D 10   ; 33845
  B855  .byte 00 08 08 08 10 08 00 00 08 00 10 00 08 07 02 84   ; 33855
  B865  .byte 40 00 08 08 08 00 00 08 00                        ; 33865
  B86E  .byte 00 05 FF 06 4A 00 10 01 4B 00 08 01 4A 20 10 41   ; 3386E data, read by 30d39 30d4c 30d51 30d56 (+5)
  B87E  .byte 4B 20 08 41 68 00 00 00 68 20 00 00               ; 3387E data, read by 30dcb 30dd1 30ddf 30deb
  B88A  .byte 00 05 FF 09 4A 00 10 01 4B 00 08 01 4A 20 10 41   ; 3388A
  B89A  .byte 4B 20 08 41 68 00 00 00 68 20 00 00 A5 08 0C 01   ; 3389A
  B8AA  .byte A5 10 0C 01 A5 18 0C 01 00 05 FF 07 4A 00 10 02   ; 338AA
  B8BA  .byte 4B 00 08 02 4A 20 10 42 4B 20 08 42 68 00 00 00   ; 338BA
  B8CA  .byte 68 20 00 00 A5 10 0C 01                           ; 338CA
  B8D2  .byte 00 00 02 01 A5 00 00                              ; 338D2 data, read by 30d39 30d4c 30d51 30d56 (+4)
  B8D9  .byte 0C 04 00 89 B6 00 10 08 10 10 10 00 08 08 08 10   ; 338D9
  B8E9  .byte 08 00 00 08 00 10 00                              ; 338E9
  B8F0  .byte 08 02 03 8A 82 00 00 08 00 08 20 02 18 09 18 00   ; 338F0 data, read by 30d2b 30d39 30d4c 30d51 (+7)
  B900  .byte 10 02 10 0A 10 00 08 08 08 0A 02 03 8A 82 00 00   ; 33900 data, read by 30e24 30ddf 30e19 30dd1 (+6)
  B910  .byte 07 00 05 20 00 18 06 18 00 10 00 10 05 10 00 08   ; 33910 data, read by 30e19 30e24
  B920  .byte 06 08 06 07 03 8C 84 08 28 02 20 09 20 00 18 02   ; 33920 data, read by 30e19 30e24 30d2b 30d39 (+7)
  B930  .byte 18 0A 18 00 10 08 10 00 08 08 08 00 00 08 00 06   ; 33930 data, read by 30e24 30ddf 30e19 30dd1 (+2)
  B940  .byte FF 03 89 90 0D 18 02 10 0A 10 12 10 00 08 06 08   ; 33940 data, read by 30d4c 30d51 30d56 30d5d (+5)
  B950  .byte 0E 08 00 00 07 00 0C 03 03 87 99 08 10 0D 10 05   ; 33950 data, read by 30dd1 30e19 30ddf 30e24 (+7)
  B960  .byte 08 0D 08 00 01 06 00 0E 00                        ; 33960 data, read by 30e24 30ddf 30e19 30dd1
  B969  .byte 16 07 03 8E BF 05 18 04 10 0C 10 14 10 1C 10 20   ; 33969
  B979  .byte 10 00 08 08 08 10 08 18 08 20 08 27 0B 0B 00 13   ; 33979
  B989  .byte 00                                                ; 33989
  B98A  .byte 0C 0E 02 86 85 00 08 08 08 10 08 00 00 08 00 10   ; 3398A data, read by 30d39 30d4c 30d51 30d56 (+4)
  B99A  .byte 00                                                ; 3399A data, read by 30ddf
  B99B  .byte 16 07 03 0A BF 05 18 C0 04 10 C3 1C 10 C4 20 10   ; 3399B
  B9AB  .byte C5 00 08 C6 08 08 C9 20 08 CA 27 0B CB 0B 00 CC   ; 339AB
  B9BB  .byte 13 00                                             ; 339BB
  B9BD  .byte 0A 17 03 96 2A 00 20 08 20 10 20 14 20 00 18 08   ; 339BD data, read by 30d39 30d4c 30d51 30d56 (+4)
  B9CD  .byte 18 10 18 18 18 1A 18 00 10 08 10 10 10 18 10 1E   ; 339CD data, read by 30ddf 30dd1
  B9DD  .byte 10 00 08 08 08 10 08 18 08 1D 08 0B 00 10 00 18   ; 339DD data, read by 30ddf 30dd1
  B9ED  .byte 00 11 02 03 93 59 07 28 0F 28 17 28 00 20 08 20   ; 339ED data, read by 30ddf 30d39 30d4c 30d51 (+4)
  B9FD  .byte 10 20 18 20 01 18 09 18 11 18 19 18 01 10 09 10   ; 339FD data, read by 30dd1 30ddf
  BA0D  .byte 11 10 19 10 01 08 09 08 11 08 19 08               ; 33A0D data, read by 30dd1 30ddf
  BA19  .byte 11 16 FF 93 59 07 00 83 0F 00 83 17 00 83 00 08   ; 33A19
  BA29  .byte 83 08 08 83 10 08 83 18 08 83 01 10 83 09 10 83   ; 33A29
  BA39  .byte 11 10 83 19 10 83 01 18 83 09 18 83 11 18 83 19   ; 33A39
  BA49  .byte 18 83 01 20 83 09 20 83 11 20 83 19 20 83         ; 33A49
  BA57  .byte 0F 0F FF 8B 43 08 18 03 10 18 03 00 14 02 08 10   ; 33A57 data, read by 30d39 30d4c 30d51 30d56 (+5)
  BA67  .byte 03 10 10 03 00 0C 02 08 08 03 10 08 03 00 04 02   ; 33A67 data, read by 30deb 30dd1 30ddf
  BA77  .byte 08 00 03 10 00 03 10 01 FF 8B 4E 00 10 03 08 10   ; 33A77 data, read by 30dd1 30ddf 30deb 30d39 (+5)
  BA87  .byte 03 10 10 03 18 10 03 00 08 03 08 08 03 10 08 03   ; 33A87 data, read by 30deb 30dd1 30ddf
  BA97  .byte 18 08 03 04 00 02 0C 00 02 14 00 02               ; 33A97 data, read by 30dd1 30ddf 30deb
  BAA3  .byte 10 01 FF 8B 4E 00 00 83 08 00 83 10 00 83 18 00   ; 33AA3
  BAB3  .byte 83 00 08 83 08 08 83 10 08 83 18 08 83 04 10 82   ; 33AB3
  BAC3  .byte 0C 10 82 14 10 82                                 ; 33AC3
  BAC9  .byte 08 12 02 05 40 00 20 41 00 18 41 00 10 41 00 08   ; 33AC9 data, read by 30d39 30d4c 30d51 30d56 (+4)
  BAD9  .byte 42 00 00                                          ; 33AD9 data, read by 30dcb 30dd1 30ddf
  BADC  .byte 08 12 02 05 40 08 20 41 08 18 41 08 10 41 08 08   ; 33ADC
  BAEC  .byte 42 08 00 14 05 02 05 6C 00 00 6D 08 00 6D 10 00   ; 33AEC
  BAFC  .byte 6D 18 00 6E 20 00 0C 04 FF 89 6F 00 00 02 08 00   ; 33AFC
  BB0C  .byte 02 10 00 02 04 1C 01 0C 1C 01 04 14 01 0C 14 01   ; 33B0C
  BB1C  .byte 04 0C 01 0C 0C 01 08 00 FF 88 72 00 10 01 08 10   ; 33B1C
  BB2C  .byte 01 00 08 01 08 08 01 00 00 01 08 00 01 00 1C 02   ; 33B2C
  BB3C  .byte 08 1C 02                                          ; 33B3C
  BB3F  .byte 00 00 03 82 15 00 00 08 00 00 00 00 85 17 00 14   ; 33B3F data, read by 30d39 30d4c 30d51 30d56 (+4)
  BB4F  .byte 00 0C 00 04 08 00 10 00 00 00 21 84 1C 00 00 08   ; 33B4F data, read by 30dd1 30ddf 30d39 30d4c (+4)
  BB5F  .byte 00 10 00 18 00 00 00 21 85 20 07 08 0F 08 17 08   ; 33B5F data, read by 30ddf 30dd1 30d39 30d4c (+4)
  BB6F  .byte 00 00 08 00 00 10 FF 0D 25 00 20 02 26 03 20 02   ; 33B6F data, read by 30dd1 30ddf 30d39 30d4c (+5)
  BB7F  .byte 27 00 18 02 28 02 18 02 29 02 10 02 2A 00 28 03   ; 33B7F data, read by 30dcb 30dd1 30ddf 30deb
  BB8F  .byte 2A 00 30 03 2A 00 38 03 2A 00 40 03 2A 00 48 03   ; 33B8F data, read by 30dcb 30dd1 30ddf 30deb
  BB9F  .byte 2A 00 50 03 2A 00 58 03 2A 00 60 03               ; 33B9F data, read by 30dcb 30dd1 30ddf 30deb
  BBAB  .byte 0D 03 FF 8C 68 03 10 01 0B 10 01 13 10 01 16 10   ; 33BAB
  BBBB  .byte 01 00 08 03 08 08 01 10 08 01 18 08 03 00 00 03   ; 33BBB
  BBCB  .byte 08 00 03 10 00 03 18 00 03 0C 04 03 87 76 08 10   ; 33BCB
  BBDB  .byte 00 0A 08 08 10 08 00 02 08 00 10 00               ; 33BDB
  BBE7  .byte 06 04 02 84 7D 00 08 06 08 00 00 06 00            ; 33BE7 data, read by 30d39 30d4c 30d51 30d56 (+4)
  BBF4  .byte 08 00 43 84 6C 08 10 00 10 08 08 00 08 08 00 02   ; 33BF4
  BC04  .byte 84 70 00 10 08 10 00 08 08 08 0B 08 02 84 74 00   ; 33C04
  BC14  .byte 08 07 08 01 00 09 00 05 01 02 85 5D 02 08 0A 08   ; 33C14
  BC24  .byte 00 05 03 00 0B 00 02 05 02 87 78 03 10 0A 10 00   ; 33C24
  BC34  .byte 08 02 08 0A 08 01 00 09 00 08 02 02 82 80 00 00   ; 33C34
  BC44  .byte 08 00 11 03 03 8D 82 09 18 10 18 00 10 04 10 0C   ; 33C44
  BC54  .byte 10 14 10 02 08 07 08 0F 08 17 08 05 00 0D 00 15   ; 33C54
  BC64  .byte 00 13 09 03 92 8F 0A 20 12 20 04 18 07 18 0F 18   ; 33C64
  BC74  .byte 17 18 00 10 03 10 0B 10 13 10 1B 10 00 08 04 08   ; 33C74
  BC84  .byte 0C 08 14 08 1C 08 09 00 0E 00 15 04 03 8F A1 07   ; 33C84
  BC94  .byte 18 0B 18 13 18 04 10 0A 10 12 10 1A 10 02 08 0A   ; 33C94
  BCA4  .byte 08 12 08 1A 08 00 06 03 00 0B 00 13 00 13 06 03   ; 33CA4
  BCB4  .byte 8F B0 07 18 0D 18 15 18 02 10 07 10 0F 10 17 10   ; 33CB4
  BCC4  .byte 01 08 07 08 0F 08 17 08 00 00 08 00 0B 00 13 00   ; 33CC4
  BCD4  .byte 0B 10 FF 87 4C 03 10 02 0B 10 02 03 08 01 0B 08   ; 33CD4
  BCE4  .byte 01 00 00 01 08 00 01 0E 00 01 0B 10 FF 87 53 03   ; 33CE4
  BCF4  .byte 10 02 0B 10 02 03 08 02 0B 08 02 00 00 01 08 00   ; 33CF4
  BD04  .byte 01 0E 00 01                                       ; 33D04
  BD08  .byte 0D 03 03 88 5A 02 10 0A 10 12 0D 00 08 08 08 10   ; 33D08 data, read by 30d39 30d4c 30d51 30d56 (+4)
  BD18  .byte 08 06 00 0C 00 0C 03 03 88 60 05 00 0B 00 00 10   ; 33D18 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  BD28  .byte 08 10 10 10 00 08 08 08 10 08                     ; 33D28 data, read by 30dd1 30ddf
  BD32  .byte 0B 04 02 86 69 00 08 08 08 0F 08 00 00 07 00 0F   ; 33D32
  BD42  .byte 00 0A 04 02 87 6F 06 10 0B 10 00 08 08 08 0D 08   ; 33D42
  BD52  .byte 00 00 08 00 0B 10 02 88 76 04 10 0B 10 00 08 08   ; 33D52
  BD62  .byte 08 10 08 01 00 09 00 11 00 0B 00 FF 88 76 04 00   ; 33D62
  BD72  .byte 82 0B 00 82 00 08 82 08 08 82 10 08 82 01 10 82   ; 33D72
  BD82  .byte 09 10 82 11 10 82 0B 0B 03 86 7E 00 10 08 10 00   ; 33D82
  BD92  .byte 08 08 08 00 00 08 00 0B 0B 03 86 9D 00 10 08 10   ; 33D92
  BDA2  .byte 00 08 08 08 00 00 08 00 0C 08 03 83 84 00 08 08   ; 33DA2
  BDB2  .byte 04 00 00 06 04 02 82 87 00 00 08 00 0A 07 02 84   ; 33DB2
  BDC2  .byte 89 08 08 00 04 10 04 08 00 0E 07 02 85 8D 08 08   ; 33DC2
  BDD2  .byte 10 08 00 04 08 00 10 00 0B 07 02 86 97 00 08 06   ; 33DD2
  BDE2  .byte 08 0E 08 00 00 06 00 0E 00 0C 0E 02 85 92 00 10   ; 33DE2
  BDF2  .byte 10 10 00 08 10 08 08 00 04 04 02 81 A3 00 00 04   ; 33DF2
  BE02  .byte 04 02 81 AB 00 00 04 04 02 81 BD 00 00 08 01 00   ; 33E02
  BE12  .byte 84 A6 00 08 08 08 00 00 08 00 08 01 00 84 AA 00   ; 33E12
  BE22  .byte 08 08 08 00 00 08 00 08 01 00 84 AE 00 08 08 08   ; 33E22
  BE32  .byte 00 00 08 00 08 01 00 84 B2 00 08 08 08 00 00 08   ; 33E32
  BE42  .byte 00 04 01 FF 02 BF 00 00 82 BF 00 08 02            ; 33E42
  BE4F  .byte 0B 05 00 8B 76 05 18 0C 18 04 10 0A 10 12 10 02   ; 33E4F data, read by 30d2b 30d39 30d4c 30d51 (+7)
  BE5F  .byte 08 0A 08 12 08 00 00 06 00 0E 00 07 04 00 8A 81   ; 33E5F data, read by 30e24 30ddf 30e19 30dd1 (+7)
  BE6F  .byte 01 18 08 18 00 10 08 10 0E 10 00 08 04 08 08 08   ; 33E6F data, read by 30e19 30dd1 30e24 30ddf
  BE7F  .byte 02 00 04 00 0C 05 00 8B 8B 06 18 0C 18 04 10 0B   ; 33E7F data, read by 30e19 30dd1 30e24 30ddf (+7)
  BE8F  .byte 10 13 10 04 08 0B 08 13 08 00 00 08 00 10 00      ; 33E8F data, read by 30ddf 30e24 30dd1 30e19
  BE9E  .byte 0D 05 00 93 63 09 20 10 20 18 20 07 18 0F 18 13   ; 33E9E
  BEAE  .byte 18 1B 18 04 10 09 10 11 10 19 10 04 08 09 08 11   ; 33EAE
  BEBE  .byte 08 19 08 00 00 08 00 10 00 18 00 0C 07 00 90 53   ; 33EBE
  BECE  .byte 0A 20 0D 20 03 18 08 18 10 18 00 10 04 10 0C 10   ; 33ECE
  BEDE  .byte 14 10 00 08 04 08 0C 08 14 08 03 00 0B 00 13 00   ; 33EDE
  BEEE  .byte 15 06 00 8F 44 0D 20 10 20 00 18 03 18 0B 18 13   ; 33EEE data, read by 30d39 30d4c 30d51 30d56 (+4)
  BEFE  .byte 18 04 10 0C 10 14 10 0D 08 13 08 1B 08 0F 00 12   ; 33EFE data, read by 30ddf 30dd1
  BF0E  .byte 00 1A 00 0A 04 00 8A BE 06 10 0E 10 16 10 00 08   ; 33F0E data, read by 30ddf 30dd1 30d39 30d2b (+7)
  BF1E  .byte 06 08 0E 08 16 08 00 00 08 00 0E 00               ; 33F1E data, read by 30dd1 30e19 30ddf 30e24
  BF2A  .byte 11 09 00 8A 96 05 10 0D 10 15 10 00 0E 05 08 0D   ; 33F2A
  BF3A  .byte 08 15 08 06 00 0A 00 12 00 17 03 00 8B A0 03 10   ; 33F3A
  BF4A  .byte 0B 10 13 10 00 09 04 08 0C 08 14 08 00 01 03 00   ; 33F4A
  BF5A  .byte 0B 00 13 00                                       ; 33F5A
  BF5E  .byte 0B 03 02 03 D7 10 20 D6 00 20 D6 08 20            ; 33F5E data, read by 30b41
  BF6B  .byte 0B 06 02 03 E5 00 23 E5 08 21 D7 10 20 09 06 FF   ; 33F6B
  BF7B  .byte 03 D5 00 25 82 D5 08 21 82 D8 0C 20 02 06 08 02   ; 33F7B
  BF8B  .byte 02 E4 00 27 D9 06 20 04 0A 02 02 D0 00 28 E3 01   ; 33F8B
  BF9B  .byte 20 14 14 00 91 AC 00 30 08 30 00 28 08 28 00 20   ; 33F9B
  BFAB  .byte 08 20 10 20 00 18 08 18 10 18 00 10 08 10 10 10   ; 33FAB
  BFBB  .byte 00 08 08 08 10 08 00 00 14 13 03 8B 68 0D 20 0D   ; 33FBB
  BFCB  .byte 18 00 10 08 10 10 10 18 0A 20 0A 0D 08 15 08 0A   ; 33FCB
  BFDB  .byte 00 12 00 18 0C 03 8B 38 0B 10 13 10 1B 10 01 08   ; 33FDB
  BFEB  .byte 09 08 11 08 19 08 1D 0A 00 00 08 00 0D 00 0A 08   ; 33FEB
  BFFB  .byte 03 86 43 00 10 08 10 0C 0F 00 08 08 08 05 00 08   ; 33FFB
  C00B  .byte 25 01 10 A6 00 38 A7 08 38 A8 00 30 A9 08 30 AA   ; 3400B
  C01B  .byte 00 28 AB 08 28 AA 00 20 AC 08 20 A8 00 18 AB 08   ; 3401B
  C02B  .byte 18 AD 00 10 AE 08 10 AF 00 08 B0 08 08 B1 00 00   ; 3402B
  C03B  .byte B2 08 00 08 08 02 84 B3 00 08 08 08 00 00 08 00   ; 3403B
  C04B  .byte 08 08 FF 84 B3 00 00 82 08 00 82 00 08 82 08 08   ; 3404B
  C05B  .byte 82 08 0C 03 86 B7 00 10 08 10 00 08 08 08 00 00   ; 3405B
  C06B  .byte 08 00 08 0C FF 86 B7 00 00 83 08 00 83 00 08 83   ; 3406B
  C07B  .byte 08 08 83 00 10 83 08 10 83 08 32 02 0C BE 00 00   ; 3407B
  C08B  .byte BE 00 10 BE 00 20 BE 00 30 BE 00 40 BE 00 50 BE   ; 3408B
  C09B  .byte 00 60 BE 00 70 BE 00 80 BE 00 90 BE 00 A0 BE 00   ; 3409B
  C0AB  .byte B0 17 18 FF 0A 52 08 28 03 53 10 28 03 54 01 20   ; 340AB
  C0BB  .byte 03 55 09 20 03 56 00 18 03 52 08 00 83 53 10 00   ; 340BB
  C0CB  .byte 83 54 01 08 83 55 09 08 83 56 00 10 83 17 18 FF   ; 340CB
  C0DB  .byte 0A 57 08 28 03 58 10 28 03 59 01 20 03 5A 09 20   ; 340DB
  C0EB  .byte 03 5B 00 18 03 57 08 00 83 58 10 00 83 59 01 08   ; 340EB
  C0FB  .byte 83 5A 09 08 83 5B 00 10 83                        ; 340FB
  C104  .byte 0C 0C 03 85 2A 00 08 08 08 10 06 00 00 08 00      ; 34104 data, read by 30d39 30d4c 30d51 30d56 (+4)
  C113  .byte 08 04 02 82 39 00 00 08 00 08 05 02 82 3B 02 00   ; 34113
  C123  .byte 06 00 08 06 02 82 3D 01 00 08 00                  ; 34123
  C12E  .byte 0C 08 03 07 5C 03 18 5D 09 18 61 00 10 62 06 10   ; 3412E data, read by 30d2b 30d39 30d4c 30d51 (+8)
  C13E  .byte 63 0E 10 65 02 08 66 0A 08 0C 00 03 8B 5C 03 18   ; 3413E data, read by 30e10 30dcb 30e19 30dd1 (+9)
  C14E  .byte 0B 18 00 10 07 10 0F 10 00 08 06 08 0E 08 00 00   ; 3414E data, read by 30e19 30dd1 30e24 30ddf
  C15E  .byte 02 00 0A 00                                       ; 3415E data, read by 30e19 30dd1 30e24 30ddf
  C162  .byte 08 08 03 86 67 03 08 0B 08 13 08 00 06 08 00 10   ; 34162
  C172  .byte 00 09 09 03 83 4B 00 07 08 08 08 00 09 0A 03 84   ; 34172
  C182  .byte 4C 08 08 08 00 00 0F 00 07 09 0B 03 04 4C 08 09   ; 34182
  C192  .byte 4D 08 01 50 00 08 51 00 00                        ; 34192
  C19B  .byte 08 04 02 02 35 00 00 35 08 00                     ; 3419B data, read by 30d39 30d4c 30d51 30d56 (+4)
  C1A5  .byte 04 04 02 01 36 00 00 10 04 03 85 2A 0D 08 00 00   ; 341A5
  C1B5  .byte 08 00 10 00 18 00 10 04 03 05 2A 0D 08 2F 00 03   ; 341B5
  C1C5  .byte 30 08 00 2D 10 00 2E 18 00 10 07 03 05 2A 0D 0B   ; 341C5
  C1D5  .byte 31 00 00 32 08 02 2D 10 03 2E 18 03 0E 07 03 06   ; 341D5
  C1E5  .byte 33 10 08 34 18 08 37 10 00 38 18 00 2B 03 03 2C   ; 341E5
  C1F5  .byte 0B 03 0C 04 03 83 3F 00 01 08 01 10 00 0C 04 03   ; 341F5
  C205  .byte 83 41 10 00 00 01 08 01 08 08 03 84 44 00 08 08   ; 34205
  C215  .byte 08 00 00 08 00 08 08 03 04 48 00 08 49 08 08 4A   ; 34215
  C225  .byte 00 00 6D 08 00 08 18 03 0C 70 00 28 71 08 28 6E   ; 34225
  C235  .byte 00 20 6F 08 20 6E 00 18 6F 08 18 6E 00 10 6F 08   ; 34235
  C245  .byte 10 6E 00 08 6F 08 08 70 00 00 71 08 00 0B 02 03   ; 34245
  C255  .byte 88 72 09 10 0B 10 00 08 06 08 0E 08 01 00 04 00   ; 34255
  C265  .byte 0C 00 08 00 03 89 7A 0E 10 16 10 00 06 07 08 0F   ; 34265
  C275  .byte 08 17 08 03 00 0B 00 13 00 0B 10 FF 88 72 09 00   ; 34275
  C285  .byte 83 0B 00 83 00 08 83 06 08 83 0E 08 83 01 10 83   ; 34285
  C295  .byte 04 10 83 0C 10 83                                 ; 34295
  C29B  .byte 08 08 FF 04 83 00 10 03 84 08 10 03 87 04 08 02   ; 3429B data, read by 30d39 30d4c 30d51 30d56 (+5)
  C2AB  .byte 87 04 00 02 08 08 FF 04 85 00 0E 03 86 08 10 03   ; 342AB data, read by 30dcb 30dd1 30ddf 30deb (+10)
  C2BB  .byte 87 04 08 02 87 04 00 02 08 13 01 88 2F 08 20 08   ; 342BB data, read by 30e10 30dcb 30e19 30dd1 (+10)
  C2CB  .byte 18 00 10 08 10 02 08 0A 08 02 00 0A 00            ; 342CB data, read by 30ddf 30dd1
  C2D8  .byte 10 0C 03 8C 37 00 10 08 10 10 10 18 10 00 08 08   ; 342D8
  C2E8  .byte 08 10 08 18 08 00 00 08 00 10 00 18 00 0C 04 03   ; 342E8
  C2F8  .byte 86 43 00 08 08 08 10 08 00 00 08 00 10 00 10 04   ; 342F8
  C308  .byte 03 97 49 06 28 0E 28 16 28 06 20 0E 20 16 20 18   ; 34308
  C318  .byte 20 00 18 08 18 10 18 18 18 00 10 08 10 10 10 18   ; 34318
  C328  .byte 10 00 08 08 08 10 08 18 08 00 00 08 00 10 00 18   ; 34328
  C338  .byte 00 11 03 03 96 54 00 10 08 10 10 10 18 10 00 08   ; 34338
  C348  .byte 08 08 10 08 18 08 00 00 08 00 10 00 18 00 07 28   ; 34348
  C358  .byte 0F 28 17 28 04 20 0C 20 14 20 02 18 0A 18 12 18   ; 34358
  C368  .byte 16 18 0D 0A 03 9B 6A 10 30 18 30 06 28 0E 28 16   ; 34368
  C378  .byte 28 1E 28 23 28 05 20 0D 20 15 20 1D 20 25 20 04   ; 34378
  C388  .byte 18 0C 18 14 18 1C 18 24 18 00 10 08 10 10 10 18   ; 34388
  C398  .byte 10 28 13 02 08 0A 08 12 08 1A 08 12 00            ; 34398
  C3A5  .byte 0D 0A 02 88 2A 08 10 10 0C 05 08 10 04 05 00 0D   ; 343A5 data, read by 30d39 30d4c 30d51 30d56 (+4)
  C3B5  .byte 00 00 10 08 08 0D 0A 02 88 30 00 10 08 08 08 10   ; 343B5 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  C3C5  .byte 10 0C 05 08 10 04 05 00 0D 00 10 0D 02 89 38 04   ; 343C5 data, read by 30dd1 30ddf 30d39 30d4c (+4)
  C3D5  .byte 10 0C 10 10 10 00 08 10 08 09 00 0C 00 08 08 01   ; 343D5 data, read by 30ddf 30dd1
  C3E5  .byte 00 10 0D 02 89 3F 08 08 01 00 04 10 0C 10 10 10   ; 343E5 data, read by 30ddf 30d39 30d4c 30d51 (+4)
  C3F5  .byte 00 08 10 08 09 00 0C 00                           ; 343F5 data, read by 30dd1 30ddf
  C3FD  .byte 0D 18 FF 88 2A 08 00 82 10 04 82 05 08 82 10 0C   ; 343FD
  C40D  .byte 82 05 10 82 0D 10 82 00 00 82 08 08 82 0D 18 FF   ; 3440D
  C41D  .byte 88 30 00 00 82 08 08 82 08 00 82 10 04 82 05 08   ; 3441D
  C42D  .byte 82 10 0C 82 05 10 82 0D 10 82 14 0E FF 89 38 04   ; 3442D
  C43D  .byte 00 82 0C 00 82 10 00 82 00 08 82 10 08 82 09 10   ; 3443D
  C44D  .byte 82 0C 10 82 08 08 82 01 10 82 14 0E FF 89 3F 08   ; 3444D
  C45D  .byte 08 82 01 10 82 04 00 82 0C 00 82 10 00 82 00 08   ; 3445D
  C46D  .byte 82 10 08 82 09 10 82 0C 10 82                     ; 3446D
  C477  .byte 10 10 03 90 48 02 18 0A 18 12 18 16 18 00 10 08   ; 34477 data, read by 30d39 30d4c 30d51 30d56 (+4)
  C487  .byte 10 10 10 18 10 00 08 08 08 10 08 18 08 02 00 06   ; 34487 data, read by 30ddf 30dd1
  C497  .byte 00 0E 00 16 00 10 10 03 90 58 02 18 0A 18 12 18   ; 34497 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  C4A7  .byte 16 18 00 10 08 10 10 10 18 10 00 08 08 08 10 08   ; 344A7 data, read by 30dd1 30ddf
  C4B7  .byte 18 08 02 00 06 00 0E 00 16 00 10 10 FF 90 48 16   ; 344B7 data, read by 30dd1 30ddf 30d39 30d4c (+4)
  C4C7  .byte 00 C3 0E 00 C3 06 00 C3 02 00 C3 18 08 C3 10 08   ; 344C7 data, read by 30ddf 30deb 30dd1
  C4D7  .byte C3 08 08 C3 00 08 C3 18 10 C3 10 10 C3 08 10 C3   ; 344D7 data, read by 30deb 30dd1 30ddf
  C4E7  .byte 00 10 C3 16 18 C3 12 18 C3 0A 18 C3 02 18 C3 10   ; 344E7 data, read by 30dd1 30ddf 30deb 30d39
  C4F7  .byte 10 FF 90 58 16 00 C3 0E 00 C3 06 00 C3 02 00 C3   ; 344F7 data, read by 30d4c 30d51 30d56 30d5d (+4)
  C507  .byte 18 08 C3 10 08 C3 08 08 C3 00 08 C3 18 10 C3 10   ; 34507 data, read by 30dd1 30ddf 30deb
  C517  .byte 10 C3 08 10 C3 00 10 C3 16 18 C3 12 18 C3 0A 18   ; 34517 data, read by 30ddf 30deb 30dd1
  C527  .byte C3 02 18 C3                                       ; 34527 data, read by 30deb 30dd1 30ddf
  C52B  .byte 05 04 02 01 29 00 00 38                           ; 3452B
  C533  .byte 32 53 15 F4 D5 B8 9B 7E 38 5B 76                  ; 34533 data, read by 30d1b
  C53E  .byte 95                                                ; 3453E
  C53F  .byte 95 AE D1 F0 11 30 53 72 91 AE                     ; 3453F data, read by 30d1b
  C549  .byte 1A                                                ; 34549
  C54A  .byte CF F2 13 40 5D 82 A1 CC F1 12 35                  ; 3454A data, read by 30d1b
  C555  .byte 54                                                ; 34555
  C556  .byte 77 98 BD                                          ; 34556 data, read by 30d1b
  C559  .byte E0                                                ; 34559
  C55A  .byte FF 1A                                             ; 3455A data, read by 30d1b
  C55C  .byte 3D                                                ; 3455C
  C55D  .byte 5C 7F 9E                                          ; 3455D data, read by 30d1b
  C560  .byte C3                                                ; 34560
  C561  .byte E8 07                                             ; 34561 data, read by 30d1b
  C563  .byte 26 4B 6C                                          ; 34563
  C566  .byte 91                                                ; 34566 data, read by 30d1b
  C567  .byte AC CF F0 11 48 68 7F 9A 59 59 20 33 B1 C8 EB 08   ; 34567
  C577  .byte 27 8E                                             ; 34577 data, read by 30d1b
  C579  .byte 4A 4A 4A                                          ; 34579
  C57C  .byte 4A 69                                             ; 3457C data, read by 30d1b
  C57E  .byte B3 E2 0D 0D                                       ; 3457E
  C582  .byte 32 55                                             ; 34582 data, read by 30d1b
  C584  .byte 7A 9F C0 E3 F8                                    ; 34584
  C589  .byte 07                                                ; 34589 data, read by 30d1b
  C58A  .byte 2A 47 62 83 94                                    ; 3458A
  C58F  .byte A5                                                ; 3458F data, read by 30d1b
  C590  .byte BE E3 06 25 4A 65 80 A6                           ; 34590
  C598  .byte CF EC                                             ; 34598 data, read by 30d1b
  C59A  .byte 38 38 38 38 38 38 38 38 38 38 38 38               ; 3459A
  C5A6  .byte A5 BA CF E6                                       ; 345A6 data, read by 30d1b
  C5AA  .byte FD 1A 37 57                                       ; 345AA
  C5AE  .byte 77 9C C1 F6                                       ; 345AE data, read by 30d1b
  C5B2  .byte 38                                                ; 345B2
  C5B3  .byte B6 E5 7B                                          ; 345B3 data, read by 30d1b
  C5B6  .byte 22 B4 F2 38 22                                    ; 345B6
  C5BB  .byte 2F 4C 67 84 A1 C2 E3                              ; 345BB data, read by 30d07
  C5C2  .byte FE 19 32 4B 94 9B                                 ; 345C2
  C5C8  .byte A2                                                ; 345C8 data, read by 30d07
  C5C9  .byte AF C6 D6 46 52 5E 65 6C A2                        ; 345C9
  C5D2  .byte 73                                                ; 345D2 data, read by 30d07
  C5D3  .byte 73                                                ; 345D3
  C5D4  .byte 86                                                ; 345D4 data, read by 30d07
  C5D5  .byte 89 A0 B5 CC                                       ; 345D5
  C5D9  .byte E5 F4                                             ; 345D9 data, read by 30d07
  C5DB  .byte 05 18 47 5B A6 CE F3 2B 18 35 4A 4A 61 61         ; 345DB
  C5E9  .byte A2 C0 95 CA D7                                    ; 345E9 data, read by 30d07 30d1b
  C5EE  .byte E4                                                ; 345EE
  C5EF  .byte F1 01                                             ; 345EF data, read by 30d1b 30d07
  C5F1  .byte 31 6F 87 9F 9F 9F 60 8B                           ; 345F1
  C5F9  .byte 51 9B D0                                          ; 345F9 data, read by 30d07
  C5FC  .byte 20                                                ; 345FC
  C5FD  .byte 30 39 49 5F 7B 9D                                 ; 345FD data, read by 30d07
  C603  .byte C5 91 FD AC D4 7C                                 ; 34603
  C609  .byte 3F 48 57 64 73                                    ; 34609 data, read by 30d07
  C60E  .byte AB 75 3B D4                                       ; 3460E
  C612  .byte E7                                                ; 34612 data, read by 30d07
  C613  .byte F4 01 0E 1B 2A 3D 46 B1 65 8E F5                  ; 34613
  C61E  .byte FA                                                ; 3461E data, read by 30d07
  C61F  .byte 61 05 12 2E 4A 35 5E 5E 96 D1 E8 03               ; 3461F
  C62B  .byte 20                                                ; 3462B data, read by 30d07
  C62C  .byte 2B 40 54 DD EC 61 68 6F 78 85 9A BB BB B1 E3 20   ; 3462C
  C63C  .byte FD 8A                                             ; 3463C
  C63E  .byte F0 22 3F 56 09                                    ; 3463E data, read by 30d07
  C643  .byte E4 69 9B                                          ; 34643
  C646  .byte 8A                                                ; 34646 data, read by 30d07
  C647  .byte E2                                                ; 34647
  C648  .byte 2B 6E                                             ; 34648 data, read by 30d07
  C64A  .byte F0                                                ; 3464A
  C64B  .byte BD 57 7D                                          ; 3464B data, read by 30d07
  C64E  .byte A3                                                ; 3464E
  C64F  .byte EE                                                ; 3464F data, read by 30d07
  C650  .byte 19 EF                                             ; 34650
  C652  .byte C9                                                ; 34652 data, read by 30d07
  C653  .byte DC D4 EE                                          ; 34653
  C656  .byte 08 1D                                             ; 34656 data, read by 30d07
  C658  .byte 32 43 56 6B 88 99 AA B5 BE CB DA EB FA 8A         ; 34658
  C666  .byte AC                                                ; 34666 data, read by 30d07
  C667  .byte 0F 1C 29 36                                       ; 34667
  C66B  .byte D2                                                ; 3466B data, read by 30d07
  C66C  .byte D9 4E 43                                          ; 3466C
  C66F  .byte 4F 6A 83                                          ; 3466F data, read by 30d07
  C672  .byte 9E C9                                             ; 34672
  C674  .byte EE                                                ; 34674 data, read by 30d07
  C675  .byte 2A 43 01                                          ; 34675
  C678  .byte 00                                                ; 34678 data, read by 30d07
  C679  .byte 02 22 88 92 9C 08                                 ; 34679
  C67F  .byte 11                                                ; 3467F data, read by 30d07
  C680  .byte C3 DE F9 0A 3E 5C 6D 4B 84 AC D8                  ; 34680
  C68B  .byte 04                                                ; 3468B data, read by 30d07
  C68C  .byte 25 1C 13                                          ; 3468C
  C68F  .byte 47                                                ; 3468F data, read by 30d07
  C690  .byte 62                                                ; 34690
  C691  .byte 2E                                                ; 34691 data, read by 30d07
  C692  .byte 7E 73 8B                                          ; 34692
  C695  .byte 9B                                                ; 34695 data, read by 30d07
  C696  .byte A5 BB AC CE E1 F7 02 0D 1A 2A 52 67 7E            ; 34696
  C6A3  .byte 9B AF C3                                          ; 346A3 data, read by 30d07
  C6A6  .byte D8 F5 06 39 6A 07 93 BC E9 4D 24 71 B4 B2 2B C8   ; 346A6
  C6B6  .byte C9 C9 C9 C8 C8 C8 C8 C8 C8 C8 C9                  ; 346B6 data, read by 30d20
  C6C1  .byte C9                                                ; 346C1
  C6C2  .byte C9 C9 C9 C9 CA CA CA CA CA CA                     ; 346C2 data, read by 30d20
  C6CC  .byte CD                                                ; 346CC
  C6CD  .byte CA CA CB CB CB CB CB CB CB CC CC                  ; 346CD data, read by 30d20
  C6D8  .byte CC                                                ; 346D8
  C6D9  .byte CC CC CC                                          ; 346D9 data, read by 30d20
  C6DC  .byte CC                                                ; 346DC
  C6DD  .byte CC CD                                             ; 346DD data, read by 30d20
  C6DF  .byte CD                                                ; 346DF
  C6E0  .byte CD CD CD                                          ; 346E0 data, read by 30d20
  C6E3  .byte CD                                                ; 346E3
  C6E4  .byte CD CE                                             ; 346E4 data, read by 30d20
  C6E6  .byte CE CE CE                                          ; 346E6
  C6E9  .byte CE                                                ; 346E9 data, read by 30d20
  C6EA  .byte CE CE CE CF CF CF CF CF CF CF CF CF CF CF CF D0   ; 346EA
  C6FA  .byte D0 D0                                             ; 346FA data, read by 30d20
  C6FC  .byte D0 D0 D0                                          ; 346FC
  C6FF  .byte D0 D0                                             ; 346FF data, read by 30d20
  C701  .byte D0 D0 D1 D1                                       ; 34701
  C705  .byte D1 D1                                             ; 34705 data, read by 30d20
  C707  .byte D1 D1 D1 D1 D1                                    ; 34707
  C70C  .byte D2                                                ; 3470C data, read by 30d20
  C70D  .byte D2 D2 D2 D2 D2                                    ; 3470D
  C712  .byte D2                                                ; 34712 data, read by 30d20
  C713  .byte D2 D2 D3 D3 D3 D3 D3 D3                           ; 34713
  C71B  .byte D3 D3                                             ; 3471B data, read by 30d20
  C71D  .byte C8 C8 C8 C8 C8 C8 C8 C8 C8 C8 C8 C8               ; 3471D
  C729  .byte C3 C3 C3 C3                                       ; 34729 data, read by 30d20
  C72D  .byte C3 C4 C4 C4                                       ; 3472D
  C731  .byte C4 C4 C4 C4                                       ; 34731 data, read by 30d20
  C735  .byte C8                                                ; 34735
  C736  .byte DF DF E0                                          ; 34736 data, read by 30d20
  C739  .byte E0 E0 E0 C8 DC                                    ; 34739
  C73E  .byte DC DC DC DC DC DC DC                              ; 3473E data, read by 30d0c
  C745  .byte DC DD DD DD DD DD                                 ; 34745
  C74B  .byte DD                                                ; 3474B data, read by 30d0c
  C74C  .byte DD DD DD DE DE DE DE DE DD                        ; 3474C
  C755  .byte DE                                                ; 34755 data, read by 30d0c
  C756  .byte DE                                                ; 34756
  C757  .byte DE                                                ; 34757 data, read by 30d0c
  C758  .byte AF AF AF AF                                       ; 34758
  C75C  .byte AF AF                                             ; 3475C data, read by 30d0c
  C75E  .byte B0 B0 B0 B0 B0 B0 B0 B0 B1 B1 B1 B1 B1 B1         ; 3475E
  C76C  .byte B1 B1 B1 B1 B1                                    ; 3476C data, read by 30d0c 30d20
  C771  .byte B1                                                ; 34771
  C772  .byte B1 B2                                             ; 34772 data, read by 30d20 30d0c
  C774  .byte B2 B0 B0 B0 B0 B0 DD DD                           ; 34774
  C77C  .byte B2 B2 B2                                          ; 3477C data, read by 30d0c
  C77F  .byte B3                                                ; 3477F
  C780  .byte B3 B3 B3 B3 B3 B3                                 ; 34780 data, read by 30d0c
  C786  .byte B3 B4 B3 B4 B4 B1                                 ; 34786
  C78C  .byte BB BB BB BB BB                                    ; 3478C data, read by 30d0c
  C791  .byte BB B4 B4 BB                                       ; 34791
  C795  .byte BB                                                ; 34795 data, read by 30d0c
  C796  .byte BB BC BC BC BC BC BC BC BC BC B4                  ; 34796
  C7A1  .byte B7                                                ; 347A1 data, read by 30d0c
  C7A2  .byte B8 B8 B8 B8 B8 B5 B5 B5 B5 B5 B5 B6               ; 347A2
  C7AE  .byte B6                                                ; 347AE data, read by 30d0c
  C7AF  .byte B6 B6 B6 B6 B6 B6 B6 B6 B6 B6 B6 B7 B7 B6 B7 B7   ; 347AF
  C7BF  .byte B6 B7                                             ; 347BF
  C7C1  .byte B8 B9 B9 B9 B9                                    ; 347C1 data, read by 30d0c
  C7C6  .byte B4 B9 B9                                          ; 347C6
  C7C9  .byte B9                                                ; 347C9 data, read by 30d0c
  C7CA  .byte B3                                                ; 347CA
  C7CB  .byte B4 B8                                             ; 347CB data, read by 30d0c
  C7CD  .byte B8                                                ; 347CD
  C7CE  .byte B9 BA BA                                          ; 347CE data, read by 30d0c
  C7D1  .byte BA                                                ; 347D1
  C7D2  .byte B9                                                ; 347D2 data, read by 30d0c
  C7D3  .byte BA BA                                             ; 347D3
  C7D5  .byte BA                                                ; 347D5 data, read by 30d0c
  C7D6  .byte BA BC BC                                          ; 347D6
  C7D9  .byte BD BD                                             ; 347D9 data, read by 30d0c
  C7DB  .byte BD BD BD BD BD BD BD BD BD BD BD BD BD B8         ; 347DB
  C7E9  .byte B1                                                ; 347E9 data, read by 30d0c
  C7EA  .byte BE BE BE BE                                       ; 347EA
  C7EE  .byte B8                                                ; 347EE data, read by 30d0c
  C7EF  .byte B8 B7 BE                                          ; 347EF
  C7F2  .byte BE BE BE                                          ; 347F2 data, read by 30d0c
  C7F5  .byte BE BE                                             ; 347F5
  C7F7  .byte BE                                                ; 347F7 data, read by 30d0c
  C7F8  .byte BF BF BE                                          ; 347F8
  C7FB  .byte 06                                                ; 347FB data, read by 30d0c
  C7FC  .byte BB BB BF BF BF BE                                 ; 347FC
  C802  .byte BF                                                ; 34802 data, read by 30d0c
  C803  .byte BF BF BF C0 C0 C0 C0 C0 C0 C0 C0                  ; 34803
  C80E  .byte C1                                                ; 3480E data, read by 30d0c
  C80F  .byte C1 C1 C1                                          ; 3480F
  C812  .byte C1                                                ; 34812 data, read by 30d0c
  C813  .byte C1                                                ; 34813
  C814  .byte C1                                                ; 34814 data, read by 30d0c
  C815  .byte C1 C1 C1                                          ; 34815
  C818  .byte C1                                                ; 34818 data, read by 30d0c
  C819  .byte C1 C1 C1 C1 C1 C1 C2 C2 C2 C2 C2 C2 C2            ; 34819
  C826  .byte C2 C2 C2                                          ; 34826 data, read by 30d0c
  C829  .byte C2 C2 C3 C3 C3 D4 D4 D4 D4 D4 D5 D5 D5 B8 C5      ; 34829
  C838  .byte 0C 06 02 8F 01 0C 18 0C 10 09 20 0D 20 04 18 0C   ; 34838 data, read by 30d39 30d4c 30d51 30d56 (+4)
  C848  .byte 18 0F 18 03 10 0B 10 0D 10 05 08 0D 08 00 00 08   ; 34848 data, read by 30ddf 30dd1
  C858  .byte 00 10 00 0D 07 02 8F 01 0D 1A 0C 12 0D 22 02 1A   ; 34858 data, read by 30ddf 30dd1 30d2b 30d39 (+7)
  C868  .byte 0A 1A 10 1A 02 12 0A 12 11 12 06 0A 0E 0A 01 02   ; 34868 data, read by 30e19 30dd1 30e24 30ddf
  C878  .byte 09 02 11 02 00 00 0B 05 02 8C 01 0C 19 0C 11 09   ; 34878 data, read by 30e19 30dd1 30e24 30ddf (+6)
  C888  .byte 20 0C 20 05 18 0D 18 03 10 0B 10 00 08 08 08 07   ; 34888 data, read by 30ddf 30dd1
  C898  .byte 00 0C 00 0F FF 02 8C 01 10 19 10 0E 0A 18 12 18   ; 34898 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  C8A8  .byte 04 10 0C 10 13 10 00 08 08 08 10 08 18 08 17 00   ; 348A8 data, read by 30dd1 30ddf
  C8B8  .byte 0E 01 02 8C 01 0F 16 0E 0E 08 18 10 18 07 10 0E   ; 348B8 data, read by 30d39 30d2b 30d4c 30d51 (+7)
  C8C8  .byte 10 03 08 0B 08 10 08 00 00 08 00 0C 00 0E FE 01   ; 348C8 data, read by 30ddf 30e24 30dd1 30e19 (+5)
  C8D8  .byte 8D 01 0F 13 01 16 09 16 11 16 19 14 01 0E 09 0E   ; 348D8 data, read by 30d5d 30d66 30dd1 30e19 (+2)
  C8E8  .byte 11 0E 00 06 08 06 10 06 18 08 15 00 0D 01 02 8E   ; 348E8 data, read by 30dd1 30e19 30ddf 30e24 (+6)
  C8F8  .byte 01 0E 15 0C 12 03 18 0B 18 11 18 02 10 0A 10 12   ; 348F8 data, read by 30d66 30dd1 30e19 30ddf (+1)
  C908  .byte 10 01 08 09 08 0F 08 00 00 08 00 0A 00 0B 05 02   ; 34908 data, read by 30ddf 30e24 30dd1 30e19 (+5)
  C918  .byte 8C 01 0C 18 0C 10 09 20 03 18 0B 18 0E 19 03 10   ; 34918 data, read by 30d5d 30d66 30dd1 30e19 (+2)
  C928  .byte 0B 10 00 08 08 08 07 00 0D 00 0C 04 02 8E 02 0C   ; 34928 data, read by 30dd1 30e19 30ddf 30e24 (+7)
  C938  .byte 18 0C 10 03 18 0B 18 0E 19 03 10 08 10 10 11 04   ; 34938 data, read by 30ddf 30e24 30dd1 30e19
  C948  .byte 08 0C 08 0E 09 00 00 08 00 10 00 0C 04 02 8F 01   ; 34948 data, read by 30ddf 30e24 30dd1 30e19 (+7)
  C958  .byte 0C 18 FF                                          ; 34958 data, read by 30dd1 30e19 30ddf 30e24
  C95B  .byte FF                                                ; 3495B
  C95C  .byte 0C 10 03 18 0B 18 0E 19 03 10 08 10 10 11 04 08   ; 3495C data, read by 30dd1 30e19 30ddf 30e24
  C96C  .byte 0C 08 0E 09 00 00 08 00 10 00 0C 05 02 8D 01 0E   ; 3496C data, read by 30dd1 30e19 30ddf 30e24 (+7)
  C97C  .byte 14 0C 10 06 18 0E 18 10 14 04 10 0C 10 13 0C 04   ; 3497C data, read by 30ddf 30e24 30dd1 30e19
  C98C  .byte 08 0C 08 00 00 08 00 10 00 0B 05 01 8A 01 10 0F   ; 3498C data, read by 30ddf 30e24 30dd1 30e19 (+7)
  C99C  .byte 05 10 0D 10 11 10 03 08 0B 08 13 08 00 00 08 00   ; 3499C data, read by 30dd1 30e19 30ddf 30e24
  C9AC  .byte 10 00 0C 05 02 8F 01 0B 13 0B 0B 05 20 11 1A 03   ; 349AC data, read by 30dd1 30e19 30ddf 30e24 (+7)
  C9BC  .byte 18 0B 18 11 12 02 10 0A 10 0F 0A 03 08 0B 08 10   ; 349BC data, read by 30ddf 30e24 30dd1 30e19
  C9CC  .byte 02 00 00 08 00 07 02 02 8D 01 0A 17 0A 0F 0E 20   ; 349CC data, read by 30ddf 30e24 30dd1 30e19 (+7)
  C9DC  .byte 05 18 0D 18 13 18 05 10 0D 10 02 08 0A 08 00 00   ; 349DC data, read by 30dd1 30e19 30ddf 30e24
  C9EC  .byte 08 00 0D 00 09 05 02 8E 01 08 18 08 10 02 20 0D   ; 349EC data, read by 30dd1 30e19 30ddf 30e24 (+6)
  C9FC  .byte 20 00 18 08 18 0D 18 05 10 08 10 02 08 0A 08 02   ; 349FC data, read by 30ddf 30dd1
  CA0C  .byte 00 0A 00 0E 00 09 05 02 8D 01 08 18 08 10 01 20   ; 34A0C data, read by 30ddf 30dd1 30d2b 30d39 (+7)
  CA1C  .byte 0F 20 00 18 08 18 0D 18 04 10 07 10 05 08 0A 08   ; 34A1C data, read by 30e19 30dd1 30e24 30ddf
  CA2C  .byte 04 00 0C 00 0A 05 02 8F 01 08 16 08 0E 03 20 0E   ; 34A2C data, read by 30e19 30dd1 30e24 30ddf (+7)
  CA3C  .byte 20 01 18 09 18 0E 18 05 10 09 10 00 08 08 08 0C   ; 34A3C data, read by 30e24 30ddf 30e19 30dd1
  CA4C  .byte 08 00 00 07 00 0F 00 0F 04 02 8D 01 02 15 07 12   ; 34A4C data, read by 30e24 30ddf 30e19 30dd1 (+7)
  CA5C  .byte 00 18 08 18 0D 18 00 10 08 10 10 10 18 0C 01 08   ; 34A5C data, read by 30e19 30dd1 30e24 30ddf
  CA6C  .byte 09 08 11 08 0D 00 0F 05 02 8D 01 05 08 01 05 10   ; 34A6C data, read by 30e19 30dd1 30e24 30ddf (+7)
  CA7C  .byte 18 01 10 09 10 11 10 18 0F 00 08 08 08 10 08 01   ; 34A7C data, read by 30e24 30ddf 30e19 30dd1
  CA8C  .byte 00 09 00 0E 00 10 06 02 8C 01 01 08 09 08 11 10   ; 34A8C data, read by 30e24 30ddf 30e19 30dd1 (+7)
  CA9C  .byte 00 08 05 08 0D 08 15 08 1D 04 00 00 05 00 0D 00   ; 34A9C data, read by 30e19 30dd1 30e24 30ddf
  CAAC  .byte 15 00 0C 04 02 8E 01 08 19 08 11 09 20 00 18 08   ; 34AAC data, read by 30e19 30dd1 30e24 30ddf (+7)
  CABC  .byte 18 10 18 02 10 0A 10 12 10 06 08 0E 08 00 00 08   ; 34ABC data, read by 30e24 30ddf 30e19 30dd1
  CACC  .byte 00 10 00 0D 04 02 8F 01 0C 16 0B 0E 05 20 08 20   ; 34ACC data, read by 30e24 30ddf 30e19 30dd1 (+7)
  CADC  .byte 05 18 0D 18 11 13 19 13 09 10 11 09 01 08 09 08   ; 34ADC data, read by 30e19 30dd1 30e24 30ddf
  CAEC  .byte 10 01 00 00 08 00 0B 05 01 8E 01 0C 14 05 18 0D   ; 34AEC data, read by 30e19 30dd1 30e24 30ddf (+7)
  CAFC  .byte 18 15 14 1D 14 02 10 0A 10 12 10 01 08 09 08 0F   ; 34AFC data, read by 30ddf 30e24 30dd1 30e19
  CB0C  .byte 08 00 00 08 00 10 00 05 05 00 90 01 19 30 21 30   ; 34B0C data, read by 30ddf 30e24 30dd1 30e19 (+7)
  CB1C  .byte 23 2A 17 28 1F 28 0E 20 16 20 1E 20 08 18 10 18   ; 34B1C data, read by 30dd1 30e19 30ddf 30e24
  CB2C  .byte 18 18 06 10 0E 10 01 08 09 08 0C 08 83 21 00 00   ; 34B2C data, read by 30dd1 30e19 30ddf 30e24 (+2)
  CB3C  .byte 05 00 0D 00 0C 03 00 8C 01 0B 18 13 18 19 17 07   ; 34B3C data, read by 30dd1 30e19 30ddf 30e24 (+7)
  CB4C  .byte 10 0F 10 17 10 01 08 09 08 0F 08 00 00 08 00 10   ; 34B4C data, read by 30e24 30ddf 30e19 30dd1
  CB5C  .byte 00 0E 04 00 90 01 0C 18 14 18 1C 18 24 18 2A 18   ; 34B5C data, read by 30e24 30ddf 30d2b 30d39 (+7)
  CB6C  .byte 09 10 11 10 19 10 21 10 29 10 03 08 0B 08 11 08   ; 34B6C data, read by 30e19 30dd1 30e24 30ddf
  CB7C  .byte 00 01 0B 00 13 00 0A 04 02 8D 01 0C 18 0C 10 06   ; 34B7C data, read by 30e19 30dd1 30e24 30ddf (+7)
  CB8C  .byte 18 0D 18 05 10 0D 10 11 10 01 08 09 08 11 08 00   ; 34B8C data, read by 30ddf 30e24 30dd1 30e19
  CB9C  .byte 00 08 00 10 00 0A 02 01 90 01 0B 17 13 28 1B 28   ; 34B9C data, read by 30ddf 30e24 30dd1 30e19 (+6)
  CBAC  .byte 12 20 19 20 21 20 02 18 0A 18 12 18 1A 18 21 18   ; 34BAC data, read by 30dd1 30ddf
  CBBC  .byte 00 10 08 10 10 10 09 08 11 08 82 24 0B 00 10 00   ; 34BBC data, read by 30dd1 30ddf 30d5d 30d66
  CBCC  .byte 13 04 02 90 01 14 16 13 12 04 18 0C 18 14 18 1C   ; 34BCC data, read by 30d39 30d4c 30d51 30d56 (+4)
  CBDC  .byte 18 1F 14 01 10 09 10 11 10 19 10 00 08 08 08 10   ; 34BDC data, read by 30ddf 30dd1
  CBEC  .byte 08 15 08 13 00 0B 03 01 8E 01 0B 17 02 18 0A 18   ; 34BEC data, read by 30ddf 30dd1 30d39 30d4c (+4)
  CBFC  .byte 0D 18 00 10 08 10 10 10 18 10 1F 0C 09 08 11 08   ; 34BFC data, read by 30dd1 30ddf
  CC0C  .byte 19 08 0B 00 10 00 13 03 02 8F 01 14 14 13 11 08   ; 34C0C data, read by 30dd1 30ddf 30d39 30d4c (+4)
  CC1C  .byte 18 10 18 16 18 01 10 09 10 11 10 17 10 00 08 08   ; 34C1C data, read by 30ddf 30dd1
  CC2C  .byte 08 10 08 16 08 12 00 17 00 0A 02 00 8D 01 18 20   ; 34C2C data, read by 30ddf 30dd1 30d2b 30d4c (+6)
  CC3C  .byte 0B 18 13 18 18 18 06 10 0E 10 13 10 02 08 0A 08   ; 34C3C data, read by 30e19 30e24
  CC4C  .byte 0E 08 00 00 08 00 10 00                           ; 34C4C data, read by 30e19 30e24
  CC54  .byte 0A 03 02 8F 01 12 14 0F 10 0E 20 07 18 0F 18 13   ; 34C54
  CC64  .byte 18 09 10 11 10 14 10 03 08 0B 08 0E 08 00 00 08   ; 34C64
  CC74  .byte 00 10 00                                          ; 34C74
  CC77  .byte 10 01 02 8E 01 08 16 08 0E 0D 20 00 18 08 18 0E   ; 34C77 data, read by 30d39 30d2b 30d4c 30d51 (+7)
  CC87  .byte 18 01 10 09 10 11 10 01 08 09 08 11 08 0D 00 14   ; 34C87 data, read by 30ddf 30e24 30dd1 30e19
  CC97  .byte 00 0D 03 02 90 01 07 18 07 10 0B 28 06 20 0C 20   ; 34C97 data, read by 30ddf 30e24 30d2b 30d4c (+5)
  CCA7  .byte 00 18 08 18 0C 18 00 10 08 10 10 10 04 08 0C 08   ; 34CA7 data, read by 30e19 30e24
  CCB7  .byte 12 08 09 00 0F 00 0B 03 02 8F 01 08 19 08 11 00   ; 34CB7 data, read by 30e19 30e24 30d39 30d2b (+7)
  CCC7  .byte 28 00 20 08 20 03 18 08 18 04 10 0A 10 01 08 09   ; 34CC7 data, read by 30ddf 30e24 30dd1 30e19
  CCD7  .byte 08 0C 08 00 00 08 00 10 00                        ; 34CD7 data, read by 30ddf 30e24 30dd1 30e19
  CCE0  .byte 0B 04 02 8D 01 0F 18 0F 0F 0A 18 0F 18 16 14 07   ; 34CE0
  CCF0  .byte 10 0F 10 0F 09 03 08 0B 08 00 00 08 00 10 00      ; 34CF0
  CCFF  .byte 0A FB 01 8B 01 12 10 06 10 0E 10 12 10 04 08 0C   ; 34CFF data, read by 30d39 30d2b 30d4c 30d51 (+7)
  CD0F  .byte 08 14 08 00 00 08 00 10 00 14 00 0B 06 02 8F 01   ; 34D0F data, read by 30ddf 30e24 30dd1 30e19 (+7)
  CD1F  .byte 04 1B 07 17 02 20 05 20 01 18 09 18 0B 18 00 10   ; 34D1F data, read by 30e19 30dd1 30e24 30ddf
  CD2F  .byte 05 10 0D 10 02 08 0D 08 0F 04 13 04 00 00         ; 34D2F data, read by 30e19 30dd1 30e24 30ddf
  CD3D  .byte 0A 04 02 8D 01 0C 14 12 14 00 18 08 18 10 18 12   ; 34D3D
  CD4D  .byte 14 03 10 0B 10 05 08 0D 08 02 00 0A 00 0F 00      ; 34D4D
  CD5C  .byte 0C FB 02 8F 01 08 0E 08 06 0B 18 01 10 09 10 11   ; 34D5C data, read by 30d2b 30d39 30d4c 30d51 (+7)
  CD6C  .byte 10 19 10 1D 10 00 08 08 08 10 08 18 08 1B 08 06   ; 34D6C data, read by 30e24 30ddf 30e19 30dd1
  CD7C  .byte 00 0A 00 0D FA 01 8D 01 08 0C 0B 18 02 10 0A 10   ; 34D7C data, read by 30e24 30ddf 30e19 30dd1 (+7)
  CD8C  .byte 12 10 15 10 00 08 08 08 10 08 15 08 03 00 0B 00   ; 34D8C data, read by 30e19 30dd1 30e24 30ddf
  CD9C  .byte 11 00 14 F8 02 90 01 16 10 15 08 08 10 10 10 18   ; 34D9C data, read by 30e19 30dd1 30e24 30ddf (+7)
  CDAC  .byte 10 1E 10 07 08 0F 08 17 08 1C 08 25 07 00 00 08   ; 34DAC data, read by 30ddf 30e24 30dd1 30e19
  CDBC  .byte 00 10 00 18 00 20 00                              ; 34DBC data, read by 30ddf 30e24 30dd1 30e19
  CDC3  .byte 10 00 01 90 01 0F 12 09 20 14 1C 07 18 0F 18 14   ; 34DC3
  CDD3  .byte 14 08 10 10 10 02 08 0A 08 12 08 1A 08 00 00 08   ; 34DD3
  CDE3  .byte 00 10 00 18 00                                    ; 34DE3
  CDE8  .byte 0E 0E 02 8D 01 0A 10 02 0E 00 10 08 10 10 10 14   ; 34DE8 data, read by 30d39 30d4c 30d51 30d56 (+4)
  CDF8  .byte 10 00 08 08 08 10 08 18 08 1D 08 17 00 1D 00 0E   ; 34DF8 data, read by 30ddf 30dd1 30d2b 30d39
  CE08  .byte 04 02 8D 01 08 04 0C 04 14 10 00 08 08 08 10 08   ; 34E08 data, read by 30d4c 30d51 30d56 30d5d (+5)
  CE18  .byte 18 08 1E 08 02 00 0A 00 12 00 1A 00 20 00         ; 34E18 data, read by 30e19 30dd1 30e24 30ddf
  CE26  .byte 11 04 02 90 01 10 06 18 06 08 10 10 10 18 10 20   ; 34E26
  CE36  .byte 10 00 08 08 08 10 08 18 08 20 08 01 00 09 00 11   ; 34E36
  CE46  .byte 00 19 00 1F 00 10 02 01 8E 01 0D 20 07 20 0E 20   ; 34E46
  CE56  .byte 00 18 08 18 10 18 00 10 08 10 10 10 09 08 11 08   ; 34E56
  CE66  .byte 15 07 0C 00 14 00 0E 06 01 90 01 0B 20 06 20 0E   ; 34E66
  CE76  .byte 20 00 18 08 18 10 18 16 18 01 10 09 10 11 10 16   ; 34E76
  CE86  .byte 11 07 08 0D 08 03 00 0B 00 11 00                  ; 34E86
  CE91  .byte 0C F8 00 8B 01 09 18 02 10 0A 10 10 10 00 08 08   ; 34E91 data, read by 30d2b 30d4c 30d51 30d56 (+4)
  CEA1  .byte 08 10 08 12 08 01 00 09 00 11 00                  ; 34EA1 data, read by 30e24 30e19
  CEAC  .byte 0F 0E 02 8F 01 0D 1F 0D 17 0C 30 0C 28 0C 20 05   ; 34EAC
  CEBC  .byte 18 0D 18 15 1B 05 10 0D 10 15 13 00 08 08 08 10   ; 34EBC
  CECC  .byte 08 10 00 0E 01 02 8E 01 01 18 06 12 0C 20 00 18   ; 34ECC
  CEDC  .byte 08 18 0D 18 00 10 08 10 10 10 01 08 09 08 0F 08   ; 34EDC
  CEEC  .byte 0B 00 0E 00 0B 03 02 8E 01 0C 18 0A 15 0B 28 0B   ; 34EEC
  CEFC  .byte 20 01 18 09 18 0D 18 00 10 08 10 0F 10 08 08 10   ; 34EFC
  CF0C  .byte 08 0B 00 12 00 0E F7 01 85 01 0A 06 04 0A 0C 08   ; 34F0C
  CF1C  .byte 00 02 0C 00 0E F7 01 87 01 0A 06 04 0A 0C 08 00   ; 34F1C
  CF2C  .byte 02 0C 00 02 16 08 13 0D F9 01 88 01 09 08 04 0B   ; 34F2C
  CF3C  .byte 0C 09 00 03 08 03 FF FF 0F 05 16 04 0D F8 01 86   ; 34F3C
  CF4C  .byte 01 09 07 04 0A 0C 08 00 02 08 02 0C 00 0A FB 01   ; 34F4C
  CF5C  .byte 85 01 0A 06 04 0A 0C 08 00 02 0C 00 0B FF 01 89   ; 34F5C
  CF6C  .byte 01 0B 10 06 18 03 10 0B 10 00 08 08 08 0E 08 04   ; 34F6C
  CF7C  .byte 00 0C 00 14 F7 01 8B 01 19 09 02 0D 0A 0D 0B 08   ; 34F7C
  CF8C  .byte 13 08 1A 08 00 05 07 05 0F 00 17 00 1F 02 06 FE   ; 34F8C
  CF9C  .byte 01 89 01 0B 10 06 18 03 10 0B 10 00 08 08 08 0E   ; 34F9C
  CFAC  .byte 08 04 00 0C 00 03 FB 00 89 01 04 18 08 18 02 10   ; 34FAC
  CFBC  .byte 0A 10 00 08 08 08 0A 08 01 00 05 00 0B 0E 00 8F   ; 34FBC
  CFCC  .byte 01 08 30 09 28 09 20 11 20 02 18 0A 18 12 18 03   ; 34FCC
  CFDC  .byte 10 0B 10 13 10 00 08 08 08 10 08 00 00 11 00 09   ; 34FDC
  CFEC  .byte 00 02 8C 01 0E 18 09 20 04 18 0C 18 11 18 00 10   ; 34FEC
  CFFC  .byte 08 10 10 10 04 08 0C 08 0F 08 05 00 05 00 03 8D   ; 34FFC
  D00C  .byte 01 0C 18 0C 10 05 20 03 18 0B 18 11 18 00 10 08   ; 3500C
  D01C  .byte 10 10 10 18 10 04 08 0C 08 03 00                  ; 3501C
  D027  .byte 10 05 02 8F 01 09 18 08 10 04 18 0C 18 14 18 00   ; 35027 data, read by 30d39 30d4c 30d51 30d56 (+4)
  D037  .byte 10 08 10 10 10 03 08 0B 08 12 08 03 00 0B 00 13   ; 35037 data, read by 30ddf 30dd1
  D047  .byte 00 18 00 11 05 02 8D 01 10 10 0E 08 01 10 09 10   ; 35047 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  D057  .byte 11 10 00 08 08 08 10 08 17 08 04 00 0C 00 14 00   ; 35057 data, read by 30dd1 30ddf
  D067  .byte 19 00 12 05 02 90 01 10 10 0F 08 10 18 00 10 08   ; 35067 data, read by 30dd1 30ddf 30d39 30d2b (+7)
  D077  .byte 10 10 10 18 10 20 0F 01 08 09 08 11 08 19 08 05   ; 35077 data, read by 30ddf 30e24 30dd1 30e19
  D087  .byte 00 0D 00 15 00 1B 00 10 06 02 90 01 0F 12 0F 0A   ; 35087 data, read by 30ddf 30e24 30dd1 30e19 (+6)
  D097  .byte 0D 18 11 18 00 10 08 10 10 10 16 10 02 08 0A 08   ; 35097 data, read by 30dd1 30ddf
  D0A7  .byte 12 08 17 08 04 00 0C 00 14 00 17 00               ; 350A7 data, read by 30dd1 30ddf
  D0B3  .byte 0E F8 01 90 01 08 0B 10 20 0C 18 14 18 1C 18 21   ; 350B3
  D0C3  .byte 18 03 10 0B 10 13 10 1B 10 21 10 00 08 08 08 10   ; 350C3
  D0D3  .byte 08 18 08 1E 08 84 BF 04 00 0C 00 14 00 1B 00 06   ; 350D3
  D0E3  .byte 00 03 90 01 0C 18 0C 10 06 20 03 18 0B 18 13 18   ; 350E3
  D0F3  .byte 1B 18 22 18 00 10 08 10 10 10 18 10 20 10 23 10   ; 350F3
  D103  .byte 04 08 0C 08 82 C3 0F 08 05 00 0E 10 02 90 01 0D   ; 35103
  D113  .byte 23 0D 1B 0A 28 0E 28 03 20 0B 20 13 20 00 18 05   ; 35113
  D123  .byte 18 0D 18 15 18 03 10 0B 10 13 10 04 08 02 00      ; 35123
  D132  .byte 10 10 01 8F 01 0E 1B 00 1E 08 1E 10 1E 16 1E 05   ; 35132 data, read by 30d39 30d4c 30d51 30d56 (+4)
  D142  .byte 16 0D 16 15 16 1C 16 05 0E 0D 0E 15 0E 1B 0E 14   ; 35142 data, read by 30ddf 30dd1
  D152  .byte 06 17 00 16 05 02 90 01 0E 18 0D 10 08 18 10 19   ; 35152 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  D162  .byte 18 17 00 14 20 15 08 10 10 11 08 08 10 09 18 0B   ; 35162 data, read by 30dd1 30ddf
  D172  .byte 06 00 0B 01 1B 03 23 00                           ; 35172 data, read by 30dd1 30ddf
  D17A  .byte 1C 06 03 90 01 0F 17 0F 0F 01 18 08 18 10 18 18   ; 3517A
  D18A  .byte 18 00 14 08 10 10 10 18 10 1F 14 09 08 11 08 19   ; 3518A
  D19A  .byte 08 21 06 0D 00 16 03 01 8E 01 1C 18 12 18 1A 18   ; 3519A
  D1AA  .byte 22 18 2A 14 12 10 1A 10 22 10 00 0B 08 0B 10 08   ; 351AA
  D1BA  .byte 18 08 14 00 1A 00 10 08 01 8F 01 04 0D 01 10 09   ; 351BA
  D1CA  .byte 10 11 10 00 08 05 08 0D 08 15 08 1D 08 25 08 04   ; 351CA
  D1DA  .byte 00 0C 00 14 00 1C 00 24 00 10 07 01 88 01 0D 04   ; 351DA
  D1EA  .byte 05 08 0D 08 15 08 19 08 00 00 08 00 10 00 10 03   ; 351EA
  D1FA  .byte 01 85 01 0D 00 00 00 08 00 10 00 18 00            ; 351FA
  D207  .byte 0B F8 01 8F 01 14 10 0F 18 04 10 0C 10 14 10 04   ; 35207 data, read by 30d39 30d2b 30d4c 30d51 (+7)
  D217  .byte 08 0C 08 14 08 1C 08 1E 08 00 00 05 00 0D 00 15   ; 35217 data, read by 30ddf 30e24 30dd1 30e19
  D227  .byte 00 1D 00                                          ; 35227 data, read by 30ddf 30e24 30dd1 30e19
  D22A  .byte 0A 08 01 8C 01 04 18 03 20 0F 20 00 18 08 18 0E   ; 3522A
  D23A  .byte 18 02 10 0A 10 03 08 0B 08 06 00 0C 00 0A 05 01   ; 3523A
  D24A  .byte 8B 01 03 14 01 18 09 18 0F 18 00 10 08 10 0C 10   ; 3524A
  D25A  .byte 02 08 0A 08 06 00 0D 00 10 04 02 8E 01 14 18 14   ; 3525A
  D26A  .byte 10 0A 18 12 18 15 18 0A 10 12 10 14 10 04 08 0C   ; 3526A
  D27A  .byte 08 11 08 00 00 08 00 0C 00 14 10 00 86 01 06 10   ; 3527A
  D28A  .byte 0D 10 00 08 08 08 0D 08 0B 00 0F 15 00 86 01 02   ; 3528A
  D29A  .byte 18 08 18 00 10 08 10 06 08 06 00                  ; 3529A
  D2A5  .byte 0F 04 00 8A 01 00 18 08 18 0B 18 00 10 08 10 10   ; 352A5 data, read by 30d39 30d2b 30d4c 30d51 (+7)
  D2B5  .byte 10 16 0F 03 08 06 08 0C 00                        ; 352B5 data, read by 30ddf 30e24 30dd1 30e19
  D2BE  .byte 0E 16 01 90 01 09 22 0B 30 06 28 09 28 03 20 0A   ; 352BE
  D2CE  .byte 20 00 18 08 18 10 18 05 10 0D 10 13 10 08 08 10   ; 352CE
  D2DE  .byte 08 14 08 09 00 28 08 02 8F 01 16 20 14 18 11 20   ; 352DE
  D2EE  .byte 19 20 21 20 09 18 11 18 19 18 09 10 11 10 02 08   ; 352EE
  D2FE  .byte 0A 08 12 08 00 00 0F 00 30 F6 02 8D 01 20 14 1C   ; 352FE
  D30E  .byte 0C 1D 14 25 14 2D 14 13 0C 1B 0C 23 0C 2B 0C 08   ; 3530E
  D31E  .byte 04 10 04 18 04 00 00 0B 02 02 90 01 0A 1A 09 12   ; 3531E
  D32E  .byte 00 21 08 20 10 21 01 19 09 18 11 19 04 10 0C 10   ; 3532E
  D33E  .byte 02 08 07 08 0F 08 03 00 07 00 0F 00 13 02 01 8B   ; 3533E
  D34E  .byte 01 1A 0B 14 10 1C 10 05 08 0D 08 15 08 1D 08 00   ; 3534E
  D35E  .byte 00 08 00 10 00 18 00 10 00 01 8B 01 16 0A 10 10   ; 3535E
  D36E  .byte 18 10 04 08 0C 08 14 08 1C 08 00 00 08 00 10 00   ; 3536E
  D37E  .byte 18 00 28 26 01 8B 01 19 04 00 02 00 00 0A 00 00   ; 3537E
  D38E  .byte 0B 05 00 13 05 00 1A 05 00 00 08 00 07 08 00 0F   ; 3538E
  D39E  .byte 0D 00 17 0D 00 1F 0B 00 22 01 01 8C 01 05 05 00   ; 3539E
  D3AE  .byte 06 00 00 0A 00 00 05 08 00 0C 08 00 02 10 00 0A   ; 353AE
  D3BE  .byte 10 00 0C 10 00 00 18 00 07 18 00 00 20 00 07 20   ; 353BE
  D3CE  .byte 00                                                ; 353CE
  D3CF  .byte 1E 2A 01 8C 01 05 1B 06 20 0A 20 05 18 0C 18 02   ; 353CF data, read by 30d39 30d4c 30d51 30d56 (+4)
  D3DF  .byte 10 0A 10 0C 10 00 08 07 08 00 00 07 00 28 F8 01   ; 353DF data, read by 30ddf 30dd1 30d39 30d4c (+2)
  D3EF  .byte 8B 01 19 09 02 0D 0A 0D 0B 08 13 08 1A 08 00 05   ; 353EF data, read by 30d5d 30d66 30dd1 30ddf
  D3FF  .byte 07 05 0F 00 17 00 1F 02                           ; 353FF data, read by 30dd1 30ddf
  D407  .byte 14 04 03 16 69 0E 28 6A 16 28 6B 02 20 6C 0A 20   ; 35407
  D417  .byte 6D 12 20 6E 1A 20 6F 00 18 70 07 18 71 0F 18 72   ; 35417
  D427  .byte 17 18 73 1F 18 74 00 10 75 06 10 76 0E 10 77 16   ; 35427
  D437  .byte 10 78 1E 10 79 07 08 7A 0A 08 7B 12 08 7C 1A 08   ; 35437
  D447  .byte 7D 0B 00 4C 13 00 14 06 03 16 69 0E 28 6A 16 28   ; 35447
  D457  .byte 6B 02 20 6C 0A 20 6D 12 20 6E 1A 20 6F 00 18 70   ; 35457
  D467  .byte 07 18 71 0F 18 72 17 18 73 1F 18 74 00 10 75 06   ; 35467
  D477  .byte 10 76 0E 10 77 16 10 78 1E 10 4D 06 08 4E 0A 08   ; 35477
  D487  .byte 4F 12 08 50 1A 08 51 0D 00 52 15 00 10 04 03 92   ; 35487
  D497  .byte C0 04 18 0C 18 14 18 1C 18 00 10 06 10 0E 10 16   ; 35497
  D4A7  .byte 10 1E 10 01 08 06 08 0E 08 16 08 1E 08 01 00 08   ; 354A7
  D4B7  .byte 00 10 00 18 00 10 02 03 94 D2 15 20 1D 20 03 18   ; 354B7
  D4C7  .byte 09 18 11 18 19 18 21 18 00 10 06 10 0E 10 16 10   ; 354C7
  D4D7  .byte 1E 10 02 08 0A 08 12 08 1A 08 01 00 08 00 10 00   ; 354D7
  D4E7  .byte 18 00 10 06 FF 92 C0 04 00 83 0C 00 83 14 00 83   ; 354E7
  D4F7  .byte 1C 00 83 00 08 83 06 08 83 0E 08 83 16 08 83 1E   ; 354F7
  D507  .byte 08 83 01 10 83 06 10 83 0E 10 83 16 10 83 1E 10   ; 35507
  D517  .byte 83 01 18 83 08 18 83 10 18 83 18 18 83 1E 08 03   ; 35517
  D527  .byte A4 2A 15 40 1A 40 09 38 11 38 19 38 21 38 29 38   ; 35527
  D537  .byte 31 38 03 30 0B 30 13 30 1B 30 23 30 2B 30 33 30   ; 35537
  D547  .byte 00 28 08 28 10 28 18 28 1F 28 11 20 19 20 21 20   ; 35547
  D557  .byte 28 20 11 18 19 18 21 18 28 18 11 10 19 10 21 10   ; 35557
  D567  .byte 13 08 20 08 23 08 10 00 13 00 16 06 03 9F 4E 0D   ; 35567
  D577  .byte 38 12 38 04 30 0C 30 14 30 01 28 08 28 10 28 18   ; 35577
  D587  .byte 28 02 20 06 20 0E 20 16 20 1E 20 06 18 0E 18 16   ; 35587
  D597  .byte 18 1E 18 00 10 05 10 0D 10 15 10 1D 10 00 08 04   ; 35597
  D5A7  .byte 08 1C 08 22 08 00 00 08 00 20 00 28 00 04 01 03   ; 355A7
  D5B7  .byte 01 6D 00 00                                       ; 355B7

loc_B6_D5BB:                    ; from 30006
  D5BB  20 88 FE  JSR sub_B6_FE88               ; 355BB ×52
  D5BE  20 B2 FE  JSR sub_B6_FEB2               ; 355BE ×48
  D5C1  A9 16     LDA #$16                      ; 355C1 ×48
  D5C3  8D C9 FF  STA $FFC9                     ; 355C3 ×48
  D5C6  A2 9A     LDX #$9A                      ; 355C6 ×48
  D5C8  A0 D7     LDY #$D7                      ; 355C8 ×48
  D5CA  A9 02     LDA #$02                      ; 355CA ×48
  D5CC  20 65 D7  JSR sub_B6_D765               ; 355CC ×48
  D5CF  20 EE D5  JSR sub_B6_D5EE               ; 355CF ×48
  D5D2  A6 10     LDX $10                       ; 355D2 ×48
  D5D4  BD E0 D5  LDA $D5E0,X                   ; 355D4 ×48

loc_B6_D5D7:                    ; from 355db
  D5D7  8D 07 20  STA $2007                     ; 355D7 ×3120
  D5DA  88        DEY                           ; 355DA ×3120
  D5DB  10 FA     BPL loc_B6_D5D7               ; 355DB ×3120
  D5DD  4C FC DA  JMP sub_B6_DAFC               ; 355DD ×48
  D5E0  .byte FF                                                ; 355E0
  D5E1  .byte FF AA FF 00 55 55 FF FF 00 00 00 00 00            ; 355E1 data, read by 355d4

sub_B6_D5EE:                    ; from 355fb 356d9 355cf
  D5EE  A9 23     LDA #$23                      ; 355EE ×678
  D5F0  8D 06 20  STA $2006                     ; 355F0 ×678
  D5F3  A9 C0     LDA #$C0                      ; 355F3 ×678
  D5F5  8D 06 20  STA $2006                     ; 355F5 ×678
  D5F8  A0 40     LDY #$40                      ; 355F8 ×678
  D5FA  60        RTS                           ; 355FA ×678

sub_B6_D5FB:                    ; from 31025 310c8 318a1 32baf 32922 32175 (+5)
  D5FB  20 EE D5  JSR sub_B6_D5EE               ; 355FB ×580

loc_B6_D5FE:                    ; from 35614
  D5FE  BD 18 D6  LDA $D618,X                   ; 355FE ×4579
  D601  F0 13     BEQ loc_B6_D616               ; 35601 ×4579
  D603  85 15     STA $15                       ; 35603 ×4579
  D605  BD 17 D6  LDA $D617,X                   ; 35605 ×4579
  D608  E8        INX                           ; 35608 ×4579
  D609  E8        INX                           ; 35609 ×4579

loc_B6_D60A:                    ; from 35612
  D60A  8D 07 20  STA $2007                     ; 3560A ×37120
  D60D  88        DEY                           ; 3560D ×37120
  D60E  F0 06     BEQ loc_B6_D616               ; 3560E ×37120
  D610  C6 15     DEC $15                       ; 35610 ×36540
  D612  D0 F6     BNE loc_B6_D60A               ; 35612 ×36540
  D614  F0 E8     BEQ loc_B6_D5FE               ; 35614 ×3999

loc_B6_D616:                    ; from 3560e
  D616  60        RTS                           ; 35616 ×580
  D617  .byte 00 11 50 02 10 01 50 02 10 02 55 03 A5 02 55 03   ; 35617 data, read by 35605 355fe
  D627  .byte AA 20 00 08 F0 08 5F 14 AF 04 F5 04 FA 04 FF 10   ; 35627 data, read by 35605 355fe
  D637  .byte FF 40 AA 0C 00 01 40 01 00 03 AA 03 00 01 04 01   ; 35637 data, read by 35605 355fe
  D647  .byte F0 06 AA 05 FF 03 AA 09 50 01 00 03 AA 04 55 01   ; 35647 data, read by 35605 355fe
  D657  .byte 00 0A 00 0C 55 04 00 04 44 01 55 03 00 28 00 11   ; 35657 data, read by 35605 355fe
  D667  .byte 55 0F AA 08 FA 08 FF 10 55 0C AA 01 66 01 55 06   ; 35667 data, read by 35605 355fe
  D677  .byte 89 01 66 01 55 04 11 01 C8 01 B4 01 56 01 55 04   ; 35677 data, read by 35605 355fe
  D687  .byte C1 01 0C 01 AB 01 55 1B 0F 10 00 10 FF 20 FF 28   ; 35687 data, read by 35605 355fe
  D697  .byte AA 18                                             ; 35697 data, read by 35605 355fe
  D699  .byte 00 12 F0 01 5D 01 A2 01 00 05 77 01 D5 01 8A 01   ; 35699
  D6A9  .byte 00 05 CF 01 F3 01 00 1C 00 0A 14 01 90 01 30 01   ; 356A9
  D6B9  .byte 00 05 11 01 9C 01 BB 01 00 05 55 01 99 01 EE 01   ; 356B9
  D6C9  .byte 00 05 55 01 99 01 AA 01 00 06 08 01 0E 01 00 12   ; 356C9

sub_B6_D6D9:                    ; from 32ad6 32d94 32d4e
  D6D9  20 EE D5  JSR sub_B6_D5EE               ; 356D9 ×50

loc_B6_D6DC:                    ; from 356f2
  D6DC  BD F6 D6  LDA $D6F6,X                   ; 356DC ×150
  D6DF  F0 13     BEQ loc_B6_D6F4               ; 356DF ×150
  D6E1  85 15     STA $15                       ; 356E1 ×150
  D6E3  BD F5 D6  LDA $D6F5,X                   ; 356E3 ×150
  D6E6  E8        INX                           ; 356E6 ×150
  D6E7  E8        INX                           ; 356E7 ×150

loc_B6_D6E8:                    ; from 356f0
  D6E8  8D 07 20  STA $2007                     ; 356E8 ×3200
  D6EB  88        DEY                           ; 356EB ×3200
  D6EC  F0 06     BEQ loc_B6_D6F4               ; 356EC ×3200
  D6EE  C6 15     DEC $15                       ; 356EE ×3150
  D6F0  D0 F6     BNE loc_B6_D6E8               ; 356F0 ×3150
  D6F2  F0 E8     BEQ loc_B6_D6DC               ; 356F2 ×100

loc_B6_D6F4:                    ; from 356ec
  D6F4  60        RTS                           ; 356F4 ×50
  D6F5  .byte 00 09 88 01 AA 01 80 01 62 01 10 01 00 03 2A 01   ; 356F5
  D705  .byte 02 01 08 01 55 01 11 01 00 03 C0 01 F0 02 55 01   ; 35705
  D715  .byte 15 01 00 03 CC 01 FF 02 55 01 51 01 AA 03 AF 01   ; 35715
  D725  .byte AF 02 A7 01 A1 01 AA 13 00 09 40 01 DD 01 FF 01   ; 35725
  D735  .byte 30 01 00 04 04 01 DD 01 BB 01 77 01 11 01 00 04   ; 35735
  D745  .byte DD 01 BB 01 55 01 00 04 CC 01 AA 01 AB 01 AA 01   ; 35745
  D755  .byte 02 01 00 03 0C 01 02 01 00 15                     ; 35755
  D75F  .byte 00 30 50 03 F0 0D                                 ; 3575F data, read by 356e3 356dc

sub_B6_D765:                    ; from 310bb 32541 311d5 32baa 32ae4 321ae (+8)
  D765  86 19     STX $19                       ; 35765 ×522
  D767  84 1A     STY $1A                       ; 35767 ×522
  D769  85 15     STA $15                       ; 35769 ×522
  D76B  A0 00     LDY #$00                      ; 3576B ×522

loc_B6_D76D:                    ; from 35797
  D76D  B1 19     LDA ($19),Y                   ; 3576D ×1230
  D76F  8D 06 20  STA $2006                     ; 3576F ×1230
  D772  C8        INY                           ; 35772 ×1230
  D773  D0 02     BNE loc_B6_D777               ; 35773 ×1230
  D775  E6 1A     INC $1A                       ; 35775 inferred, not run

loc_B6_D777:                    ; from 35773
  D777  B1 19     LDA ($19),Y                   ; 35777 ×1230
  D779  8D 06 20  STA $2006                     ; 35779 ×1230
  D77C  C8        INY                           ; 3577C ×1230
  D77D  D0 02     BNE sub_B6_D781               ; 3577D ×1230
  D77F  E6 1A     INC $1A                       ; 3577F inferred, not run

sub_B6_D781:                    ; from 35793 3577d 32b29
  D781  B1 19     LDA ($19),Y                   ; 35781 ×20763
  D783  48        PHA                           ; 35783 ×20763
  D784  29 7F     AND #$7F                      ; 35784 ×20763
  D786  AA        TAX                           ; 35786 ×20763
  D787  BD 6B DA  LDA $DA6B,X                   ; 35787 ×20763
  D78A  8D 07 20  STA $2007                     ; 3578A ×20763
  D78D  C8        INY                           ; 3578D ×20763
  D78E  D0 02     BNE loc_B6_D792               ; 3578E ×20763
  D790  E6 1A     INC $1A                       ; 35790 inferred, not run

loc_B6_D792:                    ; from 3578e
  D792  68        PLA                           ; 35792 ×20763
  D793  10 EC     BPL sub_B6_D781               ; 35793 ×20763
  D795  C6 15     DEC $15                       ; 35795 ×1280
  D797  D0 D4     BNE loc_B6_D76D               ; 35797 ×1280
  D799  60        RTS                           ; 35799 ×572
  D79A  .byte 20 9F A2 22 9F A2 20 EC 50 52 45 53 45 4E 54 D3   ; 3579A data, read by 3576d 35777 35781
  D7AA  .byte 22 2F 3D BE 22 EB 50 52 4F 44 55 43 54 49 4F CE   ; 357AA data, read by 3576d 35777 35781
  D7BA  .byte 20 EC 20 20 20 20 20 20 20 A0 21 04 43 4F 50 59   ; 357BA data, read by 3576d 35777 35781
  D7CA  .byte 52 49 47 48 54 20 31 39 39 31 20 52 41 52 45 20   ; 357CA data, read by 35781
  D7DA  .byte 4C 54 44 AE 20 CA 4C 49 43 45 4E 53 45 44 20 20   ; 357DA data, read by 35781 3576d 35777
  D7EA  .byte 42 D9 21 04 4E 49 4E 54 45 4E 44 4F 20 4F 46 20   ; 357EA data, read by 35781 3576d 35777
  D7FA  .byte 41 4D 45 52 49 43 41 20 49 4E 43 AE 21 86 42 20   ; 357FA data, read by 35781 3576d 35777
  D80A  .byte 41 20 54 20 54 20 4C 20 45 20 54 20 4F 20 41 20   ; 3580A data, read by 35781
  D81A  .byte 44 20 D3 21 CC 53 54 41 52 52 49 4E C7 22 47 50   ; 3581A data, read by 35781 3576d 35777
  D82A  .byte 52 45 53 53 20 53 54 41 52 54 20 54 4F 20 50 4C   ; 3582A data, read by 35781
  D83A  .byte 41 D9 22 E5 43 4F 50 59 52 49 47 48 54 20 31 39   ; 3583A data, read by 35781 3576d 35777
  D84A  .byte 39 31 20 52 41 52 45 20 4C 54 44 AE 23 26 4C 49   ; 3584A data, read by 35781 3576d 35777
  D85A  .byte 43 45 4E 53 45 44 20 54 4F 20 54 52 41 44 45 57   ; 3585A data, read by 35781
  D86A  .byte 45 53 D4 23 47 42 59 20 52 41 52 45 20 43 4F 49   ; 3586A data, read by 35781 3576d 35777
  D87A  .byte 4E 2D 49 54 2C 49 4E 43 AE 23 42 4C 45 56 45 4C   ; 3587A data, read by 35781 3576d 35777
  D88A  .byte A0 20 C7 50 4C 41 59 45 52 20 20 AA 21 2C 47 41   ; 3588A data, read by 35781 3576d 35777
  D89A  .byte 4D 45 20 4F 56 45 D2 21 C7 50 4C 41 59 45 52 20   ; 3589A data, read by 35781 3576d 35777
  D8AA  .byte 20 A9 22 2C 47 41 4D 45 20 4F 56 45 D2 22 CB 50   ; 358AA data, read by 35781 3576d 35777
  D8BA  .byte 52 45 53 53 20 53 54 41 52 D4 23 0B 54 4F 20 43   ; 358BA data, read by 35781 3576d 35777
  D8CA  .byte 4F 4E 54 49 4E 55 C5 23 50 A8                     ; 358CA data, read by 35781 3576d 35777
  D8D4  .byte 22 C7 57 48 45 4E 20 20 53 55 44 44 45 4E 4C D9   ; 358D4
  D8E4  .byte 20 A6 2D 20 54 48 45 20 53 54 4F 52 59 20 53 4F   ; 358E4 data, read by 3576d 35777 35781
  D8F4  .byte 20 46 41 52 20 AD 22 03 4F 4E 45 20 44 41 59 20   ; 358F4 data, read by 35781 3576d 35777
  D904  .byte 50 49 4D 50 4C 45 20 41 4E 44 20 50 52 49 4E 43   ; 35904 data, read by 35781
  D914  .byte 45 53 D3 22 64 41 4E 47 45 4C 49 43 41 20 57 45   ; 35914 data, read by 35781 3576d 35777
  D924  .byte 52 45 20 4F 55 54 20 43 52 55 49 53 49 4E A7 20   ; 35924 data, read by 35781 3576d
  D934  .byte 84 50 49 4D 50 4C 45 20 41 4E 44 20 54 48 45 20   ; 35934 data, read by 35777 35781
  D944  .byte 50 52 49 4E 43 45 53 D3 20 E6 57 45 52 45 20 43   ; 35944 data, read by 35781 3576d 35777
  D954  .byte 41 50 54 55 52 45 44 20 42 59 20 54 48 C5 21 44   ; 35954 data, read by 35781 3576d 35777
  D964  .byte 44 41 52 4B 20 51 55 45 45 4E 20 41 4E 44 20 54   ; 35964 data, read by 35781
  D974  .byte 41 4B 45 4E 20 54 CF 21 A8 41 20 4E 45 41 52 42   ; 35974 data, read by 35781 3576d 35777
  D984  .byte 59 20 50 4C 41 4E 45 54 AE 20 A5 4D 45 41 4E 57   ; 35984 data, read by 35781 3576d 35777
  D994  .byte 48 49 4C 45 2C 20 42 41 43 4B 20 4F 4E 20 54 48   ; 35994 data, read by 35781
  D9A4  .byte C5 21 06 53 50 41 43 45 53 48 49 50 20 56 55 4C   ; 359A4 data, read by 35781 3576d 35777
  D9B4  .byte 54 55 52 45 20 20 AD 21 64 54 48 45 20 42 41 54   ; 359B4 data, read by 35781 3576d 35777
  D9C4  .byte 54 4C 45 54 4F 41 44 53 20 42 41 53 45 2E 2E 2E   ; 359C4 data, read by 35781
  D9D4  .byte AE 20 85 41 4E 44 20 53 4F 2C 20 54 48 45 20 44   ; 359D4 data, read by 35781 3576d 35777
  D9E4  .byte 41 52 4B 20 51 55 45 45 CE 20 C4 49 53 20 44 45   ; 359E4 data, read by 35781 3576d 35777
  D9F4  .byte 46 45 41 54 45 44 20 4F 4E 43 45 20 41 47 41 49   ; 359F4 data, read by 35781
  DA04  .byte 4E 20 AD 21 06 52 45 54 52 45 41 54 49 4E 47 20   ; 35A04 data, read by 35781 3576d 35777
  DA14  .byte 49 4E 54 4F 20 54 48 C5 21 45 53 48 41 44 4F 57   ; 35A14 data, read by 35781 3576d 35777
  DA24  .byte 59 20 4D 41 52 47 49 4E 53 20 4F 46 20 54 48 C5   ; 35A24 data, read by 35781
  DA34  .byte 21 86 47 41 4C 41 58 59 20 54 4F 20 52 45 43 4F   ; 35A34 data, read by 3576d 35777 35781
  DA44  .byte 55 50 20 48 45 D2 21 C5 4C 4F 53 53 45 53 2E 2E   ; 35A44 data, read by 35781 3576d 35777
  DA54  .byte AE 22 25 55 4E 54 49 4C 20 54 48 45 20 4E 45 58   ; 35A54 data, read by 35781 3576d 35777
  DA64  .byte 54 20 54 49 4D 45 2E 2E AE                        ; 35A64 data, read by 35781
  DA6D  .byte 20 AB 4D 45 47 41 20 20 57 41 52 D0 21 28 41 44   ; 35A6D
  DA7D  .byte 56 41 4E 43 45 20 32 20 4C 45 56 45 4C D3         ; 35A7D
  DA8B  .byte 00 FE FF                                          ; 35A8B data, read by 32986 35787
  DA8E  .byte B4 00 BD 00                                       ; 35A8E
  DA92  .byte FD 96 8E 8F                                       ; 35A92 data, read by 32986 35787
  DA96  .byte 0E                                                ; 35A96
  DA97  .byte 0C 0D 0B                                          ; 35A97 data, read by 32986 35787
  DA9A  .byte 0F 01                                             ; 35A9A
  DA9C  .byte 02                                                ; 35A9C data, read by 35787
  DA9D  .byte 03 04 05 06 07 08 09                              ; 35A9D
  DAA4  .byte 0A                                                ; 35AA4 data, read by 35787
  DAA5  .byte 0B 00 00                                          ; 35AA5
  DAA8  .byte 10 11                                             ; 35AA8 data, read by 35787
  DAAA  .byte 00 28                                             ; 35AAA
  DAAC  .byte 12 13 14 15 16 17 18 19 1A                        ; 35AAC data, read by 32986 35787
  DAB5  .byte 1B                                                ; 35AB5
  DAB6  .byte 1C 1D 1E 1F 20 21 22 23 24 25 26 27 28 29 2A      ; 35AB6 data, read by 35787 32986
  DAC5  .byte 2B 45 46 47 3F 27 2A 2B 2C 2D 2E 2F               ; 35AC5

sub_B6_DAD1:                    ; from 329be 321fe 32208 32213 3221b 32dde (+1)
  DAD1  A5 25     LDA $25                       ; 35AD1 ×109040
  DAD3  45 28     EOR $28                       ; 35AD3 ×109040
  DAD5  65 27     ADC $27                       ; 35AD5 ×109040
  DAD7  85 26     STA $26                       ; 35AD7 ×109040
  DAD9  A5 27     LDA $27                       ; 35AD9 ×109040
  DADB  2A        ROL A                         ; 35ADB ×109040
  DADC  E5 28     SBC $28                       ; 35ADC ×109040
  DADE  85 27     STA $27                       ; 35ADE ×109040
  DAE0  45 26     EOR $26                       ; 35AE0 ×109040
  DAE2  85 25     STA $25                       ; 35AE2 ×109040
  DAE4  60        RTS                           ; 35AE4 ×109040

sub_B6_DAE5:                    ; from 35b5c 35b61 32d85 32cc3 32d3f 32d44
  DAE5  A2 06     LDX #$06                      ; 35AE5 ×6
  DAE7  A0 02     LDY #$02                      ; 35AE7 ×6
  DAE9  85 15     STA $15                       ; 35AE9 ×6
  DAEB  4C CB FF  JMP sub_B6_FFCB               ; 35AEB ×6

sub_B6_DAEE:                    ; from 35b29
  DAEE  20 49 A2  JSR sub_B6_A249               ; 35AEE ×97
  DAF1  A9 40     LDA #$40                      ; 35AF1 ×97
  DAF3  85 C9     STA $C9                       ; 35AF3 ×97
  DAF5  A9 00     LDA #$00                      ; 35AF5 ×97
  DAF7  85 CB     STA $CB                       ; 35AF7 ×97
  DAF9  4C 83 A8  JMP sub_B6_A883               ; 35AF9 ×97

sub_B6_DAFC:                    ; from 32178 355dd
  DAFC  A5 2D     LDA $2D                       ; 35AFC ×97
  DAFE  48        PHA                           ; 35AFE ×97
  DAFF  A5 10     LDA $10                       ; 35AFF ×97
  DB01  0A        ASL A                         ; 35B01 ×97
  DB02  0A        ASL A                         ; 35B02 ×97
  DB03  0A        ASL A                         ; 35B03 ×97
  DB04  65 10     ADC $10                       ; 35B04 ×97
  DB06  A8        TAY                           ; 35B06 ×97
  DB07  B9 A4 DB  LDA $DBA4,Y                   ; 35B07 ×97
  DB0A  85 88     STA $88                       ; 35B0A ×97
  DB0C  B9 A5 DB  LDA $DBA5,Y                   ; 35B0C ×97
  DB0F  85 87     STA $87                       ; 35B0F ×97
  DB11  B9 A6 DB  LDA $DBA6,Y                   ; 35B11 ×97
  DB14  85 8A     STA $8A                       ; 35B14 ×97
  DB16  B9 A7 DB  LDA $DBA7,Y                   ; 35B16 ×97
  DB19  85 89     STA $89                       ; 35B19 ×97
  DB1B  B9 A8 DB  LDA $DBA8,Y                   ; 35B1B ×97
  DB1E  85 C7     STA $C7                       ; 35B1E ×97
  DB20  84 17     STY $17                       ; 35B20 ×97
  DB22  BE A9 DB  LDX $DBA9,Y                   ; 35B22 ×97
  DB25  B9 AA DB  LDA $DBAA,Y                   ; 35B25 ×97
  DB28  A8        TAY                           ; 35B28 ×97
  DB29  20 EE DA  JSR sub_B6_DAEE               ; 35B29 ×97
  DB2C  A4 17     LDY $17                       ; 35B2C ×97
  DB2E  B9 AC DB  LDA $DBAC,Y                   ; 35B2E ×97
  DB31  48        PHA                           ; 35B31 ×97
  DB32  B9 AB DB  LDA $DBAB,Y                   ; 35B32 ×97
  DB35  85 15     STA $15                       ; 35B35 ×97
  DB37  29 7F     AND #$7F                      ; 35B37 ×97
  DB39  A0 01     LDY #$01                      ; 35B39 ×97
  DB3B  26 15     ROL $15                       ; 35B3B ×97
  DB3D  90 02     BCC loc_B6_DB41               ; 35B3D ×97
  DB3F  A0 04     LDY #$04                      ; 35B3F ×39

loc_B6_DB41:                    ; from 35b3d
  DB41  20 94 DB  JSR sub_B6_DB94               ; 35B41 ×97
  DB44  A9 06     LDA #$06                      ; 35B44 ×97
  DB46  20 92 DB  JSR sub_B6_DB92               ; 35B46 ×97
  DB49  68        PLA                           ; 35B49 ×97
  DB4A  20 92 DB  JSR sub_B6_DB92               ; 35B4A ×97
  DB4D  A5 10     LDA $10                       ; 35B4D ×97
  DB4F  C9 0D     CMP #$0D                      ; 35B4F ×97
  DB51  D0 18     BNE loc_B6_DB6B               ; 35B51 ×97
  DB53  A0 04     LDY #$04                      ; 35B53 ×3
  DB55  A9 22     LDA #$22                      ; 35B55 ×3
  DB57  20 94 DB  JSR sub_B6_DB94               ; 35B57 ×3
  DB5A  A9 08     LDA #$08                      ; 35B5A ×3
  DB5C  20 E5 DA  JSR sub_B6_DAE5               ; 35B5C ×3
  DB5F  A9 0A     LDA #$0A                      ; 35B5F ×3
  DB61  20 E5 DA  JSR sub_B6_DAE5               ; 35B61 ×3
  DB64  A9 26     LDA #$26                      ; 35B64 ×3
  DB66  20 9B DB  JSR sub_B6_DB9B               ; 35B66 ×3
  DB69  A9 01     LDA #$01                      ; 35B69 ×3

loc_B6_DB6B:                    ; from 35b51
  DB6B  C9 09     CMP #$09                      ; 35B6B ×97
  DB6D  D0 11     BNE loc_B6_DB80               ; 35B6D ×97
  DB6F  A9 20     LDA #$20                      ; 35B6F ×3
  DB71  20 9B DB  JSR sub_B6_DB9B               ; 35B71 ×3
  DB74  A9 22     LDA #$22                      ; 35B74 ×3
  DB76  20 9B DB  JSR sub_B6_DB9B               ; 35B76 ×3
  DB79  A9 24     LDA #$24                      ; 35B79 ×3
  DB7B  20 9B DB  JSR sub_B6_DB9B               ; 35B7B ×3
  DB7E  A9 01     LDA #$01                      ; 35B7E ×3

loc_B6_DB80:                    ; from 35b6d
  DB80  C9 0A     CMP #$0A                      ; 35B80 ×97
  DB82  D0 05     BNE loc_B6_DB89               ; 35B82 ×97
  DB84  A9 1E     LDA #$1E                      ; 35B84 ×5
  DB86  20 9B DB  JSR sub_B6_DB9B               ; 35B86 ×5

loc_B6_DB89:                    ; from 35b82
  DB89  A9 42     LDA #$42                      ; 35B89 ×97
  DB8B  20 92 DB  JSR sub_B6_DB92               ; 35B8B ×97
  DB8E  68        PLA                           ; 35B8E ×97
  DB8F  85 2D     STA $2D                       ; 35B8F ×97
  DB91  60        RTS                           ; 35B91 ×97

sub_B6_DB92:                    ; from 310db 35b46 35b4a 35b8b 311c5 32b9c (+14)
  DB92  A0 01     LDY #$01                      ; 35B92 ×622

sub_B6_DB94:                    ; from 35b41 317cd 317d3 32b97 3217f 31ccb (+6)
  DB94  85 15     STA $15                       ; 35B94 ×1046
  DB96  A2 03     LDX #$03                      ; 35B96 ×1046
  DB98  4C CB FF  JMP sub_B6_FFCB               ; 35B98 ×1046

sub_B6_DB9B:                    ; from 32ba1 32895 3289a 32a80 32a85 32a8a (+9)
  DB9B  A0 07     LDY #$07                      ; 35B9B ×327
  DB9D  85 15     STA $15                       ; 35B9D ×327
  DB9F  A2 12     LDX #$12                      ; 35B9F ×327
  DBA1  4C CB FF  JMP sub_B6_FFCB               ; 35BA1 ×327
  DBA4  .byte 00 00 00 00 08 28 2A 20 0A 00 00 FF 30 40 02 22   ; 35BA4 data, read by 35b07 35b0c 35b11 35b16 (+5)
  DBB4  .byte 8E 02 FF FC 00 00 08 08 22 90 1A 00 10 FF F0 30   ; 35BB4 data, read by 35b32 35b2e 35b07 35b0c (+5)
  DBC4  .byte 0A 22 92 1C 00 00 FF DC 1A 0C 22 98 22 00 0E 17   ; 35BC4 data, read by 35b22 35b25 35b32 35b2e (+5)
  DBD4  .byte 04 08 0E 22 16 24 00 00 FF EC 30 10 22 1E 1C 00   ; 35BD4 data, read by 35b16 35b1b 35b22 35b25 (+5)
  DBE4  .byte 00 0F C0 09 14 22 94 26 00 00 02 00 10 16 22 96   ; 35BE4 data, read by 35b0c 35b11 35b16 35b1b (+5)
  DBF4  .byte 2E 00 00 00 00 09 18 22 94 26 00 00 00 A8 38 1A   ; 35BF4 data, read by 35b2e 35b07 35b0c 35b11 (+5)
  DC04  .byte 22 9C 26 00 00 00 00 30 1C 22 3C 3E 00 00 FF EC   ; 35C04 data, read by 35b25 35b32 35b2e 35b07 (+5)
  DC14  .byte 58 1E 22 9E 40 00 00 01 98 38 20 22 9C 26 08 03   ; 35C14 data, read by 35b1b 35b22 35b25 35b32 (+5)
  DC24  .byte 01 84 AD 00 08 08 08                              ; 35C24 data, read by 35b11 35b16 35b1b 35b22 (+3)
  DC2B  .byte 00 00 08 00                                       ; 35C2B
  DC2F  .byte 0B 02 03 8C 2A 06 18 0C 18 00 10 07 10 0F 10 17   ; 35C2F data, read by 30d2b 30d39 30d4c 30d51 (+7)
  DC3F  .byte 10 00 08 08 08 10 08 18 08 02 00 0A 00 0B 03 03   ; 35C3F data, read by 30e24 30ddf 30e19 30dd1 (+5)
  DC4F  .byte 8B 36 07 18 0C 18 01 10 09 10 10 10 00 08 07 08   ; 35C4F data, read by 30d5d 30d66 30e19 30dd1 (+2)
  DC5F  .byte 0F 08 17 0B 02 00 0A 00 0C 02 03 8C 41 06 18 0E   ; 35C5F data, read by 30e19 30dd1 30e24 30ddf (+7)
  DC6F  .byte 18 02 10 08 10 10 10 18 10 00 08 08 08 10 08 01   ; 35C6F data, read by 30e24 30ddf 30e19 30dd1
  DC7F  .byte 00 06 00 0E 00 1A 03 03 8C 4D 01 18 09 18 11 18   ; 35C7F data, read by 30e24 30ddf 30e19 30dd1 (+7)
  DC8F  .byte 00 10 08 10 10 10 18 10 0B 08 12 08 1A 08 0D 00   ; 35C8F data, read by 30e19 30dd1 30e24 30ddf
  DC9F  .byte 12 00 0A 03 03 8E 59 08 18 10 18 03 10 0B 10 13   ; 35C9F data, read by 30e19 30dd1 30e24 30ddf (+7)
  DCAF  .byte 10 1B 10 01 08 09 08 10 08 18 08 20 09 00 00 07   ; 35CAF data, read by 30e24 30ddf 30e19 30dd1
  DCBF  .byte 00 0F 00 13 03 03 8E 67 00 20 00 18 07 18 0F 18   ; 35CBF data, read by 30e24 30ddf 30e19 30dd1 (+7)
  DCCF  .byte 04 10 0C 10 14 10 05 08 09 08 10 08 18 08 09 00   ; 35CCF data, read by 30e19 30dd1 30e24 30ddf
  DCDF  .byte 10 00 18 00 11 05 03 8B 75 02 10 05 10 0D 10 15   ; 35CDF data, read by 30e19 30dd1 30e24 30ddf (+7)
  DCEF  .byte 10 00 08 07 08 0F 08 17 08 07 00 0F 00 17 00      ; 35CEF data, read by 30e24 30ddf 30e19 30dd1
  DCFE  .byte 0D 03 03 8B 86 00 18 04 18 0C 18 05 10 0D 10 02   ; 35CFE
  DD0E  .byte 08 0A 08 12 08 02 00 08 00 10 00 0F 05 03 8A 91   ; 35D0E
  DD1E  .byte 04 10 0C 10 14 10 00 08 05 08 0D 08 15 08 04 00   ; 35D1E
  DD2E  .byte 09 00 11 00 08 07 03 8A A3 00 18 08 18 00 10 06   ; 35D2E
  DD3E  .byte 10 0E 10 02 08 0A 08 12 08 09 00 11 00 0E 01 03   ; 35D3E
  DD4E  .byte 88 9B 05 10 0B 10 00 08 08 08 10 08 00 00 07 00   ; 35D4E
  DD5E  .byte 0F 00 0B 04 03 0D 86 00 18 87 04 18 88 0C 18 89   ; 35D5E
  DD6E  .byte 05 10 8A 0D 10 8B 02 08 8C 0A 08 82 0F 08 83 17   ; 35D6E
  DD7E  .byte 08 8E 02 00 8F 08 00 84 10 00 85 18 04 08 03 02   ; 35D7E
  DD8E  .byte 82 80 00 00 08 00 04 00 02 81 F8 00 00 04 00 02   ; 35D8E
  DD9E  .byte 81 F9 00 00                                       ; 35D9E
  DDA2  .byte 08 03 02 84 FB 00 08 08 08 00 00 08 00            ; 35DA2 data, read by 30d39 30d4c 30d51 30d56 (+4)
  DDAF  .byte 1E 16 01 89 2D 0A 10 12 10 17 0F 00 08 08 08 10   ; 35DAF
  DDBF  .byte 08 00 00 08 00 0D 00 0C 0C 03 04 36 08 10 36 08   ; 35DBF
  DDCF  .byte 00 37 00 08 37 10 08 09 04 03 24 B1 1C 78 B1 14   ; 35DCF
  DDDF  .byte 70 B2 1C 70 B3 0C 68 B4 14 68 B5 1C 68 B6 04 60   ; 35DDF
  DDEF  .byte B7 0C 60 B8 14 60 B9 1C 60 BA 04 58 BB 0C 58 BC   ; 35DEF
  DDFF  .byte 14 58 BD 1C 58 BE 0A 50 BF 12 50 C0 0C 48 C1 10   ; 35DFF
  DE0F  .byte 48 C0 0B 40 C1 0F 40 C0 0A 38 C1 0E 38 C0 09 30   ; 35E0F
  DE1F  .byte C1 0D 30 C0 08 28 C1 0C 28 C0 07 20 C1 0B 20 C0   ; 35E1F
  DE2F  .byte 06 18 C1 0A 18 C0 05 10 C1 09 10 C0 04 08 C1 08   ; 35E2F
  DE3F  .byte 08 C2 01 00 C3 09 00 05 03 FF 02 C4 00 00 02 C4   ; 35E3F
  DE4F  .byte 04 00 C2 04 04 FF 02 C5 00 01 02 C5 02 00 C2 03   ; 35E4F
  DE5F  .byte 03 02 01 C6 00 00 02 03 02 01 C7 00 00 01 02 02   ; 35E5F
  DE6F  .byte 01 C8 00 00                                       ; 35E6F
  DE73  .byte 09 00 02 87 C9 04 20 00 18 05 18 00 10 04 10 02   ; 35E73 data, read by 30d39 30d2b 30d4c 30d51 (+7)
  DE83  .byte 08 05 08 08 05 02 84 D6 02 08 0A 08 00 00 08 00   ; 35E83 data, read by 30ddf 30e24 30dd1 30e19 (+6)
  DE93  .byte 09 06 00 8C C8 00 1E 08 20 10 20 00 16 08 18 10   ; 35E93 data, read by 30d39 30d4c 30d51 30d56 (+4)
  DEA3  .byte 18 08 10 10 10 07 08 0F 08 06 00 0E 00 04 04 00   ; 35EA3 data, read by 30ddf 30dd1 30d39 30d4c (+2)
  DEB3  .byte 89 D4 0A 10 12 10 16 0E 06 08 0E 08 16 06 00 00   ; 35EB3 data, read by 30d5d 30d66 30dd1 30ddf
  DEC3  .byte 08 00 10 00 03 0C 00 89 DD 00 10 08 10 10 10 18   ; 35EC3 data, read by 30dd1 30ddf 30d39 30d4c (+4)
  DED3  .byte 10 00 08 08 08 10 08 18 08 10 00 0B 05 01 82 E6   ; 35ED3 data, read by 30ddf 30dd1 30d39 30d4c (+4)
  DEE3  .byte 00 00 08 00 03 0A 01 82 E8 00 08 00 00 00 00 20   ; 35EE3 data, read by 30dd1 30ddf 30d39 30d4c (+4)
  DEF3  .byte 0D FE 01 30 FE 08 32 FE 10 34 FE 17 36 FE 08 2A   ; 35EF3 data, read by 30d5d 30dcb 30dd1 30ddf
  DF03  .byte FE 10 2C FE 18 2E FE 10 24 FE 18 26 FE 20 26 FE   ; 35F03 data, read by 30dcb 30dd1 30ddf
  DF13  .byte 10 1C FE 18 1E FE 20 1E 00 00 20 0D FE 20 1E FE   ; 35F13 data, read by 30dd1 30ddf 30dcb 30d39 (+4)
  DF23  .byte 18 1E FE 10 1C FE 20 26 FE 18 26 FE 10 24 FE 18   ; 35F23 data, read by 30dd1 30ddf 30dcb
  DF33  .byte 2E FE 10 2C FE 08 2A FE 17 36 FE 10 34 FE 08 32   ; 35F33 data, read by 30ddf 30dcb 30dd1
  DF43  .byte FE 01 30 00 00 FF 96 AE 0B 18 02 13 18 02 1B 18   ; 35F43 data, read by 30dcb 30dd1 30ddf 30d39 (+6)
  DF53  .byte 02 00 10 02 08 10 02 10 10 02 18 10 02 20 10 02   ; 35F53 data, read by 30deb 30dd1 30ddf
  DF63  .byte 06 08 02 0E 08 02 16 08 02 1E 08 02 06 00 02 0E   ; 35F63 data, read by 30dd1 30ddf 30deb
  DF73  .byte 00 02 16 00 02 1E 00 02 15 18 03 15 10 03 15 08   ; 35F73 data, read by 30ddf 30deb 30dd1
  DF83  .byte 03 09 00 03 11 00 03 19 00 03                     ; 35F83 data, read by 30deb 30dd1 30ddf
  DF8D  .byte 0C 14 03 92 98 08 18 10 18 18 18 00 10 08 10 10   ; 35F8D
  DF9D  .byte 10 18 10 20 10 00 08 08 08 10 08 18 08 20 08 00   ; 35F9D
  DFAD  .byte 00 08 00 10 00 18 00 20 00                        ; 35FAD
  DFB6  .byte 10 05 01 95 70 0C 48 09 40 11 40 03 38 0B 38 13   ; 35FB6 data, read by 30d39 30d2b 30d4c 30d51 (+7)
  DFC6  .byte 38 19 38 00 30 08 30 10 30 17 30 0A 28 12 28 0B   ; 35FC6 data, read by 30ddf 30e24 30dd1 30e19
  DFD6  .byte 20 11 20 0C 18 12 18 0D 10 0F 10 0E 08 0D 00 1A   ; 35FD6 data, read by 30ddf 30e24 30dd1 30e19 (+2)
  DFE6  .byte 04 01 9C 30 13 48 28 48 00 40 0F 40 17 40 26 40   ; 35FE6 data, read by 30d4c 30d51 30d56 30d5d (+5)
  DFF6  .byte 03 38 0B 38 13 38 1B 38 22 38 07 30 0F 30 17 30   ; 35FF6 data, read by 30dd1 30e19 30ddf 30e24
  E006  .byte 1E 30 0E 28 16 28 1E 28 24 28 12 20 1A 20 22 20   ; 36006 data, read by 30dd1 30e19 30ddf 30e24
  E016  .byte 15 18 1D 18 15 10 19 10 14 08 14 00               ; 36016 data, read by 30dd1 30e19 30ddf 30e24
  E022  .byte 1A 04 FF 9C 30 13 00 81 28 00 81 00 08 81 0F 08   ; 36022
  E032  .byte 81 17 08 81 26 08 81 03 10 81 0B 10 81 13 10 81   ; 36032
  E042  .byte 1B 10 81 22 10 81 07 18 81 0F 18 81 17 18 81 1E   ; 36042
  E052  .byte 18 81 0E 20 81 16 20 81 1E 20 81 24 20 81 12 28   ; 36052
  E062  .byte 81 1A 28 81 22 28 81 15 30 81 1D 30 81 15 38 81   ; 36062
  E072  .byte 19 38 81 14 40 81 14 48 81                        ; 36072
  E07B  .byte 1C F4 00 9A 4C 02 28 0A 28 12 28 1A 28 22 28 28   ; 3607B data, read by 30d39 30d2b 30d4c 30d51 (+7)
  E08B  .byte 28 00 20 08 20 10 20 18 20 20 20 28 20 04 18 0C   ; 3608B data, read by 30ddf 30e24 30dd1 30e19
  E09B  .byte 18 14 18 1C 18 24 18 08 10 0F 10 17 10 1F 10 0B   ; 3609B data, read by 30ddf 30e24 30dd1 30e19
  E0AB  .byte 08 13 08 19 08 10 00 17 00                        ; 360AB data, read by 30ddf 30e24 30dd1 30e19
  E0B4  .byte 10 07 FF 93 C0 0E 20 02 0D 18 02 0C 28 00 0E 28   ; 360B4
  E0C4  .byte 00 02 20 00 09 20 00 11 20 00 00 18 00 03 18 00   ; 360C4
  E0D4  .byte 0B 18 00 13 18 00 03 10 00 0A 10 00 12 10 00 08   ; 360D4
  E0E4  .byte 08 00 10 08 00 06 00 00 0B 00 00 13 00 00 08 06   ; 360E4
  E0F4  .byte FF 8F D8 07 20 42 03 20 42 08 18 42 02 18 42 08   ; 360F4
  E104  .byte 10 42 00 10 42 07 08 42 01 08 42 05 00 42 03 00   ; 36104
  E114  .byte 42 03 20 43 08 18 43 04 18 43 08 10 43 00 10 43   ; 36114
  E124  .byte 00 01 06 07 0E 0F 16 17 20 21 29 2A 02 03 08 09   ; 36124
  E134  .byte 10 11 18 19 22 23 2B 2A 00 04 06 0A 12 13 1A 1B   ; 36134
  E144  .byte 24 25 2B 2A 00 01 06 07 0E 0F 1C 1D 26 27 2C 2A   ; 36144
  E154  .byte 02 05 0B 0C 14 15 1E 1F 28 25 2B 2A 02 01 0D 07   ; 36154
  E164  .byte 12 0F 1A 1B 24 25 2B 2A 00 00 02 8C 31 00 28 08   ; 36164
  E174  .byte 28 00 20 08 20 00 18 08 18 00 10 08 10 00 08 08   ; 36174
  E184  .byte 08 00 00 08 00                                    ; 36184
  E189  .byte 08 08 03 84 2F 00 08 08 08 00 00 08 00 A2         ; 36189 data, read by 30d39 30d2b 30d4c 30d51 (+8)
  E197  .byte 70 70 A0 DD 88                                    ; 36197
  E19C  .byte E1                                                ; 3619C data, read by 32a97
  E19D  .byte E2 E2 E4 E2 E3                                    ; 3619D
  E1A2  .byte 18 17 82 01 55 02 83 03 87 05 4E 05 02 0C 04 88   ; 361A2 data, read by 31264 31270 31287 3127d (+1)
  E1B2  .byte 0D 4E 05 02 0C 04 88 15 4E 05 01 0C 82 04 88 1D   ; 361B2 data, read by 31297 31287 3127d
  E1C2  .byte 4D 05 01 0C 82 04 88 25 4D 05 01 0C 82 04 01 05   ; 361C2 data, read by 31287 3127d 31297
  E1D2  .byte 84 2D 42 05 01 31 4D 05 01 0C 82 04 01 05 84 32   ; 361D2 data, read by 31287 3127d 31297
  E1E2  .byte 50 05 02 0C 04 8A 36 4C 05 02 0C 04 8A 40 44 05   ; 361E2 data, read by 31287 3127d 31297
  E1F2  .byte 84 4A 44 05 02 0C 04 8C 4E 4A 05 02 0C 04 8C 5A   ; 361F2 data, read by 31287 3127d 31297
  E202  .byte 4A 05 02 0C 04 8B 66 4B 05 02 0C 04 8B 71 4B 05   ; 36202 data, read by 31287 3127d 31297
  E212  .byte 02 0C 04 84 7C 43 05 83 80 4C 05 05 0C 04 83 05   ; 36212 data, read by 3127d 31297 31287
  E222  .byte 84 44 05 83 85 4C 05 01 0C 82 04 46 05 83 88 43   ; 36222 data, read by 31297 31287 3127d
  E232  .byte 05 82 8B 47 05 01 0C 82 04 46 05 8C 8D 43 05 01   ; 36232 data, read by 31297 31287 3127d
  E242  .byte 0C 82 04 45 05 8D 99 43 05 01 0C 82 04 45 05 8F   ; 36242 data, read by 31297 31287 3127d
  E252  .byte A6 02 B4 0C 82 04 45 05 8E B5 42 C2 01 0C 82 04   ; 36252 data, read by 31297 3127d 31287
  E262  .byte 45 05 8D C3 43 05 01 0C 82 D0 55 D1 01 D2         ; 36262 data, read by 31287 3127d 31297
  E270  .byte 18 07 82 01 55 02 83 03 42 05 84 06 43 05 02 06   ; 36270
  E280  .byte 09 43 05 02 06 09 43 05 01 06 82 09 01 04 87 0B   ; 36280
  E290  .byte 84 0B 01 11 84 0B 01 11 84 0B 03 11 0A 04 87 12   ; 36290
  E2A0  .byte 84 12 01 18 84 12 01 18 84 12 03 18 0A 04 87 19   ; 362A0
  E2B0  .byte 84 19 01 1F 84 19 01 1F 84 19 03 1F 0A 04 87 20   ; 362B0
  E2C0  .byte 84 20 01 26 84 20 01 26 84 20 03 26 0A 04 87 27   ; 362C0
  E2D0  .byte 84 27 01 2D 84 27 01 2D 84 27 02 2D 0A 18 10 82   ; 362D0
  E2E0  .byte 04 55 05 01 0A 82 04 87 2E 47 05 86 35 03 3A 0A   ; 362E0
  E2F0  .byte 04 88 3B 47 05 85 43 42 3B 02 0A 04 88 48 47 05   ; 362F0
  E300  .byte 85 50 42 48 01 0A 82 04 87 55 47 05 85 5C 42 05   ; 36300
  E310  .byte 01 0A 82 04 87 61 47 05 85 68 42 05 01 0A 82 04   ; 36310
  E320  .byte 87 6D 42 3A 8A 74 42 05 01 0A 82 04 87 7E 42 3B   ; 36320
  E330  .byte 88 85 44 05 01 0A 82 04 87 8D 01 48 89 94 44 05   ; 36330
  E340  .byte 01 0A 82 04 48 05 89 9D 44 05 01 0A 82 04 48 05   ; 36340
  E350  .byte 89 A6 44 05 01 0A 82 04 48 05 89 AF 44 05 01 0A   ; 36350
  E360  .byte 82 04 48 05 88 B8 45 05 01 0A 82 04 49 05 87 C0   ; 36360
  E370  .byte 45 05 01 0A 82 04 01 05 84 C7 46 05 82 CB 48 05   ; 36370
  E380  .byte 01 0A 82 CD 55 CE 01 CF 18 10 82 04 48 05 84 2E   ; 36380
  E390  .byte 44 05 01 32 44 05 01 0A 82 04 48 05 86 33 02 32   ; 36390
  E3A0  .byte 39 83 36 42 05 01 0A 82 04 48 05 01 33 85 3A 04   ; 363A0
  E3B0  .byte 36 3D 3F 3D 83 40 01 0A 82 04 48 05 83 43 01 05   ; 363B0
  E3C0  .byte 42 3D 82 46 01 36 82 48 03 3D 4A 0A 82 04 48 05   ; 363C0
  E3D0  .byte 83 4B 01 05 42 3D 85 4E 03 3D 53 0A 82 04 01 05   ; 363D0
  E3E0  .byte 84 54 43 05 01 43 82 58 01 05 42 3D 01 53 83 5A   ; 363E0
  E3F0  .byte 04 05 3D 53 0A 82 04 47 05 84 5D 02 05 3D 82 61   ; 363F0
  E400  .byte 02 40 63 82 37 03 3D 53 0A 82 04 47 05 85 64 01   ; 36400
  E410  .byte 3D 84 69 03 3D 6D 3D 82 6D 82 04 48 05 02 33 3A   ; 36410
  E420  .byte 82 6F 04 3D 71 3D 72 42 3D 04 71 3D 71 73 82 04   ; 36420
  E430  .byte 87 74 02 05 43 82 7B 05 70 3D 71 3D 72 42 3D 04   ; 36430
  E440  .byte 71 3D 71 73 89 7D 01 05 83 4B 05 86 3D 71 3D 72   ; 36440
  E450  .byte 42 3D 02 87 3D 82 87 01 7D 8B 89 06 59 94 3D 40   ; 36450
  E460  .byte 3D 40 42 3D 02 95 3D 82 95 82 04 8B 97 05 05 3D   ; 36460
  E470  .byte A2 3D A3 42 3D 04 53 47 40 A4 82 04 87 A5 45 05   ; 36470
  E480  .byte 04 47 AC 48 53 82 47 84 AD 82 04 01 05 84 B1 47   ; 36480
  E490  .byte 05 84 B5 02 AE B9 43 05 01 0A 82 BA 55 BB 01 BC   ; 36490
  E4A0  .byte 18 17 82 01 55 02 83 03 4E 05 86 06 02 05 0C 82   ; 364A0
  E4B0  .byte 04 4E 05 83 0D 83 09 02 05 0C 82 04 4E 05 83 10   ; 364B0
  E4C0  .byte 83 09 02 05 0C 82 04 4E 05 83 13 83 09 02 05 0C   ; 364C0
  E4D0  .byte 82 04 51 05 83 16 02 05 0C 82 04 51 05 83 19 02   ; 364D0
  E4E0  .byte 05 0C 82 04 01 05 84 1C 4C 05 83 20 02 05 0C 82   ; 364E0
  E4F0  .byte 04 51 05 83 23 02 05 0C 82 04 51 05 83 20 02 05   ; 364F0
  E500  .byte 0C 82 04 51 05 83 26 02 05 0C 82 04 42 05 8A 29   ; 36500
  E510  .byte 45 05 83 26 02 05 0C 82 33 8C 34 45 05 83 26 02   ; 36510
  E520  .byte 05 0C 82 40 8D 41 44 34 83 26 02 05 0C 82 04 01   ; 36520
  E530  .byte 05 8E 4E 42 41 83 26 03 05 0C 04 90 5C 42 05 83   ; 36530
  E540  .byte 26 03 05 0C 04 91 6C 01 05 83 23 03 05 0C 04 91   ; 36540
  E550  .byte 7D 01 05 83 20 02 8E 0C 82 04 95 8F 01 0C 82 04   ; 36550
  E560  .byte 42 05 8F A4 44 05 01 0C 82 04 43 05 8D B3 45 05   ; 36560
  E570  .byte 01 0C 82 04 47 05 85 C0 01 BF 48 05 01 0C 82 C5   ; 36570
  E580  .byte 55 C6 01 C7                                       ; 36580

sub_B6_E584:                    ; from 32929 32dec 32ced 32d70 32df5
  E584  A5 CE     LDA $CE                       ; 36584 ×51
  E586  29 03     AND #$03                      ; 36586 ×51
  E588  85 CE     STA $CE                       ; 36588 ×51
  E58A  A5 BD     LDA $BD                       ; 3658A ×51
  E58C  0A        ASL A                         ; 3658C ×51
  E58D  0A        ASL A                         ; 3658D ×51
  E58E  05 CE     ORA $CE                       ; 3658E ×51
  E590  20 A4 E5  JSR sub_B6_E5A4               ; 36590 ×51
  E593  A9 07     LDA #$07                      ; 36593 ×51
  E595  85 CF     STA $CF                       ; 36595 ×51
  E597  A2 10     LDX #$10                      ; 36597 ×51
  E599  A0 00     LDY #$00                      ; 36599 ×51
  E59B  84 CE     STY $CE                       ; 3659B ×51
  E59D  84 81     STY $81                       ; 3659D ×51
  E59F  84 BB     STY $BB                       ; 3659F ×51
  E5A1  86 BC     STX $BC                       ; 365A1 ×51
  E5A3  60        RTS                           ; 365A3 ×51

sub_B6_E5A4:                    ; from 36590 32adb
  E5A4  85 19     STA $19                       ; 365A4 ×101
  E5A6  4A        LSR A                         ; 365A6 ×101
  E5A7  29 FE     AND #$FE                      ; 365A7 ×101
  E5A9  A8        TAY                           ; 365A9 ×101
  E5AA  B9 BE E6  LDA $E6BE,Y                   ; 365AA ×101
  E5AD  29 07     AND #$07                      ; 365AD ×101
  E5AF  AA        TAX                           ; 365AF ×101
  E5B0  B9 BE E6  LDA $E6BE,Y                   ; 365B0 ×101
  E5B3  4A        LSR A                         ; 365B3 ×101
  E5B4  4A        LSR A                         ; 365B4 ×101
  E5B5  4A        LSR A                         ; 365B5 ×101
  E5B6  85 1D     STA $1D                       ; 365B6 ×101
  E5B8  B9 BD E6  LDA $E6BD,Y                   ; 365B8 ×101
  E5BB  18        CLC                           ; 365BB ×101
  E5BC  69 F2     ADC #$F2                      ; 365BC ×101
  E5BE  85 1C     STA $1C                       ; 365BE ×101
  E5C0  A5 1D     LDA $1D                       ; 365C0 ×101
  E5C2  69 E6     ADC #$E6                      ; 365C2 ×101
  E5C4  85 1D     STA $1D                       ; 365C4 ×101
  E5C6  E8        INX                           ; 365C6 ×101
  E5C7  8A        TXA                           ; 365C7 ×101
  E5C8  29 07     AND #$07                      ; 365C8 ×101
  E5CA  85 1E     STA $1E                       ; 365CA ×101
  E5CC  A9 08     LDA #$08                      ; 365CC ×101
  E5CE  38        SEC                           ; 365CE ×101
  E5CF  E5 1E     SBC $1E                       ; 365CF ×101
  E5D1  29 07     AND #$07                      ; 365D1 ×101
  E5D3  F0 14     BEQ loc_B6_E5E9               ; 365D3 ×101
  E5D5  AA        TAX                           ; 365D5 ×51
  E5D6  A0 07     LDY #$07                      ; 365D6 ×51
  E5D8  B1 1C     LDA ($1C),Y                   ; 365D8 ×51

loc_B6_E5DA:                    ; from 365de
  E5DA  CA        DEX                           ; 365DA ×294
  E5DB  30 04     BMI loc_B6_E5E1               ; 365DB ×294
  E5DD  0A        ASL A                         ; 365DD ×243
  E5DE  4C DA E5  JMP loc_B6_E5DA               ; 365DE ×243

loc_B6_E5E1:                    ; from 365db
  E5E1  85 1B     STA $1B                       ; 365E1 ×51
  E5E3  E6 1C     INC $1C                       ; 365E3 ×51
  E5E5  D0 02     BNE loc_B6_E5E9               ; 365E5 ×51
  E5E7  E6 1D     INC $1D                       ; 365E7 inferred, not run

loc_B6_E5E9:                    ; from 365e5 365d3
  E5E9  A5 19     LDA $19                       ; 365E9 ×101
  E5EB  29 03     AND #$03                      ; 365EB ×101
  E5ED  F0 0D     BEQ loc_B6_E5FC               ; 365ED ×101
  E5EF  85 19     STA $19                       ; 365EF ×1

loc_B6_E5F1:                    ; from 365f6 365fa
  E5F1  20 0F E6  JSR sub_B6_E60F               ; 365F1 ×281
  E5F4  C9 FD     CMP #$FD                      ; 365F4 ×281
  E5F6  D0 F9     BNE loc_B6_E5F1               ; 365F6 ×281
  E5F8  C6 19     DEC $19                       ; 365F8 ×3
  E5FA  D0 F5     BNE loc_B6_E5F1               ; 365FA ×3

loc_B6_E5FC:                    ; from 365ed
  E5FC  A9 00     LDA #$00                      ; 365FC ×101
  E5FE  85 1A     STA $1A                       ; 365FE ×101

loc_B6_E600:                    ; from 3660c
  E600  20 0F E6  JSR sub_B6_E60F               ; 36600 ×16379
  E603  A6 1A     LDX $1A                       ; 36603 ×16379
  E605  E6 1A     INC $1A                       ; 36605 ×16379
  E607  9D 00 07  STA $0700,X                   ; 36607 ×16379
  E60A  C9 FD     CMP #$FD                      ; 3660A ×16379
  E60C  D0 F2     BNE loc_B6_E600               ; 3660C ×16379
  E60E  60        RTS                           ; 3660E ×101

sub_B6_E60F:                    ; from 36600 365f1
  E60F  A2 00     LDX #$00                      ; 3660F ×16660

loc_B6_E611:                    ; from 36635 3662b
  E611  C6 1E     DEC $1E                       ; 36611 ×69740
  E613  10 0E     BPL loc_B6_E623               ; 36613 ×69740
  E615  A0 07     LDY #$07                      ; 36615 ×8712
  E617  84 1E     STY $1E                       ; 36617 ×8712
  E619  B1 1C     LDA ($1C),Y                   ; 36619 ×8712
  E61B  85 1B     STA $1B                       ; 3661B ×8712
  E61D  E6 1C     INC $1C                       ; 3661D ×8712
  E61F  D0 02     BNE loc_B6_E623               ; 3661F ×8712
  E621  E6 1D     INC $1D                       ; 36621 ×49

loc_B6_E623:                    ; from 36613 3661f
  E623  06 1B     ASL $1B                       ; 36623 ×69740
  E625  B0 0A     BCS loc_B6_E631               ; 36625 ×69740
  E627  BD 3B E6  LDA $E63B,X                   ; 36627 ×33783
  E62A  AA        TAX                           ; 3662A ×33783
  E62B  10 E4     BPL loc_B6_E611               ; 3662B ×33783
  E62D  BD 11 E6  LDA loc_B6_E611,X             ; 3662D ×10011
  E630  60        RTS                           ; 36630 ×10011

loc_B6_E631:                    ; from 36625
  E631  BD 66 E6  LDA $E666,X                   ; 36631 ×35957
  E634  AA        TAX                           ; 36634 ×35957
  E635  10 DA     BPL loc_B6_E611               ; 36635 ×35957
  E637  BD 11 E6  LDA loc_B6_E611,X             ; 36637 ×6649
  E63A  60        RTS                           ; 3663A ×6649
  E63B  .byte 29                                                ; 3663B data, read by 36627
  E63C  .byte AB 01                                             ; 3663C
  E63E  .byte 02 A7 A5                                          ; 3663E data, read by 36627
  E641  .byte A4                                                ; 36641
  E642  .byte A3 A2 06 9F 9D 07 09 0A 9A 0C 97 95 0D 92 90 0E   ; 36642 data, read by 36627
  E652  .byte 8E 11 8C 12 8A 89 87 86 16 18 1A 83 1C 1D 1E 20   ; 36652 data, read by 36627
  E662  .byte 22 24 80 27 2A                                    ; 36662 data, read by 36627 36631
  E667  .byte AA                                                ; 36667
  E668  .byte A9 A8                                             ; 36668 data, read by 36631
  E66A  .byte A6                                                ; 3666A
  E66B  .byte 03 04 05                                          ; 3666B data, read by 36631
  E66E  .byte A1 A0                                             ; 3666E
  E670  .byte 9E                                                ; 36670 data, read by 36631
  E671  .byte 9C                                                ; 36671
  E672  .byte 08 9B 0B 99 98 96 94 93 91 8F 0F 10 8D 8B 13 14   ; 36672 data, read by 36631
  E682  .byte 88 15 85 17 19 84 1B 82 81 1F 21 23 25 26 28 20   ; 36682 data, read by 36631 3662d
  E692  .byte 45 54 4F 41 53 52 4E 48 80 49 55 44 4C 59 47 21   ; 36692 data, read by 36637 3662d
  E6A2  .byte 27 43 4D 42 2C 57 50 46 FD 4B 2D                  ; 366A2 data, read by 36637 3662d
  E6AD  .byte 2E                                                ; 366AD
  E6AE  .byte 56 82 81                                          ; 366AE data, read by 3662d 36637
  E6B1  .byte 83 85                                             ; 366B1
  E6B3  .byte 84 86                                             ; 366B3 data, read by 3662d
  E6B5  .byte 87                                                ; 366B5
  E6B6  .byte 22                                                ; 366B6 data, read by 3662d
  E6B7  .byte 5A                                                ; 366B7
  E6B8  .byte 51 4A 58                                          ; 366B8 data, read by 3662d 36637
  E6BB  .byte 88 3F 00 07                                       ; 366BB
  E6BF  .byte EB 02                                             ; 366BF data, read by 365b8 365aa 365b0
  E6C1  .byte AC 0D 88 13 6D 1D 20 23 B8 23 A0 2E 5A 37 35 3F   ; 366C1
  E6D1  .byte E3 3E 9E 46 45 49 CC 4B 62 57 34 5F CD 5F D3 66   ; 366D1
  E6E1  .byte 80 6E 41 74 F7 76 83 7C 16 87 C6 87 88 88         ; 366E1
  E6EF  .byte 4D 96                                             ; 366EF data, read by 365b8 365aa 365b0
  E6F1  .byte 31 9E FD 98 68 AF                                 ; 366F1
  E6F7  .byte 18 BF                                             ; 366F7 data, read by 365b8 365aa 365b0
  E6F9  .byte 68 57 7E 27 B8 75 74 CA 97 5D 14 FC F4 34 4B DD   ; 366F9
  E709  .byte C4 FD 3D 49 58 74 10 D5 7E 90 93 68 27 47 C2 87   ; 36709
  E719  .byte C6 7A 99 4C FE 2F 85 1D AE CF D2 B0 95 4B 19 97   ; 36719
  E729  .byte 5D 6F F7 2C 17 5D 33 7E 66 F8 B5 BF 9F EB 38 33   ; 36729
  E739  .byte DB 27 D6 C9 EE 1D 5D CB DF DA F5 C8 4E DC FD 33   ; 36739
  E749  .byte DB 27 D6 C6 5E 6F 46 54 1A 64 67 17 6E 4D C7 F2   ; 36749
  E759  .byte 96 33 3F C7 28 78 BC D7 28 C6 45 BF AD 17 D2 E0   ; 36759
  E769  .byte BA ED 0F C7 16 DB 29 D6 09 A1 E6 AE 5E C0 00 00   ; 36769
  E779  .byte 00 0A 62 2C EC 1F DF B6 32 F7 69 DF CF BC F5 DC   ; 36779
  E789  .byte A8 51 9D FF 1C D3 E8 59 BE 5B 83 9A F3 54 6F 68   ; 36789
  E799  .byte 34 FD 0B 9D 29 2A FE 5A 5C 0C EB DD 0A 72 19 86   ; 36799
  E7A9  .byte AD BE 17 D1 F0 A1 99 66 32 97 CF CF D8 00 53 B7   ; 367A9
  E7B9  .byte 24 A4 FE F8 9B E3 E8 5F 09 AA F8 9B 7A 7E 54 28   ; 367B9
  E7C9  .byte 13 43 7A 5C 0D E9 88 45 82 5F CF A1 74 28 29 F9   ; 367C9
  E7D9  .byte B9 15 71 A9 57 1A 95 71 A9 57 CB                  ; 367D9
  E7E4  .byte D8 01 29 FC B4 4C 4C F7 AA 2E BB 43 C3 37 E6 6F   ; 367E4 data, read by 365d8 36619
  E7F4  .byte 8B 5B B0 4F 70 EA EE 47 6B B3 F6 87 EA B2 52 B7   ; 367F4 data, read by 36619
  E804  .byte 03 3B 8D 7B A9 75 DA 1F A4 12 F8 DB 9F A7 57 CF   ; 36804 data, read by 36619
  E814  .byte EF 36 99 7B                                       ; 36814 data, read by 36619
  E818  .byte 33 DB 39 AE AF 89 EE 1D 5D C8 54 23 82 E2 87 EA   ; 36818
  E828  .byte EB A7 57 CF EF 36 91 82 EB B4 3F 16 BE 33 0D 66   ; 36828
  E838  .byte 76 53 BD CB D8 8C 73 D1 F4 2F 82 2F F0 E9 8C 66   ; 36838
  E848  .byte 5D 76 83 4F 57 CF EF 36 B1 3D C3 AB A3 51 F0 AA   ; 36848
  E858  .byte 14 AA F9 CF 8C 84 24 DA 09 D3 13 8F 8C F5 32 99   ; 36858
  E868  .byte E8 34 BF 34 96 05 6E A0 5F 21 6C A7 72 F6 7A DD   ; 36868
  E878  .byte 40 95 8D C7 94 B1 38 E9 8C 66 5D 76 85 3A BE 7F   ; 36878
  E888  .byte 79 B5 82 7B 87 57 72 1F 0A 11 7B 9A B4 3C 21 76   ; 36888
  E898  .byte 7F 8E 17 5D 10 EF DE A1 AA 12 CF A6 5E C0 7E 73   ; 36898
  E8A8  .byte 9C CE B9 1F 42 E7 F2 D1 B7 56 D0 FD 21 1C F4 DE   ; 368A8
  E8B8  .byte BD 90 BB 23 F8 DF D4 1A 08 77 EF 50 D5 09 67 DC   ; 368B8
  E8C8  .byte BD F6 18 AC 47 A6 64 94 B1 F4 2F 87 FE 46 7D 15   ; 368C8
  E8D8  .byte 25 50 F0 47 52 9C 86 57 62 76 C5 F4 EE E9 58 46   ; 368D8
  E8E8  .byte 87 85 D7 7E 15 03 E6 F2 C7 6C 6F E1 99 71 5D A1   ; 368E8
  E8F8  .byte E1 1F C4 39 BF 0D 44 38 FF 17 5D 19 97 15 DA 1F   ; 368F8
  E908  .byte B5 46 27 B3 3D B2 EB AD E5 43 F7 57 6B 57 6B 57   ; 36908
  E918  .byte 6B 57 F3 F3 F3 CB D8 05 D7 7E 9D 29 31 BE 5B C1   ; 36918
  E928  .byte B7 F5 B4 1A 65 63 E6 F2 C7 6C 6F E3 AF 6B E6 28   ; 36928
  E938  .byte 7E 2E 1D 57 C7 43 AC 7D 0B A1 FB FF AF 75 DE 6A   ; 36938
  E948  .byte 8F FC D7 F5 97 B0 15 08 E0 96 2E 0B AE 8A 7E 7A   ; 36948
  E958  .byte 62 85 19 7B B4 EF E7 DE 7A E8 D4 7C 28 EE E9 58   ; 36958
  E968  .byte 46 83 4F D0 B3 FB F3 47 CD E5 8E D9 75 DA 1F BE   ; 36968
  E978  .byte 6D F2 1A B2 97 ED EF 3B 97 B0 4E DC FD 33 DB 1B   ; 36978
  E988  .byte 75 30 32 EA 1F 0A A1 E3 37 1D A3 F9 82 7B 87 57   ; 36988
  E998  .byte 72 17 DD 2E BB 43 F7 6B E3 30 D6 67 65 3B D2 E2   ; 36998
  E9A8  .byte 87 EA DE 6F 49 D2 EA F6 4D 57 EB 79 7B EE E3 B1   ; 369A8
  E9B8  .byte CE 92 C2 A5 33 DE 97 57 B2 EB B4 29 35 5F AD 8A   ; 369B8
  E9C8  .byte DE CD B8 57 4F F1 C1 D9 85 D8 F4 1A 5B 92 74 6A   ; 369C8
  E9D8  .byte 22 F7 35 48 5D 9F E3 94 1A 0C C4 33 F5 F1 D0 E9   ; 369D8
  E9E8  .byte 97 B4 5E E6 A9 0B B6 09 EE 1D 5D C8 BA EF 36 7E   ; 369E8
  E9F8  .byte D0 69 66 17 85 17 03 3A 38 8D 61 3B 41 A6 E1 D4   ; 369F8
  EA08  .byte D5 30 EA 23 F9 7C 85 B2 9D A0 D2 A8 47 04 B0 5D   ; 36A08
  EA18  .byte 5E C9 B8 F7 BC CB D9 2B 9F A3 9E 5B CB 94 CE 91   ; 36A18
  EA28  .byte 5C 84 0F F1 CA 1E 0E CC 2E C7 1B 92 74 6A 3E 14   ; 36A28
  EA38  .byte 5D 77 9B 43 C5 F9 A5 D6 58 CF A3 71 E5 2C 4E 2A   ; 36A38
  EA48  .byte 11 C5 0F 0B AE F3 58 EC 1F 42 C6 76 EF 78 5B FA   ; 36A48
  EA58  .byte DA 1F B9 9F 9A C1 3D C3 AB BE 7E 7E 7E 7E CF A1   ; 36A58
  EA68  .byte 73 F3 4C E3 18 72 AF E5 A5 C1 9E DD 0A 7F 7E DE   ; 36A68
  EA78  .byte F0 97 F3 E8 58 8B E2 CB 81 B7 F5 A7 EE 56 C2 11   ; 36A78
  EA88  .byte 85 08 3D F2 13 97 B0 CE 5E 5A 2D 03 10 88 CE FF   ; 36A88
  EA98  .byte 8E 69 75 DA 1E 0D AE DF 16 71 ED 07 9B D1 9E DF   ; 36A98
  EAA8  .byte 4F A1 6C 50 68 22 FC B6 B5 D7 57 72 F7 D8 63 E8   ; 36AA8
  EAB8  .byte 58 DB E1 F3 D5 17 03 F9 44 94 37 F5 0A 5F 1D 0E   ; 36AB8
  EAC8  .byte B0 6D 72 11 D4 A5 89 59 6F EB 7A 3D 0F 16 62 19   ; 36AC8
  EAD8  .byte F8 B8 19 D7 B1 C6 62 19 F9 8A 1F 89 0E 94 5F EE   ; 36AD8
  EAE8  .byte 9D 7F B2 F6 02 A3 13 D9 9E D9 71 04 D1 37 AF 98   ; 36AE8
  EAF8  .byte A1 4E E2 2F BE A5 8E 8D 4B AE F3 67 E8 82 77 17   ; 36AF8
  EB08  .byte F5 0A 37 1C D1 1A EF 34 BA BD 93 3B 7A 7F E4 37   ; 36B08
  EB18  .byte 97 B0 06 76 EF 78 76 F5 02 30 4A D8 A1 49 EE 1D   ; 36B18
  EB28  .byte 5D 1A 97 5D 38 F6 83 CD EA 7E 95 8B A1 F8 8C 1F   ; 36B28
  EB38  .byte 42 F8 57 75 3D CB D8 77 71 D8 E7 49 61 52 99 EF   ; 36B38
  EB48  .byte 4E A1 BA AA 1E 0C CB D6 F4 56 BA 87 AE BA B2 33   ; 36B48
  EB58  .byte 83 3D BA 0D 09 F5 B6 09 EE 1D 5D CB D8 4A E7 E9   ; 36B58
  EB68  .byte 75 D3 1B AA 6B 70 D7 A8 6E AA 87 EB FF 21 B3 10   ; 36B68
  EB78  .byte 89 18 62 7B 87 57 72 F6 7D 0B 33 8B B7 19 D1 32   ; 36B78
  EB88  .byte F5 A6 7C DD C5 0A 26 59 D6 F1 2C 4E 4B F9 F4 2E   ; 36B88
  EB98  .byte 7E 69 9C 63 0F 43 F6 DB FA D2 56 5D 79 0B CE B4   ; 36B98
  EBA8  .byte 1A 15 DE 6B 13 DC 3A BB 97 BE C3 05 D7 4E 3D 9C   ; 36BA8
  EBB8  .byte 89 BD 6D F4 54 95 89 EE 87 8E 7B 67 D0 B6 2A BA   ; 36BB8
  EBC8  .byte FE 42 3A 94 B0 5D 76 85 25 36 9D 42 5E B7 A4 DB   ; 36BC8
  EBD8  .byte CB 79 61 3F 08 C9 29 CB D9 F4 2C 7C 62 3E 96 33   ; 36BD8
  EBE8  .byte 3F F2 33 EE 44 A7 4A 68 78 55 FC B4 FA 16 4D 58   ; 36BE8
  EBF8  .byte 41 0D 51 2C 5C 0F 43 C7 38 5F 1B DB 12 BC 4D 51   ; 36BF8
  EC08  .byte F0 A2 EB B4 3F 48 4B 66 DE 8A DD 41 AF FE 43 47   ; 36C08
  EC18  .byte B8 A1 F8 FF 1C 36 F7 98 95 FD 97 B0 FA 16 20 97   ; 36C18
  EC28  .byte F8 4E BA 1F F9 19 88 EA 53 42 88 CA EA 5D 63 BA   ; 36C28
  EC38  .byte 75 0D D5 0C CB D6 F5 81 BF A8 7E B3 E6 EE 0F FC   ; 36C38
  EC48  .byte 96 E1 5D 60 65 77 43 C1 78 FF 1C B5 E1 EF 53 F3   ; 36C48
  EC58  .byte 07 D0 B2 67 C4 F7 41 A6 DF D6 97 5D 6C 46 57 53   ; 36C58
  EC68  .byte E8 5E 5E C9 97 CE E9 F4 2F 82 2F CB F8 AC 95 BD   ; 36C68
  EC78  .byte CA 87 84 A7 4A 46 79 2C 66 2A 11 C1 29 B4 7C 2A   ; 36C78
  EC88  .byte 85 3F CB 9A 2D 08 C1 F4 2F 82 F3 4F C5 75 D5 DC   ; 36C88
  EC98  .byte BD 81 29 DB 33 DB B9 63 33 AB 65 AB 47 BC 8A 1E   ; 36C98
  ECA8  .byte 1C D7 54 B1 9F 4C 6B F1 9F B2 3B 05 5F 19 D0 F0   ; 36CA8
  ECB8  .byte 4C 47 75 82 7B 87 57 46 A3 E3 EB AC B1 9D 0F 19   ; 36CB8
  ECC8  .byte A1 69 51 57 41 0D C1 2C 17 5D E6 E5 EC 00 FA 17   ; 36CC8
  ECD8  .byte 3F 34 CE 31 87 19 DA 14 EA 64 83 5E A6 4A 96 27   ; 36CD8
  ECE8  .byte 74 5F E6 27 B8 75 75 89 7F A1 4F A1 62 A3 13 D8   ; 36CE8
  ECF8  .byte 8B DC D5 3E 85 F0 ED EA 19 7B 01 3B 73 F4 67 9A   ; 36CF8
  ED08  .byte FE 8B AE 92 9B 58 A1 E1 3D C3 AB B9 12 B9 FA 20   ; 36D08
  ED18  .byte FC BF 8B 93 7B 97 B0 67 9C E6 44 AE 7E 93 42 54   ; 36D18
  ED28  .byte 6E 21 79 D6 87 82 A1 1C 17 5D E6 97 07 FE 6E B4   ; 36D28
  ED38  .byte 7A 5D 76 87 E3 E7 E3 29 DE 91 FF F8 F4 1A 5A 37   ; 36D38
  ED48  .byte 4A 5D 52 7C 0C ED 61 BD BA 99 7B 8A B1 F4 2E 7E   ; 36D48
  ED58  .byte 69 9C 63 0E 33 A7 57 CF F2 C4 F4 28 35 3A BE 7F   ; 36D58
  ED68  .byte 96 27 15 E7 1E 6F E7 91 75 7B 9F B4 3F 6A D7 51   ; 36D68
  ED78  .byte 18 1F 9C 97 93 A5 8A 0D 04 23 0A 10 7B E4 27 2F   ; 36D78
  ED88  .byte 60 08 BD CD 52 17 67 F8 E1 75 DA 0D 2C F3 5F D6   ; 36D88
  ED98  .byte F3 AC 32 F7 69 D6 5F 9F F2 A1 E0 CE CC EB EE 97   ; 36D98
  EDA8  .byte 5D FA 7E 69 9C 4B 19 97 14 3F 0C F3 5F D1 F4 2C   ; 36DA8
  EDB8  .byte 96 2E 28 34 A6 57 69 D3 3E 6E E0 42 5B 36 F7 2F   ; 36DB8
  EDC8  .byte 67 D0 B3 D6 21 11 1A BD 97 5D F8 EB FC C5 0F 05   ; 36DC8
  EDD8  .byte 46 27 B3 E8 5F E6 06 A4 2E C8 FE 5D 76 87 E3 FF   ; 36DD8
  EDE8  .byte 3E 96 33 10 7C 0F 85 50 FC 4B 17 05 D7 4E AF 9F   ; 36DE8
  EDF8  .byte F2 F6 23 5D C1 23 AF F1 75 DE 6C FD 33 89 63 3A   ; 36DF8
  EE08  .byte 1E 37 03 3A 38 8C 90 D6 B0 BB 15 08 E2 87 85 D7   ; 36E08
  EE18  .byte 79 AC 7D 0B 26 7C 0C ED 91 82 56 C5 0F C2 1C 7B   ; 36E18
  EE28  .byte B4 ED C3 AB B9 7B FA 17 3F 34 54 4B 13 99 F3 5E   ; 36E28
  EE38  .byte D8 9E E1 D5 DC A8 78 DD 74 53 F3 D0 D1 2F 77 02   ; 36E38
  EE48  .byte 32 4A 46 76 85 3F C3 B7 2C 4E 3D 97 5D 1B 85 DD   ; 36E48
  EE58  .byte 44 6B B8 A1 FB FA 16 72 4A D2 EB C8 5E 75 A0 D3   ; 36E58
  EE68  .byte 75 97 44 CA ED 3A 61 6D B3 BC 32 F6 75 7C FF 3F   ; 36E68
  EE78  .byte 45 A0 C1 3D C3 AB B9 09 DB 9F B4 3C 7D 4A 6F 45   ; 36E78
  EE88  .byte D6 3B A7 50 79 B5 98 7E 2B B4 1A 12 C5 C0 F3 5C   ; 36E88
  EE98  .byte A3 19 7B AB E3 32 F7 0C 4F 70 EA EE 47 57 CF E4   ; 36E98
  EEA8  .byte D2 BF A8 7E 2B BC D1 1D 26 86 F4 CB D8 0A 8C 4F   ; 36EA8
  EEB8  .byte 62 31 CE 7C 4E CC 2E C9 5D 0A 4F 70 EA EB 13 CC   ; 36EB8
  EEC8  .byte B6 8C BA E8 A7 E7 A1 A2 5E EE 28 34 15 18 9E CE   ; 36EC8
  EED8  .byte AF 9F CC BD 99 CB CB 45 A0 C1 70 EA 96 F7 23 E8   ; 36ED8
  EEE8  .byte 5C E9 4D 0F 1C 6F 96 F0 6D FD 69 2B 10 7E D9 75   ; 36EE8
  EEF8  .byte DA 1F 8C E4 F8 B3 B8 7F 5B DC BD CB A4 AC BE 2F   ; 36EF8
  EF08  .byte 4B AB D9 75 D2 E1 D5 3F 68 78 E7 CD 7B DE D9 B8   ; 36F08
  EF18  .byte D6 FE 25 D2 EB B4 3C 3B 87 F5 A7 E4 23 A9 4B 02   ; 36F18
  EF28  .byte 3B 3A 52 76 23 14 29 FE 58 51 0B BC 8A BB 5A BB   ; 36F28
  EF38  .byte 5A BB 5A BF 9F 9F 9F 9E 5E C0 0B 7F 5A 4A CF FC   ; 36F38
  EF48  .byte 86 C6 F5 8A 1E 1D 45 DB 41 9E 6B DD 58 FA 16 23   ; 36F48
  EF58  .byte 18 9E C6 76 87 EB 38 96 33 1F 1F 1F D7 CB AE F3   ; 36F58
  EF68  .byte 2F 60 8D 5E FF 2C 8F A1 73 F9 68 DB AB 49 5D 0F   ; 36F68
  EF78  .byte 0B AF 21 79 D7 F2 C8 94 E9 48 DB FA D3 E8 5D 0F   ; 36F78
  EF88  .byte 04 1F E3 FC 70 FA 17 C2 4D A0 B5 6E 26 DC BD 80   ; 36F88
  EF98  .byte 7D BA D6 AE 64 72 4A D2 EB AD D0 FD F7 0F EB 7A   ; 36F98
  EFA8  .byte C5 C3 A9 98 FB B9 7B 45 EE 6A 90 BB 60 9E E1 D5   ; 36FA8
  EFB8  .byte DC 8E EE 3B 1C ED 0F 09 61 52 99 EF 4E C3 7B 75   ; 36FB8
  EFC8  .byte 96 27 13 18 CE 87 83 E1 47 53 24 10 DE 7C 75 32   ; 36FC8
  EFD8  .byte BA EF 25 89 E8 34 2E 11 7E 28 FA 16 65 EC EA 65   ; 36FD8
  EFE8  .byte 75 DE 0B 40 85 DD B9 75 DE 6B 14 29 3D C3 AB A6   ; 36FE8
  EFF8  .byte 47 D0 B9 F9 A6 71 8C 39 57 F2 DA 1E 37 07 66 74   ; 36FF8
  F008  .byte E9 75 D2 67 F2 DE 60 B8 A1 F8 FF 2C 28 BA E9 BF   ; 37008
  F018  .byte 9B 2B CB D9 72 6F 4B 83 3E 3B 23 88 4B 66 D2 3F   ; 37018
  F028  .byte D0 FD 5B C9 2C 13 DC 3A BA 35 1F 0A A1 F8 AB E3   ; 37028
  F038  .byte 32 30 5C B3 AD E5 EC EC 31 F4 2C BA CB 1E 8F A1   ; 37038
  F048  .byte 73 F3 4A C5 B1 42 95 5D 58 9E E1 D5 DC BF 21 1D   ; 37048
  F058  .byte 4A 58 95 89 88 F5 DA 1E 29 97 AD 25 73 F4 CE 25   ; 37058
  F068  .byte 8C CB 83 3D BA 0D 35 8B BD E0 A8 47 05 D7 79 A3   ; 37068
  F078  .byte 52 83 41 B5 CD 52 B1 77 BC CB DF D0 B9 F9 A6 71   ; 37078
  F088  .byte 0A 60 94 E9 49 9C BC B4 FA 17 42 97 57 B1 AE 71   ; 37088
  F098  .byte 0A 37 10 BC EA 5C 0C AF 98 CB D8 03 2B E6 18 B8   ; 37098
  F0A8  .byte 75 4B 7A C3 2B E6 32 F6 00 13 4E DC 61 8B 87 54   ; 370A8
  F0B8  .byte B7 AC 50 FC 26 59 D6 C6 FE 3F CB 9B 97 BB AC B1   ; 370B8
  F0C8  .byte 9F 47 E6 9C D7 4A 7E 2B AF 72 C4 F4 3C 56 80 A8   ; 370C8
  F0D8  .byte 47 05 D7 79 AC 13 DC 3A BB 97 B0 19 DB BD E1 F9   ; 370D8
  F0E8  .byte F6 CF A1 7C 11 7F A8 78 C2 EE DC BA CB A4 63 58   ; 370E8
  F0F8  .byte 9E E1 D5 DC BD 80 98 8F 5D 13 2F 5A 5D 74 53 F3   ; 370F8
  F108  .byte D5 0F D3 44 BD DC 4F D3 38 B1 C4 5F 8D D0 F1 E6   ; 37108
  F118  .byte CD A8 5C A3 02 09 7C 63 54 7F 8E 50 FD DD 74 65   ; 37118
  F128  .byte EE D3 B7 0E AE E5 EC 11 84 58 27 B8 75 77 23 E8   ; 37128
  F138  .byte 5C E9 48 CE D0 A7 35 D2 9F 8A C5 8F 85 0C C5 D7   ; 37138
  F148  .byte 79 AA 19 FA 83 4D D6 5D 13 2B B4 E9 D9 34 6D 1A   ; 37148
  F158  .byte 77 99 7B 3E 85 8D BF C5 D6 58 F4 5D 74 AE BD CF   ; 37158
  F168  .byte DA 0D 31 FF FB 1D 4C 9B D6 5E 6F 5D F3 47 52 96   ; 37168
  F178  .byte 28 34 DD 65 8F 43 E6 F2 C0 CE CC EB EE D0 69 BA   ; 37178
  F188  .byte EF 36 7E 88 27 71 7F 0D C7 36 87 8A 35 DE 69 75   ; 37188
  F198  .byte 7B 26 76 F4 FF C8 6C CB D9 75 D3 37 E6 6F 8B 5B   ; 37198
  F1A8  .byte 88 C6 27 B1 9D 1E 87 82 0B ED 63 CB 78 C2 2F CB   ; 371A8
  F1B8  .byte 66 15 2D EB 12 B9 FB 43 C7 FB F0 B8 81 99 66 7F   ; 371B8
  F1C8  .byte 8E 17 57 BC BD 84 89 9F 13 D8 CE A6 5B E5 A7 D0   ; 371C8
  F1D8  .byte B9 FC B6 87 86 71 77 B8 2E B2 E9 FD F9 90 87 35   ; 371D8
  F1E8  .byte 07 E6 D0 F0 FA 17 CE EA 7C B7 A7 F8 E0 E7 6E 53   ; 371E8
  F1F8  .byte 7A FA 87 EB 3E 6E E0 DC 29 82 E1 D5 2D EE 5E EE   ; 371F8
  F208  .byte BA 56 59 D7 78 7D 0B 26 4C 9B 65 8E A2 ED A1 43   ; 37208
  F218  .byte F7 D9 96 DB 17 5D 3F AF 97 5D E5 06 87 D0 B9 D2   ; 37218
  F228  .byte 93 FB A5 39 7B 46 BB 82 EB A6 71 2C 4E 67 B7 D2   ; 37228
  F238  .byte E1 79 D5 8A 1E 37 5D 27 B8 75 74 CF 6C CE 25 89   ; 37238
  F248  .byte CC A8 34 AD 01 F0 A1 EC 9F 5B 60 CD 7F 77 2F 67   ; 37248
  F258  .byte 77 1D 8E 74 96 15 29 9E F4 FA 17 3F 96 D0 FD 3C   ; 37258
  F268  .byte D3 6F 7B AA 1C 52 E6 B2 58 A1 F8 BA E9 9B F3 37   ; 37268
  F278  .byte C5 AD F2 A1 FA 67 49 9F 9B FD 69 62 7B 87 57 72   ; 37278
  F288  .byte F6 00 1F 42 C9 EE 1D 5D 1F 9B 43 F6 AD FF 2C 4A   ; 37288
  F298  .byte F5 3F 0D C7 94 B1 3D 0F DA D0 25 82 EB A2 31 C4   ; 37298
  F2A8  .byte AB 2F 77 5D 23 09 F8 45 FE 25 D1 68 31 70 EA E8   ; 372A8
  F2B8  .byte D6 83 4F 60 4E DC FD 33 83 FC 70 95 99 7B 15 18   ; 372B8
  F2C8  .byte 9E CC F6 CB 88 26 8C 7F 92 B7 16 C5 0A 22 FC BF   ; 372C8
  F2D8  .byte 99 8B B8 6F AC 33 B3 3A FB A4 89 9F 14 28 FD EA   ; 372D8
  F2E8  .byte F9 A7 D0 B2 EA F6 7D 0B 11 8C 4F 74 3C 59 D3 38   ; 372E8
  F2F8  .byte 96 33 1F 1F 1F D7 CB AE F3 2F 60 8E A5 2C 23 A9   ; 372F8
  F308  .byte 4B 08 EA 52 35 3F BE 26 FA 87 87 77 65 8C CF A1   ; 37308
  F318  .byte 65 77 9B 90 8D 5E C7 C5 06 95 E1 04 EB F5 F1 67   ; 37318
  F328  .byte 57 C4 39 2E EE 5E CF A1 64 F7 0E AE 8F CD 15 BF   ; 37328
  F338  .byte E5 89 5E A7 EA 14 7E FA 96 33 3F C7 09 5B 03 E1   ; 37338
  F348  .byte 47 65 89 B4 95 0F 05 46 27 B1 17 C5 97 02 A5 D7   ; 37348
  F358  .byte 41 08 96 2E 83 4F D0 B6 0A EF 34 95 93 43 7B D1   ; 37358
  F368  .byte A9 41 A7 E8 5F 0B 93 7A 9F 85 6B 72 EE 99 7B C4   ; 37368
  F378  .byte 22 C5 D5 EC 6D FD 6F 46 F4 6D D5 E6 3E 15 41 A5   ; 37378
  F388  .byte 1A EE 09 19 ED 8D BA 98 91 9E DD 06 9C 3F 6F EF   ; 37388
  F398  .byte 37 C2 84 6B B8 24 67 B7 43 C7 0F DB F9 89 0B EA   ; 37398
  F3A8  .byte DD 29 F8 DC 28 5A 14 3F 4D BC 9B 96 33 3B 0D ED   ; 373A8
  F3B8  .byte D6 58 CD A9 43 C5 32 F5 A7 D0 B6 0F F3 F2 58 ED   ; 373B8
  F3C8  .byte BE 26 DC BD 81 9C 17 5E 42 F3 A9 75 D3 B7 BA 9A   ; 373C8
  F3D8  .byte 1E 3D 41 F3 AE DD C9 89 EE 1D 5D 1A 8F 85 50 A2   ; 373D8
  F3E8  .byte 2F 73 54 85 D9 FE 38 33 10 CF D7 C7 43 A6 5E C9   ; 373E8
  F3F8  .byte 4E D9 9E DD CB 13 8E 23 58 4E 89 87 55 06 98 FE   ; 373F8
  F408  .byte 23 B2 E2 8E 6B AA 58 CF A4 62 87 EE EB A7 77 1D   ; 37408
  F418  .byte 8E 75 83 B0 C5 0F D5 BF AD 26 7E 6B 04 F7 0E AE   ; 37418
  F428  .byte E5 EC 09 5C FD 1C 6D DA 3D 25 82 EB BC DA 1E 33   ; 37428
  F438  .byte DC 3A BB 91 D8 63 D6 EA 03 93 44 26 87 85 75 D4   ; 37438
  F448  .byte 3E 14 7D 0B 9D 29 19 D2 3D 3F D9 7B 00 47 67 E6   ; 37448
  F458  .byte 8D BF A9 62 73 38 85 50 69 AE BA 91 7F 8A EF 35   ; 37458
  F468  .byte 89 EE 1D 5D 6B 43 F4 A8 C4 F6 27 6C 5A 06 21 1C   ; 37468
  F478  .byte BD FD 0B E0 FC E4 66 F8 9B 44 61 69 50 F8 C4 7D   ; 37478
  F488  .byte 42 8D EB 0C BD DA 75 97 E7 F6 25 FC 95 88 BF 71   ; 37488
  F498  .byte 3D D0 F0 FF 1C 2E BA 7F 79 AC BA BD 9F 42 E7 E6   ; 37498
  F4A8  .byte D0 69 CE 25 8C CB 81 9D 19 86 D9 96 33 A1 F8 85   ; 374A8
  F4B8  .byte D9 E5 BC F8 EC 46 32 F6 1F 42 CE D5 D2 91 07 F8   ; 374B8
  F4C8  .byte FF 1C 3E 85 F2 85 24 DA 1B CB 96 37 13 6B 1D 4C   ; 374C8
  F4D8  .byte 9B DA EB AB A3 52 87 ED 19 5D 4F A1 7C 13 2F 2D   ; 374D8
  F4E8  .byte EE 5E F9 BD B1 FB D5 F3 54 C2 2F CB FF AF 6B E6   ; 374E8
  F4F8  .byte F5 8A 14 BA E9 8D FC DB 13 BE 5A 99 FA 67 12 C6   ; 374F8
  F508  .byte 65 C5 0F DE 70 26 5E B4 71 98 6D 9C A8 7E EA ED   ; 37508
  F518  .byte 6A ED 6A ED 6A FE 7E 7E 79 7B 23 D3 FC 35 26 9D   ; 37518
  F528  .byte B8 C0 F8 50 DB FA D1 BF A8 34 14 FF 31 70 EA 96   ; 37528
  F538  .byte F7 2F 77 5D 19 86 D9 9F A3 D9 75 D1 98 BB 86 D8   ; 37538
  F548  .byte A1 E3 D8 60 CF 6C E6 BA BE 62 7B 87 57 46 A5 0F   ; 37548
  F558  .byte D3 E1 44 D0 DE 91 81 50 8E 0C BD 86 7B 67 35 D5   ; 37558
  F568  .byte F3 04 F7 0E AE E4 7D 0B A1 E1 9C 5D B9 C7 9B 4B   ; 37568
  F578  .byte AE 9C 85 6E 2C 7C 2A 87 ED 5B FD 7D D2 EB A3 30   ; 37578
  F588  .byte DB 39 7B AE FC C4 F7 0E AE E4 7D 0B 2A FE 5A 5D   ; 37588
  F598  .byte 79 BB 42 8C C3 6C F4 B8 15 BF D7 DD 19 DF F1 CD   ; 37598
  F5A8  .byte 2E BB 41 A7 8F 68 3C DE 86 53 08 F4 5F 47 4A 68   ; 375A8
  F5B8  .byte 7E EE 0B 87 53 5A EB F9 6E 0C BD A0 BB 23 07 D0   ; 375B8
  F5C8  .byte BE 1C 5E 31 2C 66 76 B1 BD 62 85 27 B8 75 75 87   ; 375C8
  F5D8  .byte C2 8E 3C DA 5D 74 E3 D9 71 43 C2 EB A3 30 DB 23   ; 375D8
  F5E8  .byte D9 75 D1 98 BB 86 CC BD 93 2F 9D D3 E8 5F 0C F9   ; 375E8
  F5F8  .byte BB 82 B2 56 F7 2A 1E 3F 42 E7 F2 D1 51 8D 25 63   ; 375F8
  F608  .byte E6 F2 C6 5E C8 AB 18 8C 8B AE 8C C3 6C F4 7E 68   ; 37608
  F618  .byte E9 4D 0A 2B 7F AF BA A1 F0 A2 EB A2 2F CB AE BA   ; 37618
  F628  .byte BB 43 F6 FC D3 B7 24 A4 74 CB CB 72 F6 B4 07 C2   ; 37628
  F638  .byte 85 42 38 1F 0A 39 0B C2 8B AE FD 43 C3 38 61 95   ; 37638
  F648  .byte D8 8D 77 9A 5D 77 E9 D2 93 FF 3E A1 FB 8C 27 E2   ; 37648
  F658  .byte 44 CF 83 D6 21 1C BD 82 1C DB BF 8E A0 BC 7A F9   ; 37658
  F668  .byte 89 EE 1D 5D 1A 94 3C 59 5D 92 B2 5D C4 F6 47 96   ; 37668
  F678  .byte F0 FB 6F 2F 72 B9 FA 5C 9B D2 E0 BE 3F 96 A4 8C   ; 37678
  F688  .byte 17 5D A1 E3 32 65 8C F7 8D 51 96 33 DE 31 3D C3   ; 37688
  F698  .byte AB B9 7B 00 33 DB 1C CF 92 41 8C D7 F7 72 A1 FB   ; 37698
  F6A8  .byte 4E DC FD 1B 8B 97 93 DE 99 7B 0A C2 54 46 0B 96   ; 376A8
  F6B8  .byte 75 B1 F1 39 9E DD 0F 0E 6B AB E3 FC 70 73 FC B3   ; 376B8
  F6C8  .byte AD 8D 4B AE D0 A3 2F 76 9D B8 75 74 7E 69 0B B7   ; 376C8
  F6D8  .byte EC B3 AD E5 EC 00 BA EF 36 7E 8E 4D C7 68 FE A1   ; 376D8
  F6E8  .byte F8 E4 25 3B C6 B3 43 F6 F7 94 29 34 37 2C 4E 2D   ; 376E8
  F6F8  .byte 06 27 B8 75 77 23 B0 C1 EB 75 0A 1F A7 26 88 49   ; 376F8
  F708  .byte 9F 37 70 57 5D 59 7B 47 53 34 37 A5 C1 75 D3 9B   ; 37708
  F718  .byte E5 09 5D CA 30 C5 0A 32 F7 69 DF CF BC F5 DC 8B   ; 37718
  F728  .byte AC BA 4B A2 35 DE 6D 06 9F A1 62 63 BA 7D 0B E1   ; 37728
  F738  .byte 5D 75 77 2F 66 22 22 23 22 44 CF 8C 45 8C EA 65   ; 37738
  F748  .byte BE 5B 43 C3 E8 59 D4 5D B4 0E CC B6 CA BF 96 8D   ; 37748
  F758  .byte BA B6 87 8C AC BA CB A7 F7 E6 44 89 9F 07 77 68   ; 37758
  F768  .byte 7E A5 3B 66 71 2C 66 5C 15 7F 2D A1 F8 B8 33 DB   ; 37768
  F778  .byte 30 FD BF B2 F7 34 37 A5 C1 75 D2 E1 1D E3 0C C7   ; 37778
  F788  .byte DD 61 F0 AA 14 4E DC FD 3B BA 23 57 B3 E8 5C FE   ; 37788
  F798  .byte 5A 67 17 97 BB 84 08 FE 5D 74 46 38 95 30 5C 3A   ; 37798
  F7A8  .byte A5 BD CA 87 EA 68 6F 47 C2 8C F6 C6 F4 97 FA 1F   ; 377A8
  F7B8  .byte 99 FA 16 29 F9 B9 7B BA CB 19 F4 7E 68 98 8F 52   ; 377B8
  F7C8  .byte C4 E2 D0 3F F2 1B A1 E3 5D E6 91 86 09 EE 1D 5D   ; 377C8
  F7D8  .byte C8 6A 3E 15 43 F1 21 50 37 AF 81 68 19 7B 4E DC   ; 377D8
  F7E8  .byte FD 1B 7F 5A 26 5E B4 BA E9 9F 37 71 43 C5 B7 9A   ; 377E8
  F7F8  .byte B2 C6 B1 9A FE EB 0F 85 0D C5 C7 28 7E E3 02 D0   ; 377F8
  F808  .byte 2E 0B AE 97 08 50 FC 47 F2 EB A5 C2 3B C3 2F 65   ; 37808
  F818  .byte 61 3F 15 92 0D 6B 08 31 3D C3 AB B9 17 5D A1 45   ; 37818
  F828  .byte 3F 3D 0D 12 F7 71 3F 47 B2 EB A5 C2 04 7F A1 E3   ; 37828
  F838  .byte 75 D2 E1 1D E1 F9 D7 DB 11 79 5C B1 9D 0F C5 C0   ; 37838
  F848  .byte CE 93 73 5D BD 56 5E C4 75 29 62 57 3F 48 C6 9D   ; 37848
  F858  .byte 6D D2 93 B7 A8 50 A7 F8 E0 E4 F7 0E A6 23 1A 67   ; 37858
  F868  .byte 27 C5 89 D7 42 87 E3 FC 70 B8 75 7A 96 14 65 43   ; 37868
  F878  .byte F1 9C 17 04 AD 8C D7 F7 72 F6 22 FF 2A 59 C3 04   ; 37878
  F888  .byte F7 0E AE E4 5D 74 66 59 D0 FD 66 BF A7 E8 CB CD   ; 37888
  F898  .byte E8 7C 28 BA ED 0F D2 1C 96 26 DE F4 97 4E BF 96   ; 37898
  F8A8  .byte AB 2F 60 23 58 8C 87 4F 25 9D 6C CD 7F 74 CA 87   ; 378A8
  F8B8  .byte 85 D7 79 B3 F4 C4 5D 65 89 C4 CB D6 97 5D A1 E3   ; 378B8
  F8C8  .byte D4 77 6C EB 7A 94 91 FC EA E6 9B 7B DA 1F AB 82   ; 378C8
  F8D8  .byte 64 EB F0 85 D9 75 8E ED 0F DC C9 8C F3 D5 1D 96   ; 378D8
  F8E8  .byte 17 DD EE 5E C0 46 11 C8 FA 16 66 BF BA 42 F3 AD   ; 378E8
  F8F8  .byte BD 0F 16 62 ED 3A 5D 5E CE FA 92 52 3E 15 43 F7   ; 378F8
  F908  .byte 35 5F 92 EB 6E 35 3E 85 CE AA 1F B6 DF D6 8E 7F   ; 37908
  F918  .byte 8E 5A F1 A6 5E C8 F4 FF 30 9D B9 FA 33 CD 7F 44   ; 37918
  F928  .byte 2E CB AE D0 A7 61 4F D1 F0 A3 F3 AF 1E 9A FF 88   ; 37928
  F938  .byte 50 D4 95 CF DA 0D 04 1F 97 F1 72 6F 4C BD         ; 37938
  F946  .byte A3 57 B2 EB A7 FE 46 73 F4 CE 25 89 C8 C3 14 3C   ; 37946 data, read by 365d8 36619
  F956  .byte 27 B8 75 74 FC B2 33 DB 19 79 BD 17 5D E6 D0 FD   ; 37956 data, read by 36619
  F966  .byte 3E 14 7F E7 C5 D7 44 23 9E 8C BD A3 57 54 FF 3C   ; 37966 data, read by 36619
  F976  .byte E3 7A F8 62 76 5D 47 66 DC 6C FF 95 0F 09 4E 94   ; 37976 data, read by 36619
  F986  .byte 99 CB CB 4F 9E 71 97 51 D9 B7 1B 42 92 FE 7D 0B   ; 37986 data, read by 36619
  F996  .byte 15 18 9E CC F6 C6 5E 6F 45 77 9B 42 88 CA EA 21   ; 37996 data, read by 36619
  F9A6  .byte 26 D0 4E 8F 85 0F 8C F5 32 99 CC BD A1 5D 44 C8   ; 379A6 data, read by 36619
  F9B6  .byte BA BD 88 BF 44 1E 58 FE B4 97 14 3C 11 7B 9A B9   ; 379B6 data, read by 36619
  F9C6  .byte 11 E9 FE 60 43 8F 35 CA 6D 25 DA 1E 31 E5 BC 63   ; 379C6 data, read by 36619
  F9D6  .byte 35 FD D6 13 B7 3F 4C E0 FF 1C A1 F8 95 97 59 74   ; 379D6 data, read by 36619
  F9E6  .byte B9 37 A6 5E CF B7 B9 17 5D 14 FC F4 34 4B DD C1   ; 379E6 data, read by 36619
  F9F6  .byte F9 D7 DB A1 44 2B 18 D5 17 07 5F E3 B5 D3 BB 8B   ; 379F6 data, read by 36619
  FA06  .byte 3E 85 D0 A5 61 BD 61 9D 99 D7 DD 3E 85 90 CF 94   ; 37A06 data, read by 36619
  FA16  .byte A1 7D 4F D4 28 8E F3 71 3D 9F F7 53 2C 66 5C 41   ; 37A16 data, read by 36619
  FA26  .byte 9C 42 8C BD 84                                    ; 37A26 data, read by 36619
  FA2B  .byte 7A 7F 98 9E E1 D5 D1 A9 F4 2C B7 F5 B4 1A 5C E6   ; 37A2B
  FA3B  .byte F6 C7 C2 89 4E 94 93 3A 53 43 C6 58 2E BA 32 F7   ; 37A3B
  FA4B  .byte 69 DA BB 7D BD E7 72 F7 9C 59 71 05 C2 F3 A9 FE   ; 37A4B
  FA5B  .byte 38 7D 0B 62 AB AF E5 42 8E 7F D4 44 25 9F 58 1C   ; 37A5B
  FA6B  .byte FF A8 8D C6 3B 7B CE D0 68 3E 14 7D 0B 33 5F DD   ; 37A6B
  FA7B  .byte A1 FB 9B 8F DA 8F 85 0C AF 98 32 F6 12 2A FE 5B   ; 37A7B
  FA8B  .byte 89 EC EE EE 0E AE 6A 8F 41 A5 52 EB 6E 93 FB C9   ; 37A8B
  FA9B  .byte 2B E6 9D 96 26 DA 1E 29 7E D9 72 6F 4F A1 67 F7   ; 37A9B
  FAAB  .byte 92 75 59 7B 11 AB AA 7F 9C 6F 5F 0C 17 59 63 3E   ; 37AAB
  FABB  .byte 99 C5 D0 69 B8 82 B1 67 F8 E1 F4 2C 54 23 8A 14   ; 37ABB
  FACB  .byte BA EF 37 2F C8 CF 6C 65 E6 F4 57 79 AC 0F 85 50   ; 37ACB
  FADB  .byte F1 94 E9 48 8B F1 B3 E8 5F 06 E4 9F 47 F8 E5 0F   ; 37ADB
  FAEB  .byte DF D0 B6 09 B9 F3 56 5D 99 6F 72 F6 45 58 56 BF   ; 37AEB
  FAFB  .byte 18 2B 08 8B C2 EE F7 8E CA 7E A1 4E BA BC FE 85   ; 37AFB
  FB0B  .byte 89 8E E8 F8 51 21 19 63 CF E8 5D 0A 4F 70 EA E9   ; 37B0B
  FB1B  .byte 34 2D 2A C4 F6 7F 96 75 B3 E8 5F 28 78 22 FF 10   ; 37B1B
  FB2B  .byte BB 23 F8 E2 0E 86 F0 65 F3 32 F7 57 6B 57 6B 57   ; 37B2B
  FB3B  .byte 6B 57 6B 57 F3 F3 F3 C8 99 F9 A5 C5 0F 1B E7 C7   ; 37B3B
  FB4B  .byte D0 BE 09 5C DE 87 CD E5 8F C8 6B 43 C2 79 96 D1   ; 37B4B
  FB5B  .byte 92 B9 FA 46 13 F0 95 CD E8 BA BD D0 FD 67 16 7D   ; 37B5B
  FB6B  .byte 0B 2E B2 E9 FD F8 C5 06 87 51 76 D0 67 9A F7 5C   ; 37B6B
  FB7B  .byte BD 95 7C 8F CE BE D8 FD 24 21 CD 54 A6 BD 57 9D   ; 37B7B
  FB8B  .byte 06 97 26 86 D0 4E DE 8F 85 0B BB DE 50 A7 94 A6   ; 37B8B
  FB9B  .byte B8 E7 C7 F8 E1 75 D2 B0 DE 9D 92 B5 8A 14 7C 28   ; 37B9B
  FBAB  .byte 72 B0 86 A7 7B D3 FB C9 2B E6 9F E3 94 3F 77 5D   ; 37BAB
  FBBB  .byte 19 D7 F4 3E 14 56 5D A1 FB 68 96 F9 E7 F1 37 21   ; 37BBB
  FBCB  .byte FD 6F 3B 95 0A 5D 65 D1 50 DB CB 03 3A 98 C6 7D   ; 37BCB
  FBDB  .byte 2E 06 F7 2A 1F BA BB 5A BB 5A BB 5A BF 9F 9F 9F   ; 37BDB
  FBEB  .byte 9E 5E C4 5F A5 D5 EC E6 BA 53 F1 75 D1 9D ED D0   ; 37BEB
  FBFB  .byte A7 D0 B2 67 C0 A8 C8 6D B6 DB C8 90 8C 61 5B CA   ; 37BFB
  FC0B  .byte 1E 28 D5 EC E4 3F 6C F2 5A 6D 7C D1 F0 AA 1E 1F   ; 37C0B
  FC1B  .byte F9 19 F6 71 3B 9F 4B 7E DE 89 97 AD CB F2 A1 E0   ; 37C1B
  FC2B  .byte DB 6D E5 E7 E7 E7 35 61 B4 32 F3 F3 F3 9B 8B C4   ; 37C2B
  FC3B  .byte D5 32 A0 D3 35 75 1C 8B AE FD E7 E7 E6 DB 6D B7   ; 37C3B
  FC4B  .byte E7 E7 E7 43 C6 DF B7 BE 7E 7E 6D B6 D5 B6 EA D7   ; 37C4B
  FC5B  .byte 38 85 79 F9 F9 FB 46 AF 67 E5 91 21 31 DB C8 BA   ; 37C5B
  FC6B  .byte CB A4 CF 89 EE 87 83 3B 91 29 DB 2E BA 29 F9 E8   ; 37C6B
  FC7B  .byte 68 97 BB 83 2A 0D 28 F2 31 99 2E 8C ED DE F0 BA   ; 37C7B
  FC8B  .byte BE 28 78 F2 59 D6 D8 53 F3 D1 2E 9D BE 46 33 DE   ; 37C8B
  FC9B  .byte 50 FD 5D 5F 02 65 9D 6F 23 3E 73 9C CA 87 84 8A   ; 37C9B
  FCAB  .byte BD E9 F4 2D 81 97 BB 4E DC 3A BB 95 0F DC A7 6C   ; 37CAB
  FCBB  .byte 85 DD B9 5D E6 99 7B 02 46 6B DE F4 FA 16 75 32   ; 37CBB
  FCCB  .byte 41 0D E7 D4 1A 7A B9 BD 6F 3A 5D 65 8F 47 D0 B9   ; 37CCB
  FCDB  .byte F9 B4 3C 50 E6 DD FC 56 2C ED AF FF F6 0A AE BF   ; 37CDB
  FCEB  .byte 95 0F 04 75 29 63 E8 58 A8 C4 F6 4D 5D 7B 2E BB   ; 37CEB
  FCFB  .byte 43 C5 4F CF 42 5D 5F 17 57 B3 5F B2 4F D9 50 FD   ; 37CFB
  FD0B  .byte DC 92 93 1B F9 B6 5C 9B D6 28 7E 26 7B B4 E8 98   ; 37D0B
  FD1B  .byte 75 77 2F 60 72 19 86 AD BE 17 DF C8 65 2F 9E 72   ; 37D1B
  FD2B  .byte DC A8 53 A8 6B FA 2E 0F A1 7C 1A 25 EE E0 C8 AB   ; 37D2B
  FD3B  .byte F9 6D 0F 0B AC 77 4F 29 27 4E A5 7D AB 5A C2 08   ; 37D3B
  FD4B  .byte 6F 3B 43 C2 6E 2F B5 D5 1F 42 F8 4D C7 C4 96 DF   ; 37D4B
  FD5B  .byte 7C FC FC E8 7E 91 D4 A5 81 51 89 EC 46 39 CF 9A   ; 37D5B
  FD6B  .byte D0 F1 94 E9 49 CD ED C7 34 FA 16 33 17 5F 3A 1E   ; 37D6B
  FD7B  .byte 3F 42 CE E2 2C CE 19 65 3B CE 88 C9 29 A1 F8 41   ; 37D7B
  FD8B  .byte FE 3F C7 0B AC BA 65 EF 11 91 75 97 49 9F 13 D8   ; 37D8B
  FD9B  .byte CE 97 C5 EE 43 7F 50 F1 DC 5C B9 A2 B7 FE E3 BA   ; 37D9B
  FDAB  .byte 77 EE DE B6 C5 0F D3 3A F7 B8 19 F8 72 68 5A 09   ; 37DAB
  FDBB  .byte DA 1F B8 FE 36 B9 97 D6 A9 86 59 96 33 A1 E3 D4   ; 37DBB
  FDCB  .byte C9 BD 6B F9 DE 6F 5B 7D C8 67 6E F7 94 3C 55 2E   ; 37DCB
  FDDB  .byte BA 08 6B F1 83 9A E9 1A 25 CA 6F 4C 50 F0 67 7F   ; 37DDB
  FDEB  .byte C7 34 EC 37 B7 59 63 33 9A E9 4F D4 3F 18 7E DF   ; 37DEB
  FDFB  .byte C5 5D 04 37 1D CA 87 8B AA 51 D6 3F C2 F1 6F 2C   ; 37DFB
  FE0B  .byte 1F F9 AF EB B9 7B                                 ; 37E0B
  FE11  .byte E3 E7 87 E4 7A 9F A4 CF 8F A3 02 31 1E A5 A5 61   ; 37E11 data, read by 36619
  FE21  .byte 3A 00 05 AF 8C C1 6B C6 35 20 00 FC 9A E5 31 33   ; 37E21 data, read by 36619
  FE31  .byte F9 6F 31 D0 0E AF 9F C9 A5 7F 00 00 1E 9F 98 7B   ; 37E31 data, read by 36619
  FE41  .byte AC FD 12 F2 E0 07 94 27 D3 72 E6 CF D2 58 FF BC   ; 37E41 data, read by 36619
  FE51  .byte C4 4B 17 C5 AB 78 6F E6 CC 95 AB 78 5E F3 8E 5A   ; 37E51 data, read by 36619
  FE61  .byte D9 DE 80 01 C7 B3 8F 36 80 00 04 C9 96 33 DE 35   ; 37E61 data, read by 36619
  FE71  .byte 46 58 CF 78 01 75 D3 9B E5 09 5D CA 30 00 FC 6D   ; 37E71 data, read by 36619
  FE81  .byte F3 D5 2A 30 00 01 ED                              ; 37E81 data, read by 36619

sub_B6_FE88:                    ; from 310b2 317c3 311bd 32b8d 355bb 3288d (+12)
  FE88  AD 02 20  LDA $2002                     ; 37E88 ×633
  FE8B  A9 16     LDA #$16                      ; 37E8B ×633
  FE8D  8D C9 FF  STA $FFC9                     ; 37E8D ×633
  FE90  20 98 FE  JSR sub_B6_FE98               ; 37E90 ×633
  FE93  A9 06     LDA #$06                      ; 37E93 ×633
  FE95  8D B9 FF  STA $FFB9                     ; 37E95 ×633

sub_B6_FE98:                    ; from 37e90
  FE98  A9 20     LDA #$20                      ; 37E98 ×1266
  FE9A  8D 06 20  STA $2006                     ; 37E9A ×1266
  FE9D  A9 00     LDA #$00                      ; 37E9D ×1266
  FE9F  8D 01 20  STA $2001                     ; 37E9F ×1266
  FEA2  8D 06 20  STA $2006                     ; 37EA2 ×1266
  FEA5  AA        TAX                           ; 37EA5 ×1266
  FEA6  A0 04     LDY #$04                      ; 37EA6 ×1266

loc_B6_FEA8:                    ; from 37eac 37eaf
  FEA8  8D 07 20  STA $2007                     ; 37EA8 ×1296036
  FEAB  CA        DEX                           ; 37EAB ×1296036
  FEAC  D0 FA     BNE loc_B6_FEA8               ; 37EAC ×1296036
  FEAE  88        DEY                           ; 37EAE ×5060
  FEAF  D0 F7     BNE loc_B6_FEA8               ; 37EAF ×5060
  FEB1  60        RTS                           ; 37EB1 ×1262

sub_B6_FEB2:                    ; from 37ebd 355be
  FEB2  A2 00     LDX #$00                      ; 37EB2 ×579

sub_B6_FEB4:                    ; from 30ef6
  FEB4  A9 F8     LDA #$F8                      ; 37EB4 ×579

loc_B6_FEB6:                    ; from 37eba
  FEB6  9D 00 02  STA $0200,X                   ; 37EB6 ×148224
  FEB9  E8        INX                           ; 37EB9 ×148224
  FEBA  D0 FA     BNE loc_B6_FEB6               ; 37EBA ×148224
  FEBC  60        RTS                           ; 37EBC ×579

sub_B6_FEBD:                    ; from 31020 317c6 311c0 32b90 32890 32a73 (+8)
  FEBD  20 B2 FE  JSR sub_B6_FEB2               ; 37EBD ×531

sub_B6_FEC0:                    ; from 30ef9
  FEC0  8E 03 20  STX $2003                     ; 37EC0 ×531
  FEC3  A9 02     LDA #$02                      ; 37EC3 ×531
  FEC5  8D 14 40  STA $4014                     ; 37EC5 ×531
  FEC8  60        RTS                           ; 37EC8 ×531
  FEC9  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37EC9
  FED9  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37ED9
  FEE9  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37EE9
  FEF9  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37EF9
  FF09  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37F09
  FF19  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37F19
  FF29  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37F29
  FF39  .byte FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ; 37F39
  FF49  .byte FF FF FF FF FF FF FF 8D B9 FF 4C 74 8E            ; 37F49

loc_B6_FF56:                    ; from 305db
  FF56  A8        TAY                           ; 37F56 ×214
  FF57  99 B3 FF  STA $FFB3,Y                   ; 37F57 ×214
  FF5A  4C 4B 85  JMP loc_B6_854B               ; 37F5A ×214

loc_B6_FF5D:                    ; from 30591
  FF5D  A9 05     LDA #$05                      ; 37F5D ×1714
  FF5F  8D B8 FF  STA $FFB8                     ; 37F5F ×1714
  FF62  .byte B1 1B A0 06 8C B9 FF                              ; 37F62
  FF69  4C 94 85  JMP loc_B6_8594               ; 37F69 ×1714
  FF6C  .byte FF FF FF FF FF FF FF FF FF FF FF FF 8D B6 FF 20   ; 37F6C
  FF7C  .byte C9 FE A9 00 8D B3 FF 60                           ; 37F7C

sub_B6_FF84:                    ; from 3281a
  FF84  85 3E     STA $3E                       ; 37F84 ×23691
  FF86  29 10     AND #$10                      ; 37F86 ×23691
  FF88  09 03     ORA #$03                      ; 37F88 ×23691
  FF8A  A8        TAY                           ; 37F8A ×23691
  FF8B  99 B3 FF  STA $FFB3,Y                   ; 37F8B ×23691
  FF8E  .byte 20 C9 FE A5 3E A8 99 B3 FF                        ; 37F8E
  FF97  60        RTS                           ; 37F97 ×23691
  FF98  86 76     STX $76                       ; 37F98 ×781
  FF9A  85 75     STA $75                       ; 37F9A ×781
  FF9C  A9 06     LDA #$06                      ; 37F9C ×781
  FF9E  A2 00     LDX #$00                      ; 37F9E ×781
  FFA0  8E B3 FF  STX $FFB3                     ; 37FA0 ×781
  FFA3  .byte 4C C9 FE A6 76 A5 2E A8 99 B3 FF                  ; 37FA3
  FFAE  A4 77     LDY $77                       ; 37FAE ×781
  FFB0  A5 75     LDA $75                       ; 37FB0 ×781
  FFB2  40        RTI                           ; 37FB2 ×781
  FFB3  .byte 00 01 02 03 04 05                                 ; 37FB3 data, read by 37fd6 37fe4
  FFB9  .byte 06                                                ; 37FB9
  FFBA  .byte 07                                                ; 37FBA data, read by 37fd6
  FFBB  .byte 08 09 0A 0B 0C 0D 0E 0F 10 11 12 13 14 15 16      ; 37FBB
  FFCA  .byte 17                                                ; 37FCA data, read by 37fd6

sub_B6_FFCB:                    ; from 31fb3 326e3 3119f 32887 35b98 35ba1 (+19)
  FFCB  A9 00     LDA #$00                      ; 37FCB ×55626
  FFCD  09 06     ORA #$06                      ; 37FCD ×55626
  FFCF  85 2D     STA $2D                       ; 37FCF ×55626
  FFD1  A5 13     LDA $13                       ; 37FD1 ×55626
  FFD3  48        PHA                           ; 37FD3 ×55626
  FFD4  86 13     STX $13                       ; 37FD4 ×55626
  FFD6  B9 B3 FF  LDA $FFB3,Y                   ; 37FD6 ×55626
  FFD9  99 B3 FF  STA $FFB3,Y                   ; 37FD9 ×55626
  FFDC  20 00 80  JSR sub_B6_8000               ; 37FDC ×172717
  FFDF  A4 2D     LDY $2D                       ; 37FDF ×172452
  FFE1  68        PLA                           ; 37FE1 ×172452
  FFE2  85 13     STA $13                       ; 37FE2 ×172452
  FFE4  B9 B3 FF  LDA $FFB3,Y                   ; 37FE4 ×172452
  FFE7  99 B3 FF  STA $FFB3,Y                   ; 37FE7 ×172452
  FFEA  60        RTS                           ; 37FEA ×55365

sub_B6_FFEB:                    ; from 37fec 37fef 32633 3263d 3199d 319ad (+4)
  FFEB  CA        DEX                           ; 37FEB ×160280162
  FFEC  D0 FD     BNE sub_B6_FFEB               ; 37FEC ×160280162
  FFEE  88        DEY                           ; 37FEE ×666755
  FFEF  D0 FA     BNE sub_B6_FFEB               ; 37FEF ×666755
  FFF1  60        RTS                           ; 37FF1 ×96243
  FFF2  .byte A9 00 8D B3 FF 4C F2 FF                           ; 37FF2
  FFFA  .byte 98 FF                                             ; 37FFA data, read by 31056 31092 31095 31098 (+22)
  FFFC  .byte F2 FF C9 FE                                       ; 37FFC
