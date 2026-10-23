; bank 4 — PRG $20000-$27FFF, mapped at $8000-$FFFF


sub_B4_8000:                    ; from 27fdc
  8000  6C 13 00  JMP ($0013)                   ; 20000 ×366

jt_B4_8003:                    ; from 20000
  8003  4C 07 80  JMP loc_B4_8007               ; 20003 ×366

loc_B4_8006:                    ; from 2002b
  8006  60        RTS                           ; 20006 ×366

loc_B4_8007:                    ; from 20003
  8007  A6 15     LDX $15                       ; 20007 ×366
  8009  AD 02 20  LDA $2002                     ; 20009 ×366
  800C  BD A5 80  LDA $80A5,X                   ; 2000C ×366
  800F  85 01     STA $01                       ; 2000F ×366
  8011  BD A6 80  LDA $80A6,X                   ; 20011 ×366
  8014  85 02     STA $02                       ; 20014 ×366
  8016  A0 00     LDY #$00                      ; 20016 ×366
  8018  B1 01     LDA ($01),Y                   ; 20018 ×366
  801A  AA        TAX                           ; 2001A ×366
  801B  C8        INY                           ; 2001B ×366
  801C  B1 01     LDA ($01),Y                   ; 2001C ×366
  801E  8D 06 20  STA $2006                     ; 2001E ×366
  8021  8E 06 20  STX $2006                     ; 20021 ×366
  8024  84 00     STY $00                       ; 20024 ×366

loc_B4_8026:                    ; from 20082
  8026  A4 00     LDY $00                       ; 20026 ×954
  8028  C8        INY                           ; 20028 ×954
  8029  B1 01     LDA ($01),Y                   ; 20029 ×954
  802B  F0 D9     BEQ loc_B4_8006               ; 2002B ×954
  802D  85 05     STA $05                       ; 2002D ×588
  802F  C8        INY                           ; 2002F ×588
  8030  B1 01     LDA ($01),Y                   ; 20030 ×588
  8032  85 06     STA $06                       ; 20032 ×588
  8034  C8        INY                           ; 20034 ×588
  8035  B1 01     LDA ($01),Y                   ; 20035 ×588
  8037  85 07     STA $07                       ; 20037 ×588
  8039  84 00     STY $00                       ; 20039 ×588
  803B  A0 00     LDY #$00                      ; 2003B ×588
  803D  B1 06     LDA ($06),Y                   ; 2003D ×588
  803F  85 1B     STA $1B                       ; 2003F ×588
  8041  C8        INY                           ; 20041 ×588
  8042  B1 06     LDA ($06),Y                   ; 20042 ×588
  8044  85 1C     STA $1C                       ; 20044 ×588
  8046  C8        INY                           ; 20046 ×588
  8047  A9 00     LDA #$00                      ; 20047 ×588
  8049  85 1A     STA $1A                       ; 20049 ×588
  804B  A5 05     LDA $05                       ; 2004B ×588
  804D  0A        ASL A                         ; 2004D ×588
  804E  26 1A     ROL $1A                       ; 2004E ×588
  8050  0A        ASL A                         ; 20050 ×588
  8051  26 1A     ROL $1A                       ; 20051 ×588
  8053  0A        ASL A                         ; 20053 ×588
  8054  26 1A     ROL $1A                       ; 20054 ×588
  8056  0A        ASL A                         ; 20056 ×588
  8057  26 1A     ROL $1A                       ; 20057 ×588
  8059  85 19     STA $19                       ; 20059 ×588
  805B  A9 00     LDA #$00                      ; 2005B ×588
  805D  38        SEC                           ; 2005D ×588
  805E  E5 19     SBC $19                       ; 2005E ×588
  8060  85 19     STA $19                       ; 20060 ×588
  8062  A9 00     LDA #$00                      ; 20062 ×588
  8064  E5 1A     SBC $1A                       ; 20064 ×588
  8066  85 1A     STA $1A                       ; 20066 ×588

loc_B4_8068:                    ; from 2007c 200a3 20080
  8068  B1 06     LDA ($06),Y                   ; 20068 ×730612
  806A  C8        INY                           ; 2006A ×730612
  806B  D0 02     BNE loc_B4_806F               ; 2006B ×730612
  806D  E6 07     INC $07                       ; 2006D ×2612

loc_B4_806F:                    ; from 2006b
  806F  C5 1B     CMP $1B                       ; 2006F ×730612
  8071  F0 16     BEQ loc_B4_8089               ; 20071 ×730612
  8073  C5 1C     CMP $1C                       ; 20073 ×695839
  8075  F0 0E     BEQ loc_B4_8085               ; 20075 ×695839
  8077  8D 07 20  STA $2007                     ; 20077 ×678840
  807A  E6 19     INC $19                       ; 2007A ×678840
  807C  D0 EA     BNE loc_B4_8068               ; 2007C ×678840
  807E  E6 1A     INC $1A                       ; 2007E ×2655
  8080  D0 E6     BNE loc_B4_8068               ; 20080 ×2655

loc_B4_8082:                    ; from 2009d
  8082  4C 26 80  JMP loc_B4_8026               ; 20082 ×588

loc_B4_8085:                    ; from 20075
  8085  A2 FF     LDX #$FF                      ; 20085 ×16999
  8087  D0 02     BNE loc_B4_808B               ; 20087 ×16999

loc_B4_8089:                    ; from 20071
  8089  A2 00     LDX #$00                      ; 20089 ×34773

loc_B4_808B:                    ; from 20087
  808B  B1 06     LDA ($06),Y                   ; 2008B ×51772
  808D  85 05     STA $05                       ; 2008D ×51772
  808F  C8        INY                           ; 2008F ×51772
  8090  D0 02     BNE loc_B4_8094               ; 20090 ×51772
  8092  E6 07     INC $07                       ; 20092 ×119

loc_B4_8094:                    ; from 200a1 20090
  8094  8E 07 20  STX $2007                     ; 20094 ×295576
  8097  E6 19     INC $19                       ; 20097 ×295576
  8099  D0 04     BNE loc_B4_809F               ; 20099 ×295576
  809B  E6 1A     INC $1A                       ; 2009B ×1374
  809D  F0 E3     BEQ loc_B4_8082               ; 2009D ×1374

loc_B4_809F:                    ; from 20099
  809F  C6 05     DEC $05                       ; 2009F ×295510
  80A1  D0 F1     BNE loc_B4_8094               ; 200A1 ×295510
  80A3  F0 C3     BEQ loc_B4_8068               ; 200A3 ×51706
  80A5  C9 80     CMP #$80                      ; 200A5 inferred, not run
  80A7  .byte D5 80 DB 80 E1 80 E7 80 CF 80                     ; 200A7 data, read by 2000c 20011
  80B1  .byte F9 80                                             ; 200B1
  80B3  .byte FF 80 05 81 0B 81 23 81 29 81 11 81               ; 200B3 data, read by 2000c 20011
  80BF  .byte F3 80                                             ; 200BF
  80C1  .byte 17 81 1D 81                                       ; 200C1 data, read by 2000c 20011
  80C5  .byte 3B 81                                             ; 200C5
  80C7  .byte 41 81                                             ; 200C7 data, read by 2000c 20011
  80C9  .byte C0 12 D4 78 88 00                                 ; 200C9
  80CF  .byte C0 02 D4 78 88 00 00 10 FF C7 8D 00 40 03 80 95   ; 200CF data, read by 20018 2001c 20029 20030 (+1)
  80DF  .byte 9A 00 00 00 FF 9F 9D 00 00 10 2B 08 AB 04 E3 8B   ; 200DF data, read by 20035 20029 20018 2001c (+1)
  80EF  .byte 08 47 81 00                                       ; 200EF data, read by 20029 20030 20035
  80F3  .byte C0 1B 04 E3 8B 00 A0 02 40 04 8C 00               ; 200F3
  80FF  .byte 00 10 FF 55 C5 00 00 10 FF 83 B9 00 00 10 FF FB   ; 200FF data, read by 20018 2001c 20029 20030 (+1)
  810F  .byte AC 00 00 10 FF CE E1 00 00 10 90 F2 ED 00 00 10   ; 2010F data, read by 20035 20029 20018 2001c (+1)
  811F  .byte E0 04 F4 00 00 10 FF 8F CD 00 00 10 C4 64 D7 06   ; 2011F data, read by 20029 20030 20035 20018 (+1)
  812F  .byte 17 E1 14 17 E1 06 DA E0 06 DA E0 00               ; 2012F data, read by 20030 20035 20029
  813B  .byte A0 02 44 70 84 00                                 ; 2013B
  8141  .byte 00 03 36 BE 81 00 02 06 0F 3F 7E F9 FC 6F 70 7F   ; 20141 data, read by 20018 2001c 20029 20030 (+4)
  8151  .byte 00 0F 31 47 73 3F 3F 3F F0 FC 7E FF 3E FE 3C 3C   ; 20151 data, read by 20068
  8161  .byte 00 F0 FC FE FC E0 C0 C0 38 1F 1C 0F 0C 07 03 03   ; 20161 data, read by 20068
  8171  .byte 1F 0F 0F 07 07 03 01 00 78 70 38 F0 60 40 C0 C0   ; 20171 data, read by 20068
  8181  .byte 02 09 1C 3E 33 33 3F 7F FF 00 1C 7E 7F 1F 21 60   ; 20181 data, read by 20068 2008b
  8191  .byte F1 00 70 F8 CC CC FC FC FC 00 70 F8 FC 7D 87 82   ; 20191 data, read by 20068
  81A1  .byte C4 FD 73 3F 1F 03 07 01 00 E3 4C 02 04 0C 05 F6   ; 201A1 data, read by 20068 2008b
  81B1  .byte CE FF 7F 0F 1F 04 00 8E 30 02 04 30 16 05 0B 05   ; 201B1 data, read by 20068 2008b 2003d 20042
  81C1  .byte 06 7C FE 05 05 7C 82 61 05 06 20 60 05 05 20 50   ; 201C1 data, read by 2008b 20068
  81D1  .byte D0 20 30 38 18 3C 38 18 18 50 48 44 34 62 64 34   ; 201D1 data, read by 20068
  81E1  .byte 34 1F 3F 3F 7F 7F 7F 3F 3F 2C 58 59 92 82 80 40   ; 201E1 data, read by 20068
  81F1  .byte 40 F0 F8 F8 EE D7 DF CE CE 08 04 06 11 38 30 31   ; 201F1 data, read by 20068
  8201  .byte 39 18 0C 1C 0C 0C 18 38 70 34 12 32 12 12 34 64   ; 20201 data, read by 20068
  8211  .byte A4 60 70 78 3C 3C 1E 0E 0C D0 C8 A4 62 52 29 19   ; 20211 data, read by 20068
  8221  .byte 13 03 03 07 0F 18 FF FC 01 04 04 09 10 E7 0B 02   ; 20221 data, read by 20068 2008b
  8231  .byte FE FD FD FD FF FB 70 EF E8 83 83 02 00 04 8F 1F   ; 20231 data, read by 20068
  8241  .byte 1F E0 C0 C0 C0 00 FE 8E 01 10 20 20 20 0B 03 FE   ; 20241 data, read by 20068 2008b
  8251  .byte 0E 1E 3C 3C 78 78 70 F0 15 29 52 52 A4 A4 88 08   ; 20251 data, read by 20068
  8261  .byte 63 23 01 01 05 03 01 9C 54 22 02 01 01 01 02 DD   ; 20261 data, read by 20068 2008b
  8271  .byte BB BB B7 B7 B3 B1 31 22 47 46 48 48 4C 4A CA BC   ; 20271 data, read by 20068
  8281  .byte FE FE FE FE FC F8 F8 43 31 21 21 01 02 24 14 16   ; 20281 data, read by 20068
  8291  .byte 02 05 06 E9 DA 84 80 80 05 03 38 6C 04 03 07 07   ; 20291 data, read by 20068 2008b
  82A1  .byte 07 07 C5 93 6B 07 0F 0F 0F 0F FC 7C 3D 1D 9C C8   ; 202A1 data, read by 20068
  82B1  .byte C8 C8 0A 83 C3 EB EB FF F7 F7 00 0F 0B 02 FB F3   ; 202B1 data, read by 20068 2008b
  82C1  .byte 07 07 0F 0B 02 FE FD FE FC FC 00 D8 FC FE FC E8   ; 202C1 data, read by 20068 2008b
  82D1  .byte E4 DC F8 E4 D2 A1 5B 9E 1A 22 7E 7E 3E 3E 1E 1E   ; 202D1 data, read by 20068
  82E1  .byte 1F 0F 0B 02 7F 7F 3F 3F 3F 1F 05 07 01 FE F0 C0   ; 202E1 data, read by 20068 2008b
  82F1  .byte C0 C1 C1 C1 C3 2E 1E 7C 7C F8 F0 E0 C0 71 71 E2   ; 202F1 data, read by 20068
  8301  .byte C2 C4 88 90 20 3E 7F 77 77 49 3E 3E 3C 41 A0 CC   ; 20301 data, read by 20068
  8311  .byte CC F6 41 61 63 0E 0C 1C 38 78 78 F0 F0 19 9A B2   ; 20311 data, read by 20068
  8321  .byte E4 C4 C4 48 88 7D 7C 78 78 78 38 38 38 C2 C3 C4   ; 20321 data, read by 20068
  8331  .byte C4 C4 64 64 64 DE CC 86 80 80 80 80 80 29 36 49   ; 20331 data, read by 20068
  8341  .byte 46 40 40 40 40 1C 1C 0C 0C 0C 1C 3C 3C 32 32 1A   ; 20341 data, read by 20068
  8351  .byte 1A 1A 32 62 62 3C 3C 38 78 50 38 18 00 42 42 54   ; 20351 data, read by 20068
  8361  .byte 94 B8 64 34 18 05 03 03 0F 3F 7F 7F 05 02 03 0F   ; 20361 data, read by 20068 2008b
  8371  .byte 3C 70 C0 C0 00 01 3E FF F8 C0 80 3E 01 3F FF C0   ; 20371 data, read by 20068
  8381  .byte 07 3F 7F C1 00 FF 00 C7 05 03 01 0B 03 3F 0B 04   ; 20381 data, read by 20068 2008b
  8391  .byte 05 02 0B 02 0F 03 0F FF 00 0B 07 05 02 C0 F8 0B   ; 20391 data, read by 20068 2008b
  83A1  .byte 02 E7 F7 00 C0 FC FF FC FE FF FB 05 04 C0 F8 FC   ; 203A1 data, read by 2008b 20068
  83B1  .byte FE 05 03 C0 38 84 D2 D1 3F 7F 7F 7D 3F 1F 03 07   ; 203B1 data, read by 20068 2008b
  83C1  .byte 70 F0 FE FF 7F 3F 1F 0F FE FC 0B 02 3F C0 FC FF   ; 203C1 data, read by 20068 2008b
  83D1  .byte 01 03 00 C0 0B 03 3F 00 7F F0 C0 F8 7F 00 E0 FF   ; 203D1 data, read by 20068 2008b
  83E1  .byte 80 0F 3F 87 0B 03 0F 01 07 07 00 FF 01 00 0B 06   ; 203E1 data, read by 20068 2008b
  83F1  .byte FE FF FC F8 F0 F7 FF 7F E3 01 0B 04 E8 80 1C FE   ; 203F1 data, read by 20068 2008b
  8401  .byte FE FC F8 E0 80 E0 E0 C0 91 A2 C4 18 70 10 10 20   ; 20401 data, read by 20068
  8411  .byte 71 78 3F 1F 1F 0E 07 07 FE FF 7F 3F 38 1F 0F 0E   ; 20411 data, read by 20068
  8421  .byte FF 01 00 F8 0B 02 C0 80 01 FE 0B 03 00 FF 7F C0   ; 20421 data, read by 20068 2008b
  8431  .byte FF 3F 00 03 F0 F8 00 FF 3F C0 FF FC FF 07 FF 00   ; 20431 data, read by 20068
  8441  .byte C0 01 3F FF 1F 0F 3F FF 3F FE C0 00 E0 F0 C0 30   ; 20441 data, read by 20068
  8451  .byte 76 CC 18 E0 80 80 C0 CE 89 32 E4 18 60 40 20 7E   ; 20451 data, read by 20068
  8461  .byte 3F 1F 1E 1F 0F 06 0F FF 67 38 3F 3F 1C 0F 1F 14   ; 20461 data, read by 20068
  8471  .byte 15 14 03 0F 3F 7F 15 02 14 05 0E 38 30 14 03 F0   ; 20471 data, read by 20068 2008b
  8481  .byte FC FE 15 02 14 05 C0                              ; 20481 data, read by 20068 2008b
  8488  .byte 14 05 0C 1F 3E 7F 8F 14 05 11 01 71 0F 1D 19 19   ; 20488
  8498  .byte 99 7A 96 EA 00 0E 0E 0E 0E 85 E9 F5 FF ED ED 7F   ; 20498
  84A8  .byte 80 15 02 FE 7F 52 92 15 02 C1 81 83 80 C7 C9 97   ; 204A8
  84B8  .byte AF EE EC 6A 00 80 86 0F 1F 1F 1F 9F 00 F0 8C 52   ; 204B8
  84C8  .byte DD DE DF 87 14 02 70 BC 3E 3F 3F 7F 14 05 C0 3E   ; 204C8
  84D8  .byte C1 14 06 C0 FE 02 07 07 0F 0F 3F DE 3C 01 03 03   ; 204D8
  84E8  .byte 07 07 0F 3F FF DF DB DD D2 90 28 44 86 E7 E7 E7   ; 204E8
  84F8  .byte EF EF C7 83 01 DB FB FB BD 5E 2F 16 0C E6 E7 F7   ; 204F8
  8508  .byte F3 F9 F8 FD FB F9 F3 F3 F7 0D F9 73 FF 1E 1C 1C   ; 20508
  8518  .byte F8 F3 07 EE E6 B1 61 52 A2 C4 C4 C8 F0 7E FE FC   ; 20518
  8528  .byte 7C 38 38 30 00 07 FB 07 06 06 03 01 00 FF 07 03   ; 20528
  8538  .byte 03 03 01 14 02 FA FA 3D 6D 92 4C 80 00 FC FC FE   ; 20538
  8548  .byte 9E 0C 80 14 02 2F 5C B8 B3 45 38 14 02 1F 3F 7F   ; 20548
  8558  .byte 7C 38 14 03 A0 A0 D0 D0 A0 C0 14 02 C0 C0 E0 E0   ; 20558
  8568  .byte C0 14 03 F1 71 71 31 3B 1F 0F 0B 0F 0F 0E 0E 04   ; 20568
  8578  .byte 14 02 04 15 07 FC 60 40 40 40 00 01 00 03 15 03   ; 20578
  8588  .byte FE FE FC F8 10 40 40 40 40 40 80 00 E0 10 11 23   ; 20588
  8598  .byte 24 5A 5C 5E BC 0F 0F 1C 1F 3F 3F 3F 7F 04 FC FE   ; 20598
  85A8  .byte FE 4C 5C 39 30 15 02 F9 01 B3 A3 C7 CF F8 07 F8   ; 205A8
  85B8  .byte FD FD BE 54 2A 00 F8 15 06 00 C0 70 F8 FC 7E 7E   ; 205B8
  85C8  .byte 3F 14 02 C0 C0 80 C0 C0 E0 BE BD BE AD 96 BD 7E   ; 205C8
  85D8  .byte FC 7F 7F 7F 7F 7F 67 27 67 10 18 16 11 10 10 10   ; 205D8
  85E8  .byte 20 EF E7 E1 E0 E0 E0 E0 C0 05 00 01 F7 20 2D 5A   ; 205E8
  85F8  .byte 5C 15 03 08 1F 1F 3F 3F BF 7E FA E2 04 88 10 20   ; 205F8
  8608  .byte E0 C0 84 1C F8 F0 E0 C0 FE FE FF 7F 5F 40 5E 2C   ; 20608
  8618  .byte 43 41 40 00 20 3F 3F 1F 20 20 C1 C3 87 47 46 43   ; 20618
  8628  .byte C0 C0 00 01 03 83 83 81 58 D1 32 A4 48 44 42 E1   ; 20628
  8638  .byte 3F 3E FC F8 F0 F8 FC FE B9 B2 BA 52 54 56 7B FB   ; 20638
  8648  .byte 7E 7C 7C 3C 38 38 34 74 F0 78 38 1C 0F 04 14 02   ; 20648
  8658  .byte 7F 3F 1F 0F 04 14 03 84 C2 C1 E6 78 20 14 02 F8   ; 20658
  8668  .byte FC FE 78 20 14 03 1F 3F 7F 7F 15 02 7E 1C 0E 1E   ; 20668
  8678  .byte 3E 3E 7C 7C 1C 00 FB FE FE FC FC F8 F0 E0 74 F0   ; 20678
  8688  .byte F0 F0 E0 E0 E0 14 05 1F 3F 7F FF 14 06 01 14 05   ; 20688
  8698  .byte F0 FC FE FF 14 06 30 0C 14 02 31 4D 53 6D 86 3B   ; 20698
  86A8  .byte 14 03 30 2C 12 79 FC 15 02 CF E7 E7 E7 8F 5F 14   ; 206A8
  86B8  .byte 02 F0 38 39 39 71 A0 FC FE FE FF F4 F4 15 02 30   ; 206B8
  86C8  .byte 18 00 CE 38 08 8E F0 47 4B 97 8B 97 8B 87 4B 3F   ; 206C8
  86D8  .byte 3F 7F 7F 7F 7F 7F 3F DD ED ED F6 F6 F6 F7 F7 E2   ; 206D8
  86E8  .byte F2 F2 F9 F9 F9 F8 F8 0F 18 7F 7F 7F 7F 7F 7F F0   ; 206E8
  86F8  .byte E7 C0 C0 C0 C0 C0 E0 10 3E C0 FC 9E 4B 6F 6B E0   ; 206F8
  8708  .byte C0 3C 00 64 B6 92 96 8B 95 88 43 46 4D 2D 3C 7F   ; 20708
  8718  .byte 7F 7F 3C 39 33 13 03 BB 5B 83 39 6E DF DF CF FC   ; 20718
  8728  .byte FC FC CE 9F 3F 3F 3F CF EF E7 F3 F9 7F BF CC 38   ; 20728
  8738  .byte 18 1C 0E 07 80 C1 F3 DB DA DB EB E0 EF FF 00 24   ; 20738
  8748  .byte 25 24 56 DF 20 15 02 C0 C0 C0 C0 E0 FC FA 0F 80   ; 20748
  8758  .byte 80 80 14 03 FC F2 C1 E0 7F 19 20 48 96 2E 3F 1F   ; 20758
  8768  .byte 00 06 1F 3F 7F FF FD 1E D7 F7 73 30 18 0F FE FF   ; 20768
  8778  .byte 2F 0F 8F CF E7 F0 FF E0 17 B3 A8 47 8F 1C 00 1F   ; 20778
  8788  .byte EE CF D7 B8 78 15 02 06 FC F0 F0 20 50 E8 02 FC   ; 20788
  8798  .byte 00 60 60 C0 A0 10 09 1E 3F 7F 15 02 FE FE 07 01   ; 20798
  87A8  .byte 05 0B 0B 17 17 0B 2F DE FD FA F4 E8 C1 C6 FF 3F   ; 207A8
  87B8  .byte BF 7F 7F FF FE 78 87 86 04 0B 10 60 80 00 F8 F9   ; 207B8
  87C8  .byte FB F0 E0 80 14 02 0F 17 0A 05 C0 31 0F 03 15 04   ; 207C8
  87D8  .byte 3F 0E 14 02 3A BD BD 7D FD FD F1 0D C4 C2 C2 82   ; 207D8
  87E8  .byte 02 02 0E FE FF 7E 41 25 12 09 04 02 04 01 3F 1F   ; 207E8
  87F8  .byte 0F 07 03 01 FC E4 1A 5A 2A 92 4A 25 40 18 FC FC   ; 207F8
  8808  .byte FC 7C 3C 1E 8B 45 23 11 08 05 02 01 7F 3F 1F 0F   ; 20808
  8818  .byte 07 03 01 00 D0 50 D0 68 28 68 B4 47 E0 E0 E0 F0   ; 20818
  8828  .byte F0 F0 78 3C 01 02 0C 20 40 81 67 1F 00 01 03 1F   ; 20828
  8838  .byte 3F 7F 1F 00 F8 3C 66 77 FE F8 E0 80 00 F8 FC EE   ; 20838
  8848  .byte F8 E0 80 00 73 C9 EC 7F 3F 0F 14 02 0F 37 13 14   ; 20848
  8858  .byte 05 F0 FC FE 71 CE F0 14 02 C0 F0 FC FE 30 14 03   ; 20858
  8868  .byte 3C 42 B1 A1 81 81 42 3C 00 3C 7E 7E 7E 7E 3C 00   ; 20868
  8878  .byte 09 13 09 0B 01 03 03 07 07 09 08 0F 3F 13 06 09   ; 20878 data, read by 2003d 20042 20068 2008b
  8888  .byte 07 03 E0 F8 FE 13 05 09 07 E0 09 04 80 80 C0 E0   ; 20888 data, read by 2008b 20068
  8898  .byte 01 09 07 01 09 07 13 02 F3 7F 00 01 09 02 13 02   ; 20898 data, read by 20068 2008b
  88A8  .byte 0F 0F 0F 0F 07 07 13 04 7F FF 1F 3F 13 08 07 8F   ; 208A8 data, read by 20068 2008b
  88B8  .byte 9E 3E 7C FC F8 F8 13 08 F8 10 1C 10 10 10 30 30   ; 208B8 data, read by 20068 2008b
  88C8  .byte F8 E0 E0 E0 E0 E0 C0 C0 09 04 01 09 03 07 03 03   ; 208C8 data, read by 20068 2008b
  88D8  .byte 01 09 04 07 0F 1E 1C 30 C0 70 1F 13 05 3F 0F 00   ; 208D8 data, read by 20068 2008b
  88E8  .byte F0 F0 E0 60 41 47 1F FC 13 04 FE F8 E0 00 20 60   ; 208E8 data, read by 20068 2008b
  88F8  .byte 60 C0 C0 80 09 02 C0 80 80 09 07 02 06 09 04 07   ; 208F8 data, read by 20068 2008b
  8908  .byte 0F 01 01 01 03 03 03 09 02 79 71 40 C0 C3 83 F7   ; 20908 data, read by 20068 2008b
  8918  .byte E3 86 86 87 0F 0C 0C 09 02 E0 C4 0C 1C 38 30 F0   ; 20918 data, read by 20068 2008b
  8928  .byte F8 18 38 70 E1 C1 C3 09 02 12 12 32 62 02 02 3C   ; 20928 data, read by 20068 2008b
  8938  .byte 3C 6C 6C CC CC 8C FC 09 02 0F 0F 18 18 10 30 3F   ; 20938 data, read by 20068 2008b
  8948  .byte 3F 30 30 61 61 61 C3 09 02 01 21 60 60 43 47 8F   ; 20948 data, read by 20068 2008b
  8958  .byte C7 C6 CE 8F 8F 8C 98 09 02 F9 F1 01 01 E1 C0 F6   ; 20958 data, read by 20068 2008b
  8968  .byte E6 06 06 C6 86 06 07 09 02 02 02 02 12 32 70 1C   ; 20968 data, read by 20068 2008b
  8978  .byte 1C 3C 3C 7D 6D CD 8F 09 02 33 33 20 60 67 C7 6F   ; 20978 data, read by 20068 2008b
  8988  .byte EF CC CC DF 9F 98 18 09 02 F3 E3 09 02 CE 87 E7   ; 20988 data, read by 20068 2008b
  8998  .byte CF 0C 1C 9E 0F 01 09 03 F2 F6 09 04 E7 CF 01 01   ; 20998 data, read by 20068 2008b
  89A8  .byte 01 83 C3 C3 09 02 78 70 40 C0 C0 80 F0 E0 80 80   ; 209A8 data, read by 20068 2008b
  89B8  .byte 80 09 03 01 01 01 03 03 09 03 06 06 06 09 05 86   ; 209B8 data, read by 20068 2008b
  89C8  .byte 86 04 0C 0C 09 03 18 18 18 09 06 01 11 33 37 09   ; 209C8 data, read by 20068 2008b
  89D8  .byte 03 67 66 6E 09 05 82 F2 82 06 06 09 03 1C 0C 0D   ; 209D8 data, read by 2008b 20068
  89E8  .byte 09 05 30 00 01 7F FF 09 03 C3 FF FE 09 05 C6 C0   ; 209E8 data, read by 20068 2008b
  89F8  .byte 80 8F 1F 09 03 18 1F 3F 09 08 E3 C3 09 03 07 C7   ; 209F8 data, read by 20068 2008b
  8A08  .byte 87 09 05 60 E0 C1 87 87 09 03 8F 0F 0E 09 05 C4   ; 20A08 data, read by 20068 2008b
  8A18  .byte 80 80 9F 1F 09 03 38 3F 3F 09 08 DF 9F 09 03 01   ; 20A18 data, read by 20068 2008b
  8A28  .byte BF 3F 09 05 21 61 E1 C3 83 09 03 C6 86 06 09 05   ; 20A28 data, read by 20068 2008b
  8A38  .byte 80 80 09 0F 1D 0A 05 0A 04 0A 04 00 02 05 0A 05   ; 20A38 data, read by 20068 2008b
  8A48  .byte 0B 05 0B 00 50 A0 00 01 09 04 AF 5F 87 81 81 80   ; 20A48 data, read by 20068 2008b
  8A58  .byte 80 09 03 A0 58 BC 7C FC 00 80 E0 F0 F8 F8 FC FC   ; 20A58 data, read by 20068 2008b
  8A68  .byte 00 0A 04 0A 04 08 09 03 0F 07 0F 0F 0F 1F 1F 00   ; 20A68 data, read by 20068 2008b
  8A78  .byte 20 00 30 10 60 10 A0 00 D0 E0 C0 E0 90 A0 10 00   ; 20A78 data, read by 20068
  8A88  .byte 3E 15 0A 10 00 01 02 00 01 0A 15 0F 1F 1F 1F 00   ; 20A88 data, read by 20068
  8A98  .byte AA 50 00 01 02 00 01 00 55 AF 0F 03 03 01 01 00   ; 20A98 data, read by 20068
  8AA8  .byte 01 09 02 40 A0 D0 E8 00 02 C1 E1 F1 F1 F9 F9 00   ; 20AA8 data, read by 20068 2008b
  8AB8  .byte 5F AB 50 20 10 00 10 00 A0 54 A0 D0 E0 F0 E0 00   ; 20AB8 data, read by 20068
  8AC8  .byte FC FC 04 09 0C 08 01 02 01 02 05 0B 07 07 0F 0F   ; 20AC8 data, read by 20068 2008b
  8AD8  .byte 0F 0F 0F 0F 0F 80 00 81 01 87 FE FD 8A 80 80 81   ; 20AD8 data, read by 20068
  8AE8  .byte 81 87 13 02 8F FC E8 D0 A0 40 80 00 80 FC F8 F8   ; 20AE8 data, read by 20068 2008b
  8AF8  .byte F0 E0 80 80 C0 01 02 05 0A 14 2B 57 AC 1E 3D 3A   ; 20AF8 data, read by 20068
  8B08  .byte 34 6A 54 28 50 18 18 18 0C 0C FC FE 06 09 08 05   ; 20B08 data, read by 20068 2008b
  8B18  .byte 0B 17 0F 1F 1F 1F 1F 1F 1F 1F 1F 1F 1F 1F 1F 01   ; 20B18 data, read by 20068
  8B28  .byte 01 03 03 0D FA D5 28 01 01 03 03 0F 13 02 3F F8   ; 20B28 data, read by 20068 2008b
  8B38  .byte E0 D0 A0 40 01 00 01 F9 F1 F1 E1 C1 00 01 80 20   ; 20B38 data, read by 20068
  8B48  .byte 10 21 55 AB 51 A0 50 D0 E0 D0 AA 54 A0 50 A0 00   ; 20B48 data, read by 20068
  8B58  .byte 80 80 80 80 80 80 09 09 0F 0F 0E 0D 0A 14 09 02   ; 20B58 data, read by 20068 2008b
  8B68  .byte 0F 0F 0F 0F 0F 1F 09 02 85 02 84 00 80 01 09 02   ; 20B68 data, read by 20068 2008b
  8B78  .byte 8F 87 87 83 83 C6 09 04 21 50 A1 57 09 02 C0 E0   ; 20B78 data, read by 20068 2008b
  8B88  .byte C0 A1 50 A8 09 02 5C B8 78 F8 F0 FC 09 02 A0 40   ; 20B88 data, read by 20068 2008b
  8B98  .byte 80 09 05 06 03 03 03 03 07 09 0A 15 0A 00 01 02   ; 20B98 data, read by 20068 2008b
  8BA8  .byte D5 09 02 1F 1F 1F 1E 9D 2A 09 05 05 02 05 09 02   ; 20BA8 data, read by 20068 2008b
  8BB8  .byte 1F 1F 0F 0A 05 8A 09 03 01 81 41 A1 FF 09 02 81   ; 20BB8 data, read by 20068 2008b
  8BC8  .byte C0 40 A0 40 09 03 F0 F0 F0 F0 13 02 09 0D 04 FC   ; 20BC8 data, read by 20068 2008b
  8BD8  .byte FC 09 0B 80 09 15 01 00 80 09 06 09 13 40 E0 40   ; 20BD8 data, read by 20068 2008b 2003d 20042
  8BE8  .byte 09 06 40 09 07 80 09 07 80 09 07 40 09 06 40 E0   ; 20BE8 data, read by 20068 2008b
  8BF8  .byte 40 09 05 C0 C0 09 06 C0 80 09 05 01 09 0E 18 38   ; 20BF8 data, read by 20068 2008b
  8C08  .byte 78 F8 F8 78 38 18 10 30 70 F0 F0 70 30 10 00 18   ; 20C08 data, read by 20068
  8C18  .byte 3C 7E 0E 02 09 03 18 3C 7E FF 09 03 3C 42 99 BD   ; 20C18 data, read by 20068 2008b
  8C28  .byte BD 99 42 3C 3C 42 99 BD BD 99 42 3C 09 05 1C 7F   ; 20C28 data, read by 20068 2008b
  8C38  .byte E3 09 06 1C 7F 07 0F 18 13 1E 0C 39 E3 00 07 0F   ; 20C38 data, read by 20068 2008b
  8C48  .byte 0C 03 3F FE 7C FA 1F 66 D6 96 36 6C F8 E6 F8 9C   ; 20C48 data, read by 20068
  8C58  .byte 6C E8 C8 90 00 07 0F 18 D0 FB 3F 07 01 00 07 0F   ; 20C58 data, read by 20068
  8C68  .byte 0F C4 F9 FE FF E0 FE 1F 06 C3 E1 D1 88 1F E1 FA   ; 20C68 data, read by 20068
  8C78  .byte FD 3E DF EF 77 31 1B 1E 8C 4C CC DC DC EE F4 F0   ; 20C78 data, read by 20068
  8C88  .byte 78 B8 30 20 20 E0 F8 F4 C4 82 02 06 0F 1F E7 FB   ; 20C88 data, read by 20068
  8C98  .byte FB FD FD F9 F0 C8 CC 3C 3C FB F7 FF 7E B7 B3 C3   ; 20C98 data, read by 20068
  8CA8  .byte C3 04 08 00 80 0B 8E 8C 98 70 F0 E0 C0 F4 70 70   ; 20CA8 data, read by 20068
  8CB8  .byte 60 80 09 03 08 1C 1C 1C 1C 1C 1C 08 00 08 08 08   ; 20CB8 data, read by 20068 2008b
  8CC8  .byte 08 08 08 09 03 7E FF 7E 09 06 7E 09 08 03 0C 31   ; 20CC8 data, read by 20068 2008b
  8CD8  .byte C7 09 05 03 0F 3F 00 03 0D F7 1F 7F FB E3 09 02   ; 20CD8 data, read by 20068 2008b
  8CE8  .byte 03 0C F2 F9 FD FC 00 20 D8 F4 F2 F9 FC F6 09 02   ; 20CE8 data, read by 20068 2008b
  8CF8  .byte 20 98 5C 5E 5F DF 00 03 04 0F 1C 33 5F 5F 09 02   ; 20CF8 data, read by 20068 2008b
  8D08  .byte 03 00 03 0F 2F 59 C7 1F 7E F8 E0 F0 B8 19 3F 0E   ; 20D08 data, read by 20068
  8D18  .byte 02 3F 1F 8F C7 E6 E0 80 00 01 07 1F 7F FC 0E 03   ; 20D18 data, read by 20068
  8D28  .byte FE F8 E0 80 00 7A 79 70 E8 BC FE 3F 1C BF AF BF   ; 20D28 data, read by 20068
  8D38  .byte 37 43 01 09 02 F2 D9 AD 96 0A 84 C4 E8 7C 7E FE   ; 20D38 data, read by 20068 2008b
  8D48  .byte FC FC 78 38 10 BF B7 6F 25 1B 05 09 02 41 4B 10   ; 20D48 data, read by 20068 2008b
  8D58  .byte 1A 05 09 03 0D CF DF FE F0 80 09 02 F2 F0 60 80   ; 20D58 data, read by 20068 2008b
  8D68  .byte 09 04 BF FC F0 C0 09 04 40 09 0A 1F 23 7B 9E 8F   ; 20D68 data, read by 20068 2008b
  8D78  .byte 09 04 1C 3F 7F 73 02 0D 33 CF BC F1 F8 38 00 02   ; 20D78 data, read by 20068 2008b
  8D88  .byte 0C 3F DF 6E B7 D7 DC 3E F4 CA 1D 82 86 DE 20 CC   ; 20D88 data, read by 20068
  8D98  .byte F8 F0 E2 FC F8 A0 91 91 71 78 28 24 13 08 6D 6E   ; 20D98 data, read by 20068 2008b
  8DA8  .byte 2E 37 17 1B 0C 07 9D DF CF EF 64 6C 7C FC EA E8   ; 20DA8 data, read by 20068
  8DB8  .byte F0 70 B8 B0 A0 60 8F 4E 1C 09 05 7C 38 09 06 11   ; 20DB8 data, read by 20068 2008b 2003d
  8DC8  .byte 12 11 10 4B 84 05 02 01 11 03 B0 78 F8 FC FE 12   ; 20DC8 data, read by 20042 20068 2008b
  8DD8  .byte 03 7E FD 7F BF 5F AB 45 F2 01 02 11 04 80 01 00   ; 20DD8 data, read by 20068 2008b
  8DE8  .byte E0 E0 C0 C0 80 40 80 FF 1F 1F 3F 3F 7F BF 7F 01   ; 20DE8 data, read by 20068
  8DF8  .byte 01 07 0F 1F 1F 1F 0F FE FE F8 F0 E0 E0 E0 F0 EB   ; 20DF8 data, read by 20068
  8E08  .byte D5 E9 F5 E9 F5 F9 F5 03 01 01 01 01 01 01 01 83   ; 20E08 data, read by 20068
  8E18  .byte 83 81 80 80 80 80 80 80 80 80 80 80 80 80 80 40   ; 20E18 data, read by 20068
  8E28  .byte AA D5 FF 7F 08 08 08 BF 55 2A 11 02 07 07 07 50   ; 20E28 data, read by 20068 2008b
  8E38  .byte B0 78 FC 8C 07 03 00 AF 4F 87 03 73 F8 FC FF 11   ; 20E38 data, read by 20068
  8E48  .byte 05 55 EA 12 06 AA 15 00 71 F6 69 E6 CB 86 03 05   ; 20E48 data, read by 20068 2008b
  8E58  .byte 82 01 82 01 20 60 F0 F0 00 80 00 80 40 80 40 A0   ; 20E58 data, read by 20068
  8E68  .byte FF 7F FF 7F BF 7F BF 5F 01 11 05 01 3C FE 12 05   ; 20E68 data, read by 20068 2008b
  8E78  .byte FE C3 79 B5 4B B3 57 A3 4B B5 81 41 A3 43 A7 43   ; 20E78 data, read by 20068
  8E88  .byte 83 41 08 08 08 08 04 04 04 04 07 07 07 07 03 03   ; 20E88 data, read by 20068
  8E98  .byte 03 03 11 06 02 02 12 06 FD FD 1F 11 07 E0 12 07   ; 20E98 data, read by 20068 2008b
  8EA8  .byte 3A 1D 0E 07 0F 0F 0F 1B C0 E0 F0 F8 F0 F0 F0 E4   ; 20EA8 data, read by 20068
  8EB8  .byte D5 7B BF 1C C0 80 00 80 2A 04 11 02 03 0F 7C 30   ; 20EB8 data, read by 20068 2008b
  8EC8  .byte 7C FE FE 11 05 83 01 01 01 FE 83 70 E0 29 35 79   ; 20EC8 data, read by 20068 2008b
  8ED8  .byte 35 19 01 01 00 C1 C1 81 81 01 C1 F1 38 1F 1F 1F   ; 20ED8 data, read by 20068
  8EE8  .byte 1F 3F 12 03 9F 1F 9F 9F 3F 12 07 FE FC FC F8 F3   ; 20EE8 data, read by 20068 2008b
  8EF8  .byte C1 C0 80 81 03 03 07 12 04 7F 3F 0C 18 12 02 07   ; 20EF8 data, read by 20068 2008b
  8F08  .byte 03 E3 F3 F3 E7 12 07 7F 12 07 DF 12 0E FC F0 12   ; 20F08 data, read by 20068 2008b
  8F18  .byte 0D E7 E3 E3 12 08 FE FE FC FC F8 F8 F0 F0 F0 F0   ; 20F18 data, read by 20068 2008b
  8F28  .byte E1 12 02 F1 F3 B8 0F 0F 1E 00 01 0F 0F 47 3C 7E   ; 20F28 data, read by 20068 2008b
  8F38  .byte FE FD FB F7 DF 3F C7 8F 1F 7E FC F9 E0 C0 7F 7F   ; 20F38 data, read by 20068
  8F48  .byte FF FB F3 F3 E3 E3 9F 9F 1E 1C 9E 9F 1F 9F 12 03   ; 20F48 data, read by 20068 2008b
  8F58  .byte FE FC FF DF BF E3 8F 1F 3F 07 C1 E0 C3 12 02 9F   ; 20F58 data, read by 20068 2008b
  8F68  .byte 1F 7F 12 03 F3 F3 E3 E7 80 03 CE 9C FF FC FC FC   ; 20F68 data, read by 20068 2008b
  8F78  .byte F8 F9 F1 F3 C7 CF 8F 9F 0F 1F 7F 7F 12 02 7F 7F   ; 20F78 data, read by 20068 2008b
  8F88  .byte 12 0E FE FE FC FC FC F8 E0 E1 E1 C3 C3 87 87 0F   ; 20F88 data, read by 20068 2008b
  8F98  .byte 38 19 1C 1C 1C 3E 3E 7E C7 E7 E3 F3 F3 F9 F9 F9   ; 20F98 data, read by 20068
  8FA8  .byte 3F FF FC F8 F8 F1 7B 7F C7 8F DF 12 05 73 73 63   ; 20FA8 data, read by 20068 2008b
  8FB8  .byte 73 F3 F3 F3 F3 9F 9F 9E 9C 9F 9F 9F 9F F0 F8 FC   ; 20FB8 data, read by 20068
  8FC8  .byte F8 F1 E3 CF 9F 8F 1F 7F 12 05 F3 E6 9F 7F 12 02   ; 20FC8 data, read by 20068 2008b
  8FD8  .byte FE FE BC 39 71 F3 E7 C7 CF 9F 01 63 DF 9F 9F 3F   ; 20FD8 data, read by 20068
  8FE8  .byte 3C 7C 12 02 E7 E7 12 0D FE FE FC FC FC F8 F8 F8   ; 20FE8 data, read by 20068 2008b
  8FF8  .byte F0 F0 E1 E1 C3 C3 87 0F 1F 1F 3F 3F 7F 7F FF 7F   ; 20FF8 data, read by 20068
  9008  .byte 12 07 FC FC FC FE FE 12 03 7F 3F 3F BF 9F DF DF   ; 21008 data, read by 20068 2008b
  9018  .byte CF 12 03 7F 7F 3F 3F 3F F3 F3 FB FB 12 02 FC FC   ; 21018 data, read by 20068 2008b
  9028  .byte FE FE E7 E6 FE 12 07 CF CF FF CF 7F 7F FE 7C 7C   ; 21028 data, read by 20068 2008b
  9038  .byte F9 F1 F3 FC F8 F9 F3 E3 E7 CF 8F 1F 3F 7F 7F 12   ; 21038 data, read by 20068
  9048  .byte 08 FE FE FC FC F0 F1 E1 E3 F7 12 03 87 8F 0F 1F   ; 21048 data, read by 20068 2008b
  9058  .byte 1F 3F 3F 7F 12 08 EF E7 F7 F7 F3 F3 F1 F9 9F 9F   ; 21058 data, read by 20068 2008b
  9068  .byte CF CF 12 12 FE FE DF FF FE FE FC F8 F9 F3 E7 C7   ; 21068 data, read by 20068 2008b
  9078  .byte CF 9F 3F 3F 7F FF 9F 3F 3F 7F 12 0C E7 E7 CF DF   ; 21078 data, read by 20068 2008b
  9088  .byte 12 0C 02 02 02 01 01 01 11 02 01 01 01 11 05 42   ; 21088 data, read by 20068 2008b
  9098  .byte 3A 01 02 42 3A 81 80 BD C5 FE FD BD C5 7E 7F 11   ; 21098 data, read by 20068
  90A8  .byte 02 80 7F 01 00 81 7F 12 02 7F 80 FE FF 7E 80 1A   ; 210A8 data, read by 20068 2008b
  90B8  .byte 15 22 21 40 41 81 81 E5 EA DD DE BF BE 7E 7E C0   ; 210B8 data, read by 20068
  90C8  .byte 40 C0 C0 C0 C0 C0 C0 01 81 01 01 01 03 03 03 11   ; 210C8 data, read by 20068
  90D8  .byte 02 01 03 03 07 07 0F 0C C4 21 C3 03 07 07 0F 00   ; 210D8 data, read by 20068 2008b
  90E8  .byte 12 07 00 12 1E FE 12 02 C3 80 11 03 81 12 07 07   ; 210E8 data, read by 20068 2008b
  90F8  .byte 12 03 3E 11 03 F8 12 0B 01 11 04 12 06 9F 8F 12   ; 210F8 data, read by 20068 2008b
  9108  .byte 03 FC F8 78 70 70 12 06 E3 E1 12 03 3E 1C 1C 1C   ; 21108 data, read by 20068 2008b
  9118  .byte 1F 12 0A 11 06 12 07 E0 12 03 11 04 1F 12 07 0F   ; 21118 data, read by 20068 2008b
  9128  .byte 12 03 11 04 F0 12 07 FE 12 03 03 01 11 02 01 12   ; 21128 data, read by 20068 2008b
  9138  .byte 06 3F 1F 12 08 F0 F0 F8 12 0C FC 00 01 1F 12 04   ; 21138 data, read by 20068 2008b
  9148  .byte FE FF FE FC F0 E0 C0 00 01 12 02 FE F8 E0 C0 00   ; 21148 data, read by 20068 2008b
  9158  .byte 01 11 02 01 07 1F 3F 12 02 0F 0F 0F 0F 0F 1F 7F   ; 21158 data, read by 20068 2008b
  9168  .byte FF F0 F0 F0 F0 F0 F0 F0 F0 E1 E1 E1 E1 E1 E1 E1   ; 21168 data, read by 20068
  9178  .byte E1 1F 1F 1F 1F 1F 1F 1F 1F 12 08 C0 C0 C0 C0 C0   ; 21178 data, read by 20068 2008b
  9188  .byte C0 80 80 80 80 01 07 0F 1F 3F 3F 7F 7F FE FE F0   ; 21188 data, read by 20068
  9198  .byte E0 C0 C0 3F 7F FF FC F0 E0 C0 FF C0 80 00 03 0F   ; 21198 data, read by 20068
  91A8  .byte 1F 3F 00 F8 E0 80 00 03 07 3F FF 07 1F 7F 12 05   ; 211A8 data, read by 20068 2008b
  91B8  .byte 0F 0F 1F 7F 12 11 FE 12 02 F0 E0 E0 E0 F8 12 07   ; 211B8 data, read by 20068 2008b
  91C8  .byte F0 11 02 80 11 04 0F 12 03 03 12 03 03 11 02 FF   ; 211C8 data, read by 20068 2008b
  91D8  .byte FE 11 03 FC 12 07 FE 11 02 C0 11 04 01 12 03 E1   ; 211D8 data, read by 20068 2008b
  91E8  .byte E1 C1 81 01 03 07 0F 1F 1F 3F 7F 12 07 FE FC F8   ; 211E8 data, read by 20068 2008b
  91F8  .byte FC FE 80 80 80 C1 E3 12 03 3F 3F 1F 0C 0C 0E 1F   ; 211F8 data, read by 20068 2008b
  9208  .byte 3F C0 C0 E0 12 08 11 03 12 02 11 03 12 08 7E 11   ; 21208 data, read by 20068 2008b
  9218  .byte 02 F8 FF 11 03 81 12 07 0F 07 07 1F 12 02 7F 7F   ; 21218 data, read by 20068 2008b
  9228  .byte 12 14 FE 12 0F 0F 12 08 F0 E0 C0 80 80 80 80 80   ; 21228 data, read by 20068 2008b
  9238  .byte 12 03 81 80 9F 9F 9F 01 11 02 7E 7F 7F 7F 7F 12   ; 21238 data, read by 20068 2008b
  9248  .byte 04 EF E7 E7 E7 FF 7F 3F 1F 1C 98 98 9C 12 06 BF   ; 21248 data, read by 20068 2008b
  9258  .byte 1F 12 05 7F 7F 12 20 9F 12 0E F8 E0 12 0C FE FE   ; 21258 data, read by 20068 2008b
  9268  .byte FC 3C 12 06 CF CF 12 04 3F 3F 3F 3F 12 0F C7 12   ; 21268 data, read by 20068 2008b
  9278  .byte 06 FE FC 80 80 80 80 C0 C0 C1 C3 9F 1F 1F BF 12   ; 21278 data, read by 20068 2008b
  9288  .byte 02 11 02 7F 12 02 7C 00 01 12 02 E6 EF EF FF BF   ; 21288 data, read by 20068 2008b
  9298  .byte 1E 1E 7E 9F 91 30 20 60 E1 E1 E1 1F 3F FF 7F 3F   ; 21298 data, read by 20068
  92A8  .byte 3F 3F 7F 12 03 FE FE FC FC F8 12 04 CE CE 8E 8E   ; 212A8 data, read by 20068 2008b
  92B8  .byte E7 82 11 02 31 31 71 71 12 02 FB 99 1D 3D 7C 7C   ; 212B8 data, read by 20068 2008b
  92C8  .byte 0F 07 47 E7 E3 E3 E3 E3 FF F9 F0 F1 E3 E3 E7 FF   ; 212C8 data, read by 20068
  92D8  .byte C0 86 8F 0F 1F 1F 1F 06 FF EF E7 E7 E7 E7 E7 C7   ; 212D8 data, read by 20068
  92E8  .byte 1C 1C 1C 98 98 18 3C 3C 8F 8F 9F 1F 1F 3F BF FF   ; 212E8 data, read by 20068
  92F8  .byte 7F 7E 7E FC FC FC 7C 1C 12 02 C7 8F FE FC E0 81   ; 212F8 data, read by 20068 2008b
  9308  .byte 01 10 38 70 01 07 1F 7F 12 02 7F 3F 3F 3F 7F 12   ; 21308 data, read by 20068 2008b
  9318  .byte 09 FC FC FE FE FC F8 F0 F9 C3 C3 C1 C1 C3 E7 12   ; 21318 data, read by 20068 2008b
  9328  .byte 02 7F 12 03 7F 7F 12 0A FE 12 03 FC FE 12 02 E1   ; 21328 data, read by 20068 2008b
  9338  .byte E0 F0 F8 12 04 7F FF F7 C3 03 0F 12 02 98 08 0C   ; 21338 data, read by 20068 2008b
  9348  .byte 3C 12 04 9C 9C 9C 1F 1F 3F 12 02 73 7F 7F 12 05   ; 21348 data, read by 20068 2008b
  9358  .byte 78 78 F1 F1 FB 12 03 C7 C7 EF FE FE FE FC FC FF   ; 21358 data, read by 20068 2008b
  9368  .byte CF C0 CC CF 8F 8F 9F 00 30 3F 3F 3F 7F 7F 7F CF   ; 21368 data, read by 20068
  9378  .byte 8F 1F 3F 12 04 7E 12 08 C7 87 CF 12 04 1E 3E 12   ; 21378 data, read by 20068 2008b
  9388  .byte 06 87 12 02 BF C0 F0 12 02 7F 0F 00 C0 12 08 C7   ; 21388 data, read by 2008b 20068
  9398  .byte 07 CF 12 03 1F 1F 3F 12 0B FC 12 07 1F 1F 3F 12   ; 21398 data, read by 20068 2008b
  93A8  .byte 14 FC 12 07 FC 12 04 FE FD E2 1C 12 04 FE FC E1   ; 213A8 data, read by 2008b 20068
  93B8  .byte 03 12 02 C7 3B C5 02 01 00 12 02 C7 03 39 FC FE   ; 213B8 data, read by 20068 2008b
  93C8  .byte 12 07 7F 9F 12 06 7F 1F 12 02 FE FC F8 C0 11 02   ; 213C8 data, read by 20068 2008b
  93D8  .byte 12 02 FE FC F8 C2 05 72 B3 0F 1F 0F 0E 01 11 02   ; 213D8 data, read by 20068 2008b
  93E8  .byte B0 00 40 40 C1 C4 40 84 F8 F0 F1 E2 0B 17 DE 7E   ; 213E8 data, read by 20068
  93F8  .byte 07 0F 0E 1D F4 E8 20 00 59 C6 39 A6 50 69 F6 F9   ; 213F8 data, read by 20068
  9408  .byte A6 00 80 19 4F 66 F0 F9 6F 97 97 6F 9F 7F 12 02   ; 21408 data, read by 20068 2008b
  9418  .byte 8F 67 67 8F 1F 7F 12 02 11 03 01 86 88 8C 9E 1E   ; 21418 data, read by 20068 2008b
  9428  .byte 0E 04 08 B1 87 83 81 11 02 3F C2 01 11 03 78 11   ; 21428 data, read by 20068 2008b
  9438  .byte 02 3D FE 12 03 3D 1A E0 BC 7E BE 5E 3C 01 02 00   ; 21438 data, read by 2008b 20068
  9448  .byte 40 80 40 A0 C1 CF 31 0E 03 60 40 40 04 CF 01 70   ; 21448 data, read by 20068
  9458  .byte 1C 0C 11 02 98 C1 8E 01 40 C0 C0 C0 C0 C1 B0 11   ; 21458 data, read by 20068 2008b
  9468  .byte 04 01 07 FF 1F 01 11 02 08 05 02 FF 1F 01 11 02   ; 21468 data, read by 2008b 20068
  9478  .byte F4 7A 7D 12 03 3F DF 6F 77 BB 12 03 3F 1F 8F 87   ; 21478 data, read by 20068 2008b
  9488  .byte 43 DF DF DF EF EF EF F7 F7 C0 C0 C0 E0 E0 E0 F0   ; 21488 data, read by 20068
  9498  .byte F0 1C FE FE FC FC FA FD FE E3 01 01 03 03 05 02   ; 21498 data, read by 20068
  94A8  .byte 01 18 28 14 28 50 A0 60 A0 E1 D2 E9 D0 A7 4F 8F   ; 214A8 data, read by 20068
  94B8  .byte 4F 11 03 80 60 98 E7 38 FF 7F 80 7F 1F 07 00 C0   ; 214B8 data, read by 20068 2008b
  94C8  .byte 00 01 0C 00 01 02 F5 0F FE F0 03 FF FE FD 0A 00   ; 214C8 data, read by 20068
  94D8  .byte 01 02 03 0E 13 24 48 98 BE FD FC F1 E8 D3 A7 47   ; 214D8 data, read by 20068
  94E8  .byte 5B BB F9 9E 07 03 03 05 A3 43 01 60 F8 FC FC FA   ; 214E8 data, read by 20068
  94F8  .byte 12 03 7F BF DF EF EF 12 03 7F 3F 1F 0F 0F FB FD   ; 214F8 data, read by 20068 2008b
  9508  .byte FE 12 05 F8 FC FE 12 06 FE 7F 9F E7 FB FB FD 00   ; 21508 data, read by 20068 2008b
  9518  .byte 01 00 80 E0 F8 F8 FC 40 C0 40 80 80 80 80 80 9F   ; 21518 data, read by 20068
  9528  .byte 1F 9F 3F 3F 3F 3F 3F 07 02 11 04 02 02 F8 FD 12   ; 21528 data, read by 20068 2008b
  9538  .byte 04 FD FD FD AB 01 11 05 02 54 FE 12 05 B8 B8 BC   ; 21538 data, read by 2008b 20068
  9548  .byte 3F 3F 3F 1F 1F 07 07 03 80 80 80 C0 C0 02 05 03   ; 21548 data, read by 20068
  9558  .byte C5 C3 87 07 07 FD FA FC 3A 3C 78 F8 F8 F7 F7 F7   ; 21558 data, read by 20068
  9568  .byte F7 EF F7 FB FB 07 07 07 07 0F 07 03 03 FD FE 12   ; 21568 data, read by 20068
  9578  .byte 06 FC FE 12 06 80 80 40 80 E0 F0 F8 FC 3F 3F 1F   ; 21578 data, read by 2008b 20068
  9588  .byte 9F EF F7 FB FC 02 03 07 07 5F F3 ED 82 FD FC F8   ; 21588 data, read by 20068
  9598  .byte F8 A0 11 02 1C 11 03 80 81 D5 EB 7F 12 03 7F 7E   ; 21598 data, read by 20068 2008b
  95A8  .byte 2A 14 00 1E 1E 1C 1C 1C 0F 0E 00 C1 C1 C3 C3 C3   ; 215A8 data, read by 20068
  95B8  .byte E0 E0 80 03 01 02 01 00 FD 03 00 FC FE FD FE FF   ; 215B8 data, read by 20068
  95C8  .byte 02 00 3A FD FD FD 7D BD 7D BD FD 01 01 01 81 41   ; 215C8 data, read by 20068
  95D8  .byte 81 41 01 FF FE FE FE FD FD FE FE FF FE FE FE FC   ; 215D8 data, read by 20068
  95E8  .byte FC FE FE 0A 0C 00 25 19 09 41 22 74 F1 F3 C2 66   ; 215E8 data, read by 20068
  95F8  .byte 76 3E 5D 00 41 83 07 0F 1F 3E 00 BE 9C 38 70 30   ; 215F8 data, read by 20068
  9608  .byte 00 C1 FF 7C C2 81 80 01 02 05 0B 00 3C 7E 7F FE   ; 21608 data, read by 20068
  9618  .byte FD FA F4 11 03 80 40 C0 60 E0 44 98 48 2D 91 2C   ; 21618 data, read by 20068 2008b
  9628  .byte 8B 0C 3B 1B 17 07 07 07 07 0F 03 83 87 07 07 07   ; 21628 data, read by 20068
  9638  .byte C7 2F FE FE FE FE FE FE FD FD FE FE FE FE FE FE   ; 21638 data, read by 20068
  9648  .byte FC FC 50 AA DE 80 80 80 40 40 2F 15 00 61 7F 7F   ; 21648 data, read by 20068
  9658  .byte BF BF 00 AA 07 11 04 01 FF 55 00 F8 12 03 FE 57   ; 21658 data, read by 20068 2008b
  9668  .byte BF FF 7F 80 FD FD FD A8 40 11 03 01 01 01 E0 E0   ; 21668 data, read by 20068 2008b
  9678  .byte C0 C0 3E 12 03 09 07 14 00 3E 12 03 00 FF F0 E0   ; 21678 data, read by 20068 2008b
  9688  .byte C0 C0 E0 F0 00 FF F0 EF D1 D0 E8 F4 00 18 11 07   ; 21688 data, read by 20068 2008b
  9698  .byte 18 E7 08 08 88 88 44 00 FF 7F 07 01 11 04 FF 7F   ; 21698 data, read by 20068 2008b
  96A8  .byte 87 01 11 02 40 00 12 05 7F 7F 00 12 05 7F 7F F0   ; 216A8 data, read by 20068 2008b
  96B8  .byte F8 F8 F8 F8 FC FC FC F4 FA FA FA FB FC FC FC 11   ; 216B8 data, read by 20068
  96C8  .byte 08 44 44 44 22 11 0D 38 04 04 11 02 03 1C 3F 3F   ; 216C8 data, read by 2008b 20068
  96D8  .byte 3F 3F 1F 1F 0F 0F 3F 3F 3F 3F 1F 9F 2F 2F 12 04   ; 216D8 data, read by 20068 2008b
  96E8  .byte FC F3 EC 18 12 04 FC F0 E3 06 FE 12 03 3F DF 0F   ; 216E8 data, read by 20068 2008b
  96F8  .byte 03 FE 12 03 3F 1F EF 33 04 0F 9F 12 03 F9 C6 84   ; 216F8 data, read by 20068 2008b
  9708  .byte 6F 9F 12 03 F9 C0 00 80 E0 F0 F0 F0 E0 E3 0C 8C   ; 21708 data, read by 20068 2008b
  9718  .byte E6 F6 F1 F7 EC E8 07 03 01 11 03 7C D7 17 0B 01   ; 21718 data, read by 20068 2008b
  9728  .byte 00 FC 82 00 28 12 03 7F 3F 3F 3F BF 12 03 7F 3F   ; 21728 data, read by 20068 2008b
  9738  .byte 3F 3F 3F F7 E8 D0 D0 A0 A0 80 30 F0 E7 CF CF 9F   ; 21738 data, read by 20068
  9748  .byte 9F 8F 01 11 08 FC FC FC FF 83 E0 F8 FE 00 E1 F0   ; 21748 data, read by 20068 2008b
  9758  .byte 7C 18 11 03 1C 0E 03 00 81 7F 0F 03 38 E0 04 1C   ; 21758 data, read by 20068 2008b
  9768  .byte 0C 11 03 07 19 E1 01 C3 FF FE FC 64 74 00 07 03   ; 21768 data, read by 20068 2008b
  9778  .byte 01 02 00 63 73 00 F0 F8 1A 79 F7 2F 07 07 87 E5   ; 21778 data, read by 20068
  9788  .byte 72 A9 00 D0 F8 78 18 0A 8D 56 FF DF DF EF EF 6F   ; 21788 data, read by 20068
  9798  .byte B7 77 37 1F 1F 0F 0F 8F 47 87 C7 FE FD FB FA F5   ; 21798 data, read by 20068
  97A8  .byte F6 EC EA FE FC F8 F9 F2 F1 E3 E5 FE FF 5F AF 5F   ; 217A8 data, read by 20068
  97B8  .byte 3F 3F 1F 11 02 A0 50 A0 C0 C0 E0 00 80 E0 D0 E8   ; 217B8 data, read by 20068 2008b
  97C8  .byte F0 E8 00 7F 1F 0F 07 03 03 03 E0 11 09 80 80 C0   ; 217C8 data, read by 20068 2008b
  97D8  .byte D8 ED EE F7 11 08 F1 03 07 0F 0F 1E 99 B7 11 02   ; 217D8 data, read by 20068 2008b
  97E8  .byte 10 28 50 28 15 1B F7 EF 8F 97 2F 97 CA C4 60 F1   ; 217E8 data, read by 20068
  97F8  .byte F9 F9 FD FF FE E1 9F 0E 06 06 02 11 02 01 77 F7   ; 217F8 data, read by 20068 2008b
  9808  .byte F7 EF EF 9F 7F FF 87 07 07 0F 0F 1F 7F FF EC F4   ; 21808 data, read by 20068
  9818  .byte F4 F6 FB F9 FC FE E3 F3 F3 F1 F8 F8 FC FE 11 04   ; 21818 data, read by 20068 2008b
  9828  .byte BC FC BE 5E 12 04 43 03 01 01 0D 0E 0F 0F 07 11   ; 21828 data, read by 20068 2008b
  9838  .byte 03 F0 F0 F0 F0 F8 12 03 00 80 50 EC DF 2B 05 03   ; 21838 data, read by 2008b 20068
  9848  .byte 3B 0C 03 00 20 D4 FA FC 11 08 6F EF DF 3F 1F 47   ; 21848 data, read by 20068 2008b
  9858  .byte 40 4D 0F 00 0F 01 11 04 E0 E0 EF E1 C0 80 11 02   ; 21858 data, read by 20068 2008b
  9868  .byte 9F 7F FF 7F 3F 1F 1F 1F 1F 7F FF 7F 3F 1F 1F 1F   ; 21868 data, read by 20068
  9878  .byte 2B 15 49 B1 DE EF F3 FD 11 03 80 C0 E0 F0 FC 00   ; 21878 data, read by 20068 2008b
  9888  .byte 80 50 EF BF 57 AA C1 FF 7F AF 10 11 04 05 03 05   ; 21888 data, read by 20068 2008b
  9898  .byte 0A 56 AC D8 70 FA FC FA F4 A8 51 22 04 11 08 4E   ; 21898 data, read by 20068 2008b
  98A8  .byte 40 47 8E 80 11 0B 80 40 40 41 41 41 82 80 0F 0F   ; 218A8 data, read by 20068 2008b
  98B8  .byte 07 07 07 0F 0F 1F 0F 0F 07 07 87 0F 0F 1F FE FE   ; 218B8 data, read by 20068
  98C8  .byte FE FE FE FE 12 02 FE FE FE FE FE FE 12 02 FC 49   ; 218C8 data, read by 20068 2008b
  98D8  .byte 16 15 01 11 02 80 11 04 04 01 01 80 00 E0 40 80   ; 218D8 data, read by 20068 2008b
  98E8  .byte 30 11 03 01 1F 1F 0A 05 25 25 02 0C 0C 18 10 11   ; 218E8 data, read by 20068 2008b
  98F8  .byte 04 F1 F0 20 C8 24 24 A0 11 02 CC 7E 7F 7F 7F 7F   ; 218F8 data, read by 2008b 20068
  9908  .byte FF 00 CC 7E 7F 7F 7F 7F FF 1F 3F 7F 12 05 1F 3F   ; 21908 data, read by 20068 2008b
  9918  .byte 7F 12 0C FE 12 07 FE 12 03 E1 C0 C1 06 04 12 03   ; 21918 data, read by 20068 2008b
  9928  .byte E1 D8 D0 00 20 FF F8 F1 E0 00 C0 98 08 FF F8 F6   ; 21928 data, read by 20068
  9938  .byte E9 10 20 40 C1 FF 18 E7 B0 C0 11 03 FF 18 00 4F   ; 21938 data, read by 20068 2008b
  9948  .byte 3F FF E1 1E FF 0F F1 0E 02 01 02 01 FF 0F 01 30   ; 21948 data, read by 20068
  9958  .byte DD EE ED F6 12 03 7F BF 5F EF F7 12 03 7F 3F 9F   ; 21958 data, read by 20068 2008b
  9968  .byte 1F 07 FD FD FE FE FE FE 12 02 FC FC FE FE FE FE   ; 21968 data, read by 20068 2008b
  9978  .byte 12 02 C0 00 80 F8 8F 80 40 40 0F F0 7F 07 70 7F   ; 21978 data, read by 20068 2008b
  9988  .byte 3F 3F 11 02 01 0F F0 11 03 F0 0F FE F0 0F 12 03   ; 21988 data, read by 20068 2008b
  9998  .byte 00 60 80 00 E0 1F 03 03 FF 9F 7F FF 1F E0 FC FC   ; 21998 data, read by 20068
  99A8  .byte 02 00 07 06 08 11 02 40 05 06 00 01 07 1F 3F 3F   ; 219A8 data, read by 20068 2008b
  99B8  .byte 80 7F FF BF 0F 07 03 03 11 03 40 F0 F8 FC FC FF   ; 219B8 data, read by 20068 2008b
  99C8  .byte 3F CF F7 FB FD FA F4 FF 3F 0F 07 03 01 04 0A FF   ; 219C8 data, read by 20068
  99D8  .byte FE FD FA FA F4 F4 E8 FF FE FC F9 F9 F3 F3 E7 20   ; 219D8 data, read by 20068
  99E8  .byte 30 18 0C 03 02 01 00 1F CF E7 F3 FC FD FE FF 11   ; 219E8 data, read by 20068
  99F8  .byte 04 C3 11 02 80 12 04 3C 12 03 07 0E 1D 72 D5 B2   ; 219F8 data, read by 2008b 20068
  9A08  .byte 69 AA F8 F0 E0 80 20 40 90 50 00 40 A0 5E FE FE   ; 21A08 data, read by 20068
  9A18  .byte FE FD 7F BF 5F A1 01 01 01 02 01 11 07 FE 12 07   ; 21A18 data, read by 20068 2008b
  9A28  .byte FA E5 04 03 01 01 11 02 05 1A FB FC FE FE 12 02   ; 21A28 data, read by 20068 2008b
  9A38  .byte 7F 7F 7F 3F DF AF C7 D3 7F 7F 7F 3F 1F 0F 07 03   ; 21A38 data, read by 20068
  9A48  .byte E8 E8 E8 E8 E8 CC C4 C6 E7 E7 E7 E7 E7 C3 C3 C1   ; 21A48 data, read by 20068
  9A58  .byte 11 08 12 08 41 22 1F 04 11 02 10 30 BE DD E0 FB   ; 21A58 data, read by 20068 2008b
  9A68  .byte 12 02 EF CF 80 80 80 C0 C0 80 11 02 80 80 80 C0   ; 21A68 data, read by 20068 2008b
  9A78  .byte C0 80 11 03 80 80 C0 C0 E0 E0 F0 00 80 80 C0 C0   ; 21A78 data, read by 20068 2008b
  9A88  .byte E0 E0 F0 11 08 E3 E5 C5 C4 C3 80 86 8B 12 15 12   ; 21A88 data, read by 20068 2008b 2003d 20042
  9A98  .byte 04 30 78 12 0C 43 41 C0 C0 40 84 12 09 F8 E0 80   ; 21A98 data, read by 2008b 20068
  9AA8  .byte 12 0C 02 05 72 1E 0E 04 08 30 12 08 78 12 03 38   ; 21AA8 data, read by 20068 2008b
  9AB8  .byte 7C E0 C1 12 09 30 0E 03 60 40 40 12 03 70 1C 6C   ; 21AB8 data, read by 20068 2008b
  9AC8  .byte 40 40 12 02 0E 01 40 C0 C0 C0 C0 00 30 00 40 C0   ; 21AC8 data, read by 20068 2008b
  9AD8  .byte C0 C0 C0 12 05 80 70 78 12 05 F0 78 7C 01 02 12   ; 21AD8 data, read by 20068 2008b
  9AE8  .byte 03 06 07 07 01 02 01 00 07 0F 0F 0F 38 F0 E0 C0   ; 21AE8 data, read by 2008b 20068
  9AF8  .byte 80 00 01 01 BC FC FC F0 E0 C0 80 00 0F 0F 0F 1F   ; 21AF8 data, read by 20068
  9B08  .byte 1F 1F 1F 1F 1F 1F 1F 3F 3F 3F 3F 3F 80 12 02 80   ; 21B08 data, read by 20068 2008b
  9B18  .byte 80 12 0B 01 12 05 80 80 12 03 80 80 80 C0 C0 1F   ; 21B18 data, read by 20068 2008b
  9B28  .byte 0F 0F 07 02 01 12 02 3F 3F 1F 1F 0F 07 03 12 07   ; 21B28 data, read by 20068 2008b
  9B38  .byte 0C 02 12 07 1C 80 80 12 06 C0 C0 C0 C0 C0 E0 E0   ; 21B38 data, read by 20068 2008b
  9B48  .byte C0 20 40 40 C0 C0 C0 60 12 0D 80 01 00 08 7C 38   ; 21B48 data, read by 20068 2008b
  9B58  .byte 70 E0 C0 12 04 01 30 70 C0 80 12 0C 3A 44 98 48   ; 21B58 data, read by 20068 2008b
  9B68  .byte 2D 11 12 08 B0 5E 61 4C 38 A4 04 12 0E 34 3C 3E   ; 21B68 data, read by 20068 2008b
  9B78  .byte 12 03 C3 15 02 7F 7F 12 06 A8 D8 12 03 F0 FE FE   ; 21B78 data, read by 20068 2008b
  9B88  .byte FE FC 00 3C 42 40 80 B0 8C E3 12 02 3C 3F 41 40   ; 21B88 data, read by 20068 2008b
  9B98  .byte 70 1C 00 70 78 38 04 0D 12 03 70 78 B8 C8 32 07   ; 21B98 data, read by 20068 2008b
  9BA8  .byte 01 12 02 06 02 23 1E 10 12 03 06 02 C2 E1 EF FE   ; 21BA8 data, read by 20068 2008b
  9BB8  .byte 12 04 04 04 04 08 12 03 F8 F8 C8 38 70 38 0C 06   ; 21BB8 data, read by 20068 2008b
  9BC8  .byte 03 01 01 01 00 07 03 01 12 05 80 40 40 20 20 90   ; 21BC8 data, read by 20068 2008b
  9BD8  .byte D0 48 00 80 80 C0 C0 60 20 30 12 04 01 03 04 0B   ; 21BD8 data, read by 20068 2008b
  9BE8  .byte 7C 01 03 07 06 0C 08 10 08 30 40 C0 80 00 E0 20   ; 21BE8 data, read by 20068
  9BF8  .byte F0 C0 80 12 04 C0 41 21 06 01 00 02 02 02 82 46   ; 21BF8 data, read by 20068 2008b
  9C08  .byte 18 12 02 02 02 02 47 4B 87 0F 16 2C 00 68 38 34   ; 21C08 data, read by 20068 2008b
  9C18  .byte 78 F0 E8 10 00 68 09 08 08 11 10 20 40 80 09 08   ; 21C18 data, read by 20068
  9C28  .byte 08 11 10 20 40 80 D0 08 E8 C8 08 08 10 10 D0 08   ; 21C28 data, read by 20068
  9C38  .byte E8 C8 08 08 10 10 12 03 20 30 20 40 12 04 20 30   ; 21C38 data, read by 20068 2008b
  9C48  .byte 20 40 00 01 3F 14 0A 05 25 25 02 12 02 0B 00 05   ; 21C48 data, read by 20068 2008b
  9C58  .byte 25 25 02 F0 F0 20 C8 24 24 A0 12 04 C8 24 24 A0   ; 21C58 data, read by 20068 2008b
  9C68  .byte 12 03 90 50 48 24 18 12 03 60 28 34 18 12 07 30   ; 21C68 data, read by 20068 2008b
  9C78  .byte 20 20 12 05 30 20 E0 12 04 18 38 18 12 05 18 3B   ; 21C78 data, read by 20068 2008b
  9C88  .byte 1B 04 12 03 04 03 01 12 05 38 FC FE 87 7B 12 05   ; 21C88 data, read by 20068 2008b
  9C98  .byte 80 80 C0 12 08 01 01 03 07 0E 08 08 00 0E 0E 0C   ; 21C98 data, read by 20068 2008b
  9CA8  .byte 08 12 11 7C FE 85 12 05 10 18 18 12 0D 80 C0 70   ; 21CA8 data, read by 20068 2008b
  9CB8  .byte 12 07 80 12 08 04 0C 08 18 18 18 18 08 24 24 22   ; 21CB8 data, read by 20068 2008b
  9CC8  .byte 25 23 25 22 25 18 18 1C 1A 1C 1A 1D 1A 12 04 80   ; 21CC8 data, read by 20068 2008b
  9CD8  .byte F0 F0 F0 12 08 B0 70 A0 60 A0 60 F0 F0 40 80 40   ; 21CD8 data, read by 20068 2008b
  9CE8  .byte 80 40 80 12 0A 10 08 00 02 02 12 03 22 25 22 11   ; 21CE8 data, read by 20068 2008b
  9CF8  .byte 06 19 31 64 1D 1A 1C 09 06 19 31 64 F0 80 70 C0   ; 21CF8 data, read by 20068
  9D08  .byte 00 80 80 C0 12 02 70 C0 00 80 80 C0 58 3C 5C 3C   ; 21D08 data, read by 20068 2008b
  9D18  .byte 58 B8 78 B0 A0 C0 A0 C0 A0 40 80 40 12 04 03 0F   ; 21D18 data, read by 20068 2008b
  9D28  .byte 7C 30 12 04 03 0F 7C 30 12 04 FF 83 70 E0 12 04   ; 21D28 data, read by 20068 2008b
  9D38  .byte FF 83 70 E0 12 05 C0 F0 38 12 05 C0 F0 38 4A 0B   ; 21D38 data, read by 20068 2008b
  9D48  .byte 17 1E 00 03 04 03 4A 0B 17 1E 00 03 04 03 C0 60   ; 21D48 data, read by 20068
  9D58  .byte 60 30 30 18 9C 8E C0 60 60 30 30 18 9C 8E 70 F0   ; 21D58 data, read by 20068
  9D68  .byte 60 E0 C0 C0 80 80 80 00 80 12 05 11 11 11 11 11   ; 21D68 data, read by 20068 2008b
  9D78  .byte 13 13 13 11 11 11 11 11 13 13 13 E3 E5 C5 C4 C3   ; 21D78 data, read by 20068
  9D88  .byte 80 86 8B E3 E5 C5 C4 C3 80 86 8B 0C C4 20 C0 12   ; 21D88 data, read by 20068
  9D98  .byte 04 0C C4 20 C0 12 04 1B 29 1B 16 08 34 1B 07 08   ; 21D98 data, read by 2008b 20068 2003d 20042
  9DA8  .byte 1B 05 03 05 0B 1B 06 03 06 00 1C 63 8C BF FF F8   ; 21DA8 data, read by 20068 2008b
  9DB8  .byte F0 1B 02 1C 73 45 B6 6F EF 00 01 E3 1F C6 C6 86   ; 21DB8 data, read by 20068 2008b
  9DC8  .byte 86 1B 02 01 E1 FB FB 7B 7B FF C0 05 0B 17 28 1F   ; 21DC8 data, read by 20068 2008b
  9DD8  .byte 2C 3F 29 05 F8 FC C1 DE F1 CF 3F FF 86 18 00 E1   ; 21DD8 data, read by 20068 2008b
  9DE8  .byte FE F0 C0 1C 01 07 C8 3C FF F1 C7 C8 5B EF 30 C0   ; 21DE8 data, read by 20068
  9DF8  .byte 0C 3E 78 77 E7 10 03 07 FE 1C F9 32 F3 F3 00 03   ; 21DF8 data, read by 20068
  9E08  .byte 07 0F 0E DD DD DD 00 80 70 8E F1 0E C1 FF 1B 02   ; 21E08 data, read by 20068 2008b
  9E18  .byte 80 1B 02 F0 FE F0 1B 04 80 60 98 FC 1B 0D 01 01   ; 21E18 data, read by 20068 2008b
  9E28  .byte 02 1B 07 01 17 2E 44 85 87 1D 39 E9 0D 1D 3B 7A   ; 21E28 data, read by 20068 2008b
  9E38  .byte 79 E5 D9 69 A0 21 3E F4 A4 27 3C E8 DF DE C2 34   ; 21E38 data, read by 20068
  9E48  .byte A4 24 08 38 43 FF DB 92 93 EA 05 05 BD 03 DB 92   ; 21E48 data, read by 20068
  9E58  .byte 90 1D 1E 0E 5F 2F D6 3A C5 05 F8 F9 FF FE 39 45   ; 21E58 data, read by 20068
  9E68  .byte 3B FB F7 F7 E3 8C 39 FF FE D8 AD 7D 9C 7B F7 F7   ; 21E68 data, read by 20068
  9E78  .byte F7 F7 F2 89 18 7F FE 98 09 2F 5F BE E7 EF EF EF   ; 21E78 data, read by 20068
  9E88  .byte F6 D0 A0 41 F7 DA 5F FF 87 06 0C 0C 6B B7 A0 1C   ; 21E88 data, read by 20068
  9E98  .byte 2B 5B B7 57 29 02 55 FA FF 0F 1B 02 CF 3F FF 0F   ; 21E98 data, read by 20068 2008b
  9EA8  .byte F0 29 03 8A E5 43 AC 10 E3 CF 9C F0 F8 FC F0 E0   ; 21EA8 data, read by 20068 2008b
  9EB8  .byte 00 80 1B 03 80 80 C0 E0 10 30 1B 0A E0 18 1C 1E   ; 21EB8 data, read by 20068 2008b
  9EC8  .byte 3F 3F 1B 04 08 0C 1E 1F 1B 07 80 1B 0D 03 1D 75   ; 21EC8 data, read by 20068 2008b
  9ED8  .byte 1B 06 02 0A 1B 05 F0 5E 55 1B 06 A0 AA 1B 07 80   ; 21ED8 data, read by 20068 2008b
  9EE8  .byte 1B 0E 07 1F 1B 0D E7 1F F3 1B 06 E0 0C 1B 04 F8   ; 21EE8 data, read by 20068 2008b
  9EF8  .byte FF 1C C7 1B 06 E3 18 1B 03 30 CC 03 03 0F 1B 04   ; 21EF8 data, read by 20068 2008b
  9F08  .byte 30 FC FC F0 1B 05 FC FE F7 1B 07 08 1B 07 3F 1B   ; 21F08 data, read by 20068 2008b
  9F18  .byte 08 03 03 06 06 0B 11 24 4E 00 01 02 02 05 0E 1F   ; 21F18 data, read by 20068 2008b
  9F28  .byte 3F CF 4E 79 67 D9 B7 D8 60 6E 49 66 5E BE 78 E7   ; 21F28 data, read by 20068
  9F38  .byte 9F D0 D0 A0 A0 D0 E8 70 3F 60 60 C0 C0 E0 70 BF   ; 21F38 data, read by 20068
  9F48  .byte CF 02 02 02 05 0D 1A 64 98 07 07 07 0E 1E 7D FB   ; 21F48 data, read by 20068
  9F58  .byte E7 8B FF 9C 1F 10 1B 03 74 07 6F E0 E0 C0 80 00   ; 21F58 data, read by 20068 2008b
  9F68  .byte F1 81 00 E3 1C 1B 03 7C FE FF 1C 1B 04 F8 40 2B   ; 21F68 data, read by 20068 2008b
  9F78  .byte 80 1B 03 0F 02 15 80 1B 05 18 FF 1B 04 FF 2A AF   ; 21F78 data, read by 20068 2008b
  9F88  .byte 1B 06 D5 01 C1 3A 7F 7F 03 80 40 FE 3E 04 78 7F   ; 21F88 data, read by 20068 2008b
  9F98  .byte 03 00 80 38 33 67 66 CC FC 3C 0F 1B 05 C0 30 0C   ; 21F98 data, read by 20068 2008b
  9FA8  .byte F8 C8 0C 3C 7A E2 C2 8F 1B 08 7F 29 02 FE FC FB   ; 21FA8 data, read by 20068 2008b
  9FB8  .byte F7 EF 3F 7F 29 06 40 70 7C FF 7D 9E E7 F9 80 C0   ; 21FB8 data, read by 20068 2008b
  9FC8  .byte F0 FC 29 04 01 07 0D 15 F6 FD 73 79 1B 02 02 0A   ; 21FC8 data, read by 20068 2008b
  9FD8  .byte 0B E3 FC FF D5 55 7F 81 7E 29 02 F0 2A AA 80 7E   ; 21FD8 data, read by 20068 2008b
  9FE8  .byte 29 03 BF 55 54 51 43 DD 6E 2E 37 AA AB AF BF 3F   ; 21FE8 data, read by 20068 2008b
  9FF8  .byte BF DF DF 40 20 10 88 C4 C4 C2 62 80 C0 E0 F0 F8   ; 21FF8 data, read by 20068
  A008  .byte F8 FC FC 00 01 03 04 0B 17 26 4C 1B 03 03 07 0F   ; 22008 data, read by 20068 2008b
  A018  .byte 1F 3F 60 8F F1 01 87 0F 10 38 1F 70 0E FC F8 F0   ; 22018 data, read by 20068
  A028  .byte EF C0 60 F8 3E 07 83 F1 78 1E 83 00 C0 38 04 02   ; 22028 data, read by 20068
  A038  .byte 81 60 F3 39 1C 0E 87 C7 F0 63 04 C2 21 10 08 08   ; 22038 data, read by 20068
  A048  .byte 07 9F B8 FE EF 73 39 F8 1C E3 47 1B 02 84 42 01   ; 22048 data, read by 20068 2008b
  A058  .byte E1 FC 7D 1E 87 C7 F8 E7 9F 3D 82 60 18 08 07 1F   ; 22058 data, read by 20068
  A068  .byte 7F FF C0 60 78 D6 39 C8 A0 4D 00 80 40 28 C6 F7   ; 22068 data, read by 20068
  A078  .byte FF F2 1B 05 80 40 20 1B 06 80 C0 1B 07 03 1B 0E   ; 22078 data, read by 20068 2008b
  A088  .byte 0F F0 1B 07 0F 00 01 01 02 02 06 1A E2 1B 03 01   ; 22088 data, read by 20068 2008b
  A098  .byte 01 01 05 1D 9D 3A 34 67 C8 90 20 40 7E FD FB F8   ; 22098 data, read by 20068
  A0A8  .byte F0 E0 C0 80 80 00 03 CC 30 1B 02 01 7F FF FC 30   ; 220A8 data, read by 20068 2008b
  A0B8  .byte 1B 04 0F 72 81 01 03 1E 75 AA F0 81 1B 03 01 0A   ; 220B8 data, read by 20068 2008b
  A0C8  .byte 15 E0 00 0F 7A D5 AA 55 AA 1F FE F0 85 2A 55 AA   ; 220C8 data, read by 20068
  A0D8  .byte 55 00 7F D5 AA 55 AA 55 AA 1B 02 2A 55 AA 55 AA   ; 220D8 data, read by 20068 2008b
  A0E8  .byte 55 00 C0 7F AA 55 AA 55 AA 1B 02 80 55 AA 55 AA   ; 220E8 data, read by 20068 2008b
  A0F8  .byte 55 35 EA 55 AA 55 AA 55 AA 0A 15 AA 55 AA 55 AA   ; 220F8 data, read by 20068
  A108  .byte 55 55 AA 55 AA 5C B0 C0 80 AA 55 AA 55 A0 40 1B   ; 22108 data, read by 20068
  A118  .byte 02 7F 80 1B 06 80 1B 07 C3 38 06 01 1B 04 03 1B   ; 22118 data, read by 2008b 20068
  A128  .byte 07 9F F9 71 B7 5F 2D 16 0C 00 80 40 20 10 08 1B   ; 22128 data, read by 2008b 20068
  A138  .byte 02 9F 0F 01 F0 0E 01 80 E0 29 03 0F 01 1B 02 80   ; 22138 data, read by 2008b 20068
  A148  .byte FE FF FE 7E 09 83 60 38 29 05 7F 1F 07 79 7C FC   ; 22148 data, read by 20068 2008b
  A158  .byte FC F8 F8 F1 03 29 08 EF 29 05 FE E4 BF DF EF EF   ; 22158 data, read by 20068 2008b
  A168  .byte EF DF DF BF 97 97 94 93 37 37 37 6F EF EF EF EF   ; 22168 data, read by 20068
  A178  .byte DF DF DF BF 62 1A E2 E2 C2 C7 84 8B FC E4 FC FC   ; 22178 data, read by 20068
  A188  .byte FC F8 FB F4 00 01 01 02 02 C4 F4 3C 1B 03 01 01   ; 22188 data, read by 20068 2008b
  A198  .byte 03 03 C3 9C 38 38 70 71 F1 E2 E2 7F 29 03 FE FE   ; 22198 data, read by 20068 2008b
  A1A8  .byte FD FC 3F 7F 87 E0 FC FF 07 00 C0 80 78 07 1B 02   ; 221A8 data, read by 20068 2008b
  A1B8  .byte F8 07 07 C2 F4 78 13 97 EA E5 18 05 03 87 6F 0F   ; 221B8 data, read by 20068
  A1C8  .byte 1F 1F 8F 3F 7E F5 EA 50 80 0B 7F 29 06 F4 F8 FE   ; 221C8 data, read by 20068 2008b
  A1D8  .byte BE 55 0A 1B 02 D0 29 07 2F CA 34 0C 07 0B 06 0E   ; 221D8 data, read by 20068 2008b
  A1E8  .byte 16 3F CF F3 F8 F5 FB F3 E3 BF 70 E3 8C 10 2A 7D   ; 221E8 data, read by 20068
  A1F8  .byte 7F CC BF 7C F3 EF DF BF BF 18 E7 98 07 08 90 74   ; 221F8 data, read by 20068
  A208  .byte EA E0 18 67 F8 F7 EF DF DF 04 09 E3 8C 7F 08 11   ; 22208 data, read by 20068
  A218  .byte AB 03 06 0C 70 80 F7 EF DF 0F F0 01 1E F0 22 77   ; 22218 data, read by 20068
  A228  .byte FF F0 1B 02 01 0F DF DF BF 1C F4 D4 2C 74 FC FC   ; 22228 data, read by 20068 2008b
  A238  .byte FC E3 0B 2B DB DB BB BB 3B 80 80 80 80 83 84 4D   ; 22238 data, read by 20068
  A248  .byte 4A 1B 05 03 82 85 07 1A 75 AA 55 AA 55 AA 00 05   ; 22248 data, read by 20068 2008b
  A258  .byte 0A 55 AA 55 AA 55 55 AA 55 AA 55 AA 55 AA AA 55   ; 22258 data, read by 20068
  A268  .byte AA 55 AA 55 AA 55 55 A9 52 AA 54 B8 70 A0 AA 56   ; 22268 data, read by 20068
  A278  .byte A8 54 A8 40 80 40 B8 DD DA DD DC DC BC BC E0 F8   ; 22278 data, read by 20068
  A288  .byte FD FE 29 04 4F 8B 0B FD FD FE E1 FF 31 76 F7 FB   ; 22288 data, read by 20068 2008b
  A298  .byte 7B BD DE DF 07 DF FF BF 7E 70 00 C1 FF 3F 9D E3   ; 22298 data, read by 20068
  A2A8  .byte 29 03 3E F8 F0 E0 C1 06 18 77 EF 7F 29 02 FE F9   ; 222A8 data, read by 20068 2008b
  A2B8  .byte E7 9F 7F 47 BA BD 70 E0 41 A2 2E BF 7D 7E 29 02   ; 222B8 data, read by 20068 2008b
  A2C8  .byte FE DD E8 0C 13 2C F3 CC 33 CF 3D F3 EC D3 0C 33   ; 222C8 data, read by 20068
  A2D8  .byte CC 30 C0 CF 39 C8 2C D5 FA FF 7F 33 C3 27 D3 2A   ; 222D8 data, read by 20068
  A2E8  .byte 05 1B 02 E3 F7 3F 0F 03 A0 50 EA 3C C4 F0 FC FF   ; 222E8 data, read by 20068 2008b
  A2F8  .byte 5F AF 15 E0 FE FF 0F C1 F8 3E 07 1B 03 F0 0E C1   ; 222F8 data, read by 20068 2008b
  A308  .byte F8 FF 4A 40 41 8B 94 B8 E0 F3 BF 3F 3E 74 6B 47   ; 22308 data, read by 20068
  A318  .byte 1F 0F 1E B4 CE 09 11 13 DF A3 E1 48 36 F7 E2 E1   ; 22318 data, read by 20068
  A328  .byte ED DD 3A 3D 7E FF FC F3 29 02 05 82 B1 7C F3 EF   ; 22328 data, read by 20068 2008b
  A338  .byte EF DF AC 5C AC FE 01 29 02 F0 57 A7 57 01 FE 29   ; 22338 data, read by 20068 2008b
  A348  .byte 03 7F AB D5 FA D7 CA E3 23 BF 7F 7F 07 78 BD DD   ; 22348 data, read by 2008b 20068
  A358  .byte BD 29 02 F3 CC BF 71 61 E1 BB 84 3F 73 CC BC B2   ; 22358 data, read by 20068 2008b
  A368  .byte 72 29 03 F3 4D 5A 54 40 DF BF 3F BC 33 8F 9F 9F   ; 22368 data, read by 20068 2008b
  A378  .byte FF FA 55 EA 70 A0 10 15 B8 87 BF 3F DF DF EF EA   ; 22378 data, read by 20068
  A388  .byte 54 AA 62 22 11 15 A2 57 BB DD DD DD EE EA 55 A0   ; 22388 data, read by 20068
  A398  .byte 35 3A 35 2A 35 2A B5 AA CA C5 CA D5 CA D5 4A 55   ; 22398 data, read by 20068
  A3A8  .byte 55 AA 55 AA 55 AA 55 AB AA 55 AA 55 AA 55 AA 54   ; 223A8 data, read by 20068
  A3B8  .byte 55 AA 55 AA 54 98 60 80 AA 55 AA 54 A8 60 80 00   ; 223B8 data, read by 20068
  A3C8  .byte 40 80 1B 06 80 1B 07 79 79 03 07 29 02 DF BF 29   ; 223C8 data, read by 20068 2008b
  A3D8  .byte 04 FE 19 E7 29 05 9F EE F4 F0 BF BF 7F 7F 29 05   ; 223D8 data, read by 2008b 20068
  A3E8  .byte DF BE BD 33 6C 53 AF C1 EF DF DF DF BF BC 70 9E   ; 223E8 data, read by 20068
  A3F8  .byte 58 F0 CB 0C 73 CC 33 29 03 F4 F3 8C 33 CC 0C 33   ; 223F8 data, read by 20068 2008b
  A408  .byte CC 33 CC 38 E0 C0 F3 CC 33 CC 30 C0 1B 02 DA 75   ; 22408 data, read by 20068 2008b
  A418  .byte AA 05 1B 04 20 80 1B 06 AF 55 AA 55 AA 05 1B 08   ; 22418 data, read by 20068 2008b
  A428  .byte 10 20 FD FF BF 57 AA 55 AA 05 02 1B 07 41 A8 F4   ; 22428 data, read by 20068 2008b
  A438  .byte FA FF 5F AB 55 BF 57 0B 05 1B 04 FF 3F 0F 83 50   ; 22438 data, read by 20068 2008b
  A448  .byte EB FE 7C C3 F1 FC 7E AF 14 01 03 A3 A3 BF A3 91   ; 22448 data, read by 20068
  A458  .byte 51 13 4C C1 C1 DD 5D 60 E0 E3 F7 FF FE F8 F0 F0   ; 22458 data, read by 20068
  A468  .byte F8 FD FF DF DF DF EF EF F7 72 78 81 07 1F 3F 7E   ; 22468 data, read by 20068
  A478  .byte FE FD F9 FE F8 E0 C0 80 1B 03 E1 C1 40 40 C5 EA   ; 22478 data, read by 20068 2008b
  A488  .byte 35 2B 1E 3E 3F 3F 3A 15 CA D5 C2 C4 C4 C8 C8 C8   ; 22488 data, read by 20068
  A498  .byte 88 89 65 6B 6A 60 60 60 C0 D0 40 55 AE 5D A7 7B   ; 22498 data, read by 20068
  A4A8  .byte FD FD 9F 8A 11 22 50 80 1B 02 EA D7 BA FD FB D5   ; 224A8 data, read by 20068 2008b
  A4B8  .byte A8 F1 15 20 40 1B 05 E3 9D 6B 58 A0 77 38 C0 1B   ; 224B8 data, read by 20068 2008b
  A4C8  .byte 08 D5 6A 25 5E E3 1B 03 0A 05 02 01 1B 04 55 AA   ; 224C8 data, read by 2008b 20068
  A4D8  .byte 55 AA D5 7F 1B 02 AA 55 AA 55 2A 1B 03 55 AA 55   ; 224D8 data, read by 20068 2008b
  A4E8  .byte AA 5F E0 1B 02 AA 55 AA 55 A0 1B 03 55 AA 57 78   ; 224E8 data, read by 20068 2008b
  A4F8  .byte 1B 03 20 AA 55 A8 80 1B 04 5C E0 1B 06 A0 1B 07   ; 224F8 data, read by 20068 2008b
  A508  .byte BF 3E 00 80 E0 FF F7 F6 29 03 7F 9F F0 FB FB C1   ; 22508 data, read by 20068 2008b
  A518  .byte 02 0D 30 EB D7 2C D3 FE FD F3 CF 3C F8 F3 EC 5C   ; 22518 data, read by 20068
  A528  .byte B3 4C B3 CC 33 CE 3C E3 CC B3 4C 33 CC 30 C0 CD   ; 22528 data, read by 20068
  A538  .byte 37 C8 30 C0 80 01 03 32 C8 30 C0 1B 0A D8 60 00   ; 22538 data, read by 20068 2008b
  A548  .byte F0 0F 1B 04 01 1B 09 01 82 7C 13 20 C0 1B 09 C0   ; 22548 data, read by 20068 2008b
  A558  .byte 1B 03 E0 1F 00 01 1B 09 01 02 0C 10 20 F8 87 AA   ; 22558 data, read by 20068 2008b
  A568  .byte 05 1B 03 01 02 04 1B 06 01 C1 A8 50 A1 42 85 0A   ; 22568 data, read by 20068 2008b
  A578  .byte 15 2B 07 0F 1E 3D 7A F5 EA D4 28 48 84 84 83 89   ; 22578 data, read by 20068
  A588  .byte 94 AA F6 F0 78 78 7D 76 6B 55 7F 7F 7F 9F 0F 07   ; 22588 data, read by 20068
  A598  .byte 81 60 3C 3E 5F EF E7 C1 0E 9E F3 E7 29 02 FE FC   ; 22598 data, read by 20068 2008b
  A5A8  .byte F8 01 00 02 86 FE FD F9 04 66 1F FE F8 80 80 83   ; 225A8 data, read by 20068
  A5B8  .byte FC 83 E3 0F 7F 78 03 7C 1B 02 09 11 12 21 CA 14   ; 225B8 data, read by 20068 2008b
  A5C8  .byte 21 43 90 20 20 C0 1B 04 AA D4 F9 07 1C 6E F7 FB   ; 225C8 data, read by 20068 2008b
  A5D8  .byte 1B 04 03 01 1B 02 0F 71 C3 87 86 6E 9C E0 00 0E   ; 225D8 data, read by 20068 2008b
  A5E8  .byte 7C F8 79 91 63 1E FF 80 FF 6A 55 20 20 20 00 7F   ; 225E8 data, read by 20068
  A5F8  .byte 00 80 80 80 1B 02 FF 00 FD A8 51 1B 04 FF 1B 06   ; 225F8 data, read by 20068 2008b
  A608  .byte FF 00 F7 A2 45 1B 04 FF 1B 06 F8 14 FB AD 54 08   ; 22608 data, read by 20068 2008b
  A618  .byte 10 13 00 E8 04 03 03 07 0F 0C 50 B8 6C 8C 38 40   ; 22618 data, read by 20068
  A628  .byte C0 E0 20 70 F8 F8 C0 80 00 C0 F5 36 CD EB D4 DB   ; 22628 data, read by 20068
  A638  .byte BC 73 FB FB F6 F4 EB E4 C3 8C DC 73 CC 37 DC 38   ; 22638 data, read by 20068
  A648  .byte E0 C0 D3 8C 33 C8 20 C0 1B 02 C8 60 80 1B 02 03   ; 22648 data, read by 20068 2008b
  A658  .byte 06 08 20 9F 1B 06 07 0F 3B 61 C0 1B 05 C0 06 01   ; 22658 data, read by 20068 2008b
  A668  .byte 01 06 08 40 1B 02 81 03 06 1C 30 02 0C 10 20 F0   ; 22668 data, read by 20068 2008b
  A678  .byte 09 1B 03 16 78 D0 C0 E0 70 1B 06 01 06 0D 1B 08   ; 22678 data, read by 20068 2008b
  A688  .byte 02 04 18 20 40 80 00 F0 1B 03 01 02 0C 10 60 1B   ; 22688 data, read by 20068 2008b
  A698  .byte 04 01 03 0F 1F 09 31 40 80 05 0A 15 AF 34 0C 3E   ; 22698 data, read by 2008b 20068
  A6A8  .byte 7F FD F5 EA 50 57 AF DF 7F 7F AE DF CF A8 50 20   ; 226A8 data, read by 20068
  A6B8  .byte 1B 02 01 1B 02 D5 AB 57 BF 7F FF FA F5 2A 54 A8   ; 226B8 data, read by 20068 2008b
  A6C8  .byte 40 80 1B 03 60 98 E6 E9 D2 AA 54 A0 9E 64 18 06   ; 226C8 data, read by 20068 2008b
  A6D8  .byte 01 1B 03 03 05 FA 05 0A 25 6A D5 66 E2 04 F8 1B   ; 226D8 data, read by 20068 2008b
  A6E8  .byte 04 01 E0 BE 55 AA 55 AA 55 1B 08 8F 71 20 E0 BE   ; 226E8 data, read by 2008b 20068
  A6F8  .byte 55 AA 55 1B 08 FD FA F5 6A 35 FA BF 55 1B 08 F0   ; 226F8 data, read by 20068 2008b
  A708  .byte 60 81 FF 03 0C 18 C0 1B 08 20 40 C0 80 03 07 1D   ; 22708 data, read by 20068 2008b
  A718  .byte 30 1B 0A 02 06 0D 18 30 43 1B 0B 03 0C 33 C7 18   ; 22718 data, read by 20068 2008b
  A728  .byte 1B 04 03 0C 3B E7 2F 5C 93 2C F0 E0 F0 60 13 2F   ; 22728 data, read by 20068 2008b
  A738  .byte 6C C0 1B 02 E0 C0 30 30 60 C0 1B 04 E0 E0 C0 1B   ; 22738 data, read by 20068 2008b
  A748  .byte 05 CD 36 C8 38 F7 C0 1B 02 32 C8 30 C7 1B 07 03   ; 22748 data, read by 2008b 20068
  A758  .byte E0 1F 1B 05 E0 1F 1B 03 30 40 80 1B 02 C0 3F 27   ; 22758 data, read by 20068 2008b
  A768  .byte 1B 02 01 06 D8 3F 00 1F 00 01 03 04 18 20 00 FC   ; 22768 data, read by 20068 2008b
  A778  .byte 30 40 80 1B 03 FC 03 60 C0 1B 09 03 04 18 60 F0   ; 22778 data, read by 20068 2008b
  A788  .byte 1B 05 01 06 18 10 60 80 1B 03 01 07 00 03 04 18   ; 22788 data, read by 20068 2008b
  A798  .byte 60 82 05 2A 0F 00 03 07 1F 7D FA D5 81 02 15 2B   ; 22798 data, read by 20068
  A7A8  .byte 5F BF 7E FD 7E FD EA D4 A0 40 80 00 5F BF FE FD   ; 227A8 data, read by 20068
  A7B8  .byte EA D5 A8 50 A0 40 1B 06 CF E7 D3 A9 50 80 01 07   ; 227B8 data, read by 20068 2008b
  A7C8  .byte 1B 08 F5 EA 54 A0 60 7F C1 E2 1B 06 02 01 03 0D   ; 227C8 data, read by 20068 2008b
  A7D8  .byte 3A D5 AA 55 AA 55 00 02 05 2A 55 AA 55 AA AA 55   ; 227D8 data, read by 20068
  A7E8  .byte AA 55 AA 55 AB 55 00 80 40 A0 50 A8 54 AA AE 5F   ; 227E8 data, read by 20068
  A7F8  .byte BF 5F BF 29 02 5F 1B 07 A0 AA 55 AA D5 EA FD 29   ; 227F8 data, read by 20068 2008b
  A808  .byte 02 1B 08 AA 5D AE 57 AB 55 AA F5 1B 08 B8 56 AB   ; 22808 data, read by 2008b 20068
  A818  .byte 29 05 1B 08 40 8F F0 C0 E0 F0 F8 FC 1B 08 83 FC   ; 22818 data, read by 20068 2008b
  A828  .byte 1B 0E E0 1F 1B 06 1F 1B 07 60 C0 80 1B 05 C0 80   ; 22828 data, read by 20068 2008b
  A838  .byte 1B 0D 03 1B 0A 01 02 0D 13 27 4F 1B 03 01 02 0E   ; 22838 data, read by 20068 2008b
  A848  .byte 1E 3E 4E 9D BA F5 EA D0 A0 47 3F 7F 7F 7F 29 03   ; 22848 data, read by 20068 2008b
  A858  .byte F8 A3 40 80 00 03 0C 11 62 FC 29 03 FC F3 EF 9F   ; 22858 data, read by 20068 2008b
  A868  .byte F0 1F 61 8A 17 2E 5D FA 0F E0 9F 7F 29 04 60 81   ; 22868 data, read by 20068 2008b
  A878  .byte 40 E1 D7 AE 58 B0 9F 7D FF FE F9 F6 CF BF 5F BF   ; 22878 data, read by 20068
  A888  .byte FB FD FE FF EA 15 A0 58 24 82 01 00 15 EA EA D5   ; 22888 data, read by 20068
  A898  .byte AA E0 F8 7F BF FC 1B 05 80 40 00 80 01 02 0D 30   ; 22898 data, read by 20068 2008b
  A8A8  .byte F0 F8 FC 1B 02 01 1B 05 7F D7 AA 55 AA 55 2A 40   ; 228A8 data, read by 20068 2008b
  A8B8  .byte 1C 2B 55 AA 55 AA 55 3E F8 FC FE 5F AB 55 AA 55   ; 228B8 data, read by 20068
  A8C8  .byte 01 80 70 AE 55 AA 55 AA 55 AA 55 AA 55 AA 55 AA   ; 228C8 data, read by 20068
  A8D8  .byte AA 55 AA 55 AA 55 AA 55 55 AA 55 AA 55 AA 55 AF   ; 228D8 data, read by 20068
  A8E8  .byte AA 55 AA 55 AA 55 AA A9 AA 55 8A 80 80 D0 AA 55   ; 228E8 data, read by 20068
  A8F8  .byte 55 AA 75 7F 7F 7F 29 02 AA 55 AA 1B 03 AA 55 55   ; 228F8 data, read by 20068 2008b
  A908  .byte AA 55 29 06 55 AA 55 1B 03 55 00 AA 55 AA 29 05   ; 22908 data, read by 20068 2008b
  A918  .byte 5F AA 55 0A 1B 02 50 00 A0 55 AA F5 29 03 FC FE   ; 22918 data, read by 20068 2008b
  A928  .byte AA 55 AB 01 02 04 1B 02 54 AA 54 FE FC F8 0F 35   ; 22928 data, read by 20068 2008b
  A938  .byte CE 12 BF A6 BD 46 00 08 35 E1 DB C3 DB 83 9D 3B   ; 22938 data, read by 20068
  A948  .byte 75 FB D4 B8 63 C3 7E FE FF FC FB E7 DE 3E 18 61   ; 22948 data, read by 20068
  A958  .byte B2 7C FD FB FF FE E7 9F 3E BB 7B 77 EF EF 8D 0B   ; 22958 data, read by 20068
  A968  .byte 1F BA 75 EA D0 A0 7F 29 07 D5 AB 5E B8 60 20 60   ; 22968 data, read by 20068 2008b
  A978  .byte B1 FE F9 E3 DF BF DF 9F 4E C0 81 02 05 2B 57 AF   ; 22978 data, read by 20068
  A988  .byte 7C 7F FE FD FA D4 A8 50 80 2B 5F BF 7C F3 CF 3F   ; 22988 data, read by 20068
  A998  .byte FF D4 A0 40 80 1B 03 30 F3 ED 3A D5 0A 14 80 C0   ; 22998 data, read by 20068 2008b
  A9A8  .byte 00 02 05 2A 15 0B 0F 0F FE 7F AF 41 1B 04 80 F0   ; 229A8 data, read by 20068 2008b
  A9B8  .byte 5E BF 29 04 1B 02 80 C0 1B 04 3F 3F 3F 29 05 2A   ; 229B8 data, read by 20068 2008b
  A9C8  .byte 05 02 1B 02 01 06 1D D5 FA FD 29 02 FE F9 E7 AA   ; 229C8 data, read by 20068 2008b
  A9D8  .byte 55 AB 5D 7A D4 A8 40 55 AA 54 A3 9F 7F F8 E0 BA   ; 229D8 data, read by 20068
  A9E8  .byte D5 A8 50 80 1B 03 47 3F FC F0 80 1B 03 82 1B 04   ; 229E8 data, read by 20068 2008b
  A9F8  .byte 03 0F 7D C7 1B 04 03 0F 7F AA 0D 03 0F 7E FA AA   ; 229F8 data, read by 20068 2008b
  AA08  .byte 55 FF 0F 03 0F 7F 29 03 AA 55 FA D5 AA 5F BC E0   ; 22A08 data, read by 20068 2008b
  AA18  .byte 29 05 FC E0 00 AA 55 AB 5E E0 80 1B 02 29 02 FE   ; 22A18 data, read by 20068 2008b
  AA28  .byte F0 80 1B 03 A8 70 C0 1B 05 F0 C0 1B 06 7F 42 7C   ; 22A28 data, read by 20068 2008b
  AA38  .byte 24 BF B7 D6 E5 BC 81 BB C3 57 4F 2F 17 1F 3F 7F   ; 22A38 data, read by 20068
  AA48  .byte FD EB D4 A8 50 FE FE FE FE FE 29 03 FD 1A 14 08   ; 22A48 data, read by 20068 2008b
  AA58  .byte 08 82 81 41 EF EF EF F7 F7 7D 7A BC 01 0A 15 2F   ; 22A58 data, read by 20068
  AA68  .byte 5F BE FA F4 FE F5 EA D0 A0 40 1B 02 5E FA F5 EB   ; 22A68 data, read by 20068 2008b
  AA78  .byte 57 BF 7C B8 A1 1B 07 F3 CF FE FB C2 04 0C F4 1B   ; 22A78 data, read by 20068 2008b
  AA88  .byte 02 01 00 01 03 03 03 AF 51 80 1B 04 E0 5E AF 7F   ; 22A88 data, read by 2008b 20068
  AA98  .byte 29 04 1F E0 F0 38 1B 05 07 C7 29 06 1B 04 01 07   ; 22A98 data, read by 20068 2008b
  AAA8  .byte 1A 75 29 04 FE F9 E7 9F 00 03 0E 35 EA 54 A0 00   ; 22AA8 data, read by 20068 2008b
  AAB8  .byte FF FC F3 CF 3F FC E0 80 EA 58 A0 40 1B 02 01 07   ; 22AB8 data, read by 20068 2008b
  AAC8  .byte 1F FC F0 C0 1B 02 01 07 80 1B 02 01 07 3D FA D5   ; 22AC8 data, read by 20068 2008b
  AAD8  .byte 80 1B 02 01 07 3F 29 02 01 07 3E F5 AA 57 BC E0   ; 22AD8 data, read by 20068 2008b
  AAE8  .byte 01 07 3F 29 02 FC E0 00 FA D5 AB 5E E0 80 1B 02   ; 22AE8 data, read by 20068 2008b
  AAF8  .byte 29 02 FE F0 80 1B 03 AF 78 C0 1B 05 F8 C0 1B 06   ; 22AF8 data, read by 20068 2008b
  AB08  .byte 05 09 05 10 80 01 02 0A 2B 57 2F DF FF FE FD EA   ; 22B08 data, read by 2003d 20042 20068 2008b
  AB18  .byte D4 A8 50 00 C6 6F 5F 7F F7 A8 43 8F 78 90 40 80   ; 22B18 data, read by 20068
  AB28  .byte 05 05 A1 57 BF FF FC F0 C3 05 08 BE 06 F9 C2 8C   ; 22B28 data, read by 20068 2008b
  AB38  .byte 30 C0 05 09 49 89 08 10 10 20 20 11 06 06 07 0F   ; 22B38 data, read by 20068 2008b
  AB48  .byte 0F 1F 1F 0E 10 10 E0 01 06 1D 6A D5 09 03 FE F9   ; 22B48 data, read by 20068 2008b
  AB58  .byte E7 9F 7F 03 0D 3A F5 AA 55 AA 55 FC F3 CF 3F 09   ; 22B58 data, read by 20068
  AB68  .byte 04 AA 50 A0 7F AA 55 AA 55 7E F8 E0 09 05 00 01   ; 22B68 data, read by 2008b 20068
  AB78  .byte 0F FD AA 5B BC E0 00 01 0F 09 02 FC E0 00 3D F5   ; 22B78 data, read by 20068 2008b
  AB88  .byte AB 5E F0 80 05 02 3F FF FE F0 80 05 03 AF 78 C0   ; 22B88 data, read by 20068 2008b
  AB98  .byte 05 05 F8 C0 05 06 CE B0 CF F1 FE E0 80 05 09 04   ; 22B98 data, read by 20068 2008b
  ABA8  .byte FC 06 FF 05 0C 37 C1 1F C0 05 0C 1C E0 80 05 0D   ; 22BA8 data, read by 20068 2008b
  ABB8  .byte 0E 07 05 06 01 05 07 AA FF 05 06 FF 05 07 AF F0   ; 22BB8 data, read by 20068 2008b
  ABC8  .byte 05 06 F0 05 07 FF 05 0F CA D1 A2 4C 90 63 8C 31   ; 22BC8 data, read by 20068 2008b
  ABD8  .byte 23 03 03 01 01 05 03 1F 30 67 6F CF DF 5F 0C 00   ; 22BD8 data, read by 20068 2008b
  ABE8  .byte 0F 1F 1F 3F 3F 3F 3C 00 80 00 80 C0 80 05 04 C0   ; 22BE8 data, read by 20068 2008b
  ABF8  .byte C0 C0 80 05 02 0E 0E 34 38 70 00 60 E0 00 18 0C   ; 22BF8 data, read by 20068 2008b
  AC08  .byte 00 60 60 05 02 E0 00 E0 E0 70 40 18 38 E0 E0 05   ; 22C08 data, read by 20068 2008b
  AC18  .byte 02 70 70 60 00 3C 30 02 07 0F 07 02 00 0C 3C 1C   ; 22C18 data, read by 2008b 20068
  AC28  .byte 18 00 01 03 00 80 00 70 FB 33 03 05 02 80 C0 80   ; 22C28 data, read by 20068 2008b
  AC38  .byte 0C 1C 08 05 02 08 08 20 30 20 05 04 10 18 C0 C0   ; 22C38 data, read by 20068 2008b
  AC48  .byte C0 05 06 03 0F 3C F0 05 06 03 0F 03 0F 3C F0 C0   ; 22C48 data, read by 20068 2008b
  AC58  .byte 05 05 03 0F 3F 09 03 C0 05 07 3F 09 03 FE F8 E0   ; 22C58 data, read by 20068 2008b
  AC68  .byte 80 05 08 FE F8 E0 80 05 07 03 0F 3C F0 C0 05 05   ; 22C68 data, read by 20068 2008b
  AC78  .byte 03 0F 3F 05 02 CF C0 05 06 3F 3F 09 03 FC 05 02   ; 22C78 data, read by 20068 2008b
  AC88  .byte FF 05 07 FF FC F0 C0 05 02 1E 78 E0 05 05 01 07   ; 22C88 data, read by 20068 2008b
  AC98  .byte 1F 05 0D FE F0 80 05 05 10 38 3C 6C 6F EE 75 39   ; 22C98 data, read by 20068 2008b
  ACA8  .byte 00 10 18 30 3C 7F 3E 1E 80 C0 E0 60 78 76 AF CD   ; 22CA8 data, read by 20068
  ACB8  .byte 00 80 C0 80 E0 F8 F2 F6 5F 58 BF 4E 3D 3A 71 3C   ; 22CB8 data, read by 20068
  ACC8  .byte 3F 3F 7F 37 0E 1C 3E 13 7D 62 FD 3A F4 E8 C4 F2   ; 22CC8 data, read by 20068
  ACD8  .byte FE FC FE DC 38 70 F8 4C 7A 7C 38 10 05 04 24 30   ; 22CD8 data, read by 20068 2008b
  ACE8  .byte 10 05 05 10 00 10 00 10 00 10 00 10 10 10 10 10   ; 22CE8 data, read by 20068 2008b
  ACF8  .byte 10 10 10 24 4D 24 10 3F F5 AA 40 24 05 0A 55 BF   ; 22CF8 data, read by 20068 2003d 20042 2008b
  AD08  .byte 4D 04 FC 57 AB 1C 30 01 04 24 02 A8 54 E3 CF FE   ; 22D08 data, read by 20068 2008b
  AD18  .byte FB FF 1F EA 00 1A B4 40 24 03 15 FF E5 4B BF 4D   ; 22D18 data, read by 20068 2008b
  AD28  .byte 02 F0 AF 15 80 A8 14 24 03 50 EA 7F 57 EB 4D 02   ; 22D28 data, read by 2008b 20068
  AD38  .byte 07 3E F0 A0 40 24 04 01 0F 5F BF 4D 03 FC AB 15   ; 22D38 data, read by 20068 2008b
  AD48  .byte 24 06 54 EA 4D 05 03 FD 5E 2B 24 05 02 A1 D4 4D   ; 22D48 data, read by 20068 2008b
  AD58  .byte 04 FE 55 0B C0 30 24 04 AA F4 3F CF 4D 03 0F 7A   ; 22D58 data, read by 2008b 20068
  AD68  .byte D4 24 06 05 2B 4D 05 F0 AF 24 07 50 4D 06 00 80   ; 22D68 data, read by 20068 2008b
  AD78  .byte 78 07 24 06 80 F8 4D 04 00 07 3A F5 F8 24 05 05   ; 22D78 data, read by 20068 2008b
  AD88  .byte 0A 07 4D 03 04 6A F7 FF 1B 05 03 01 4D 05 7F 1F   ; 22D88 data, read by 20068 2008b
  AD98  .byte 0F 2A D4 A0 53 E7 CB E7 73 4D 03 FC F8 F4 F8 FC   ; 22D98 data, read by 20068 2008b
  ADA8  .byte 00 03 01 00 04 8F 8F 8F FF F0 24 06 0F F0 F1 E1   ; 22DA8 data, read by 20068 2008b
  ADB8  .byte 63 03 07 9F F0 0F 0E 1E 1C 3C 38 60 CF 89 8C E6   ; 22DB8 data, read by 20068
  ADC8  .byte F2 F9 FD FF 07 07 03 01 01 00 01 01 4D 03 FE F4   ; 22DC8 data, read by 20068 2008b
  ADD8  .byte E8 C1 87 4D 06 FE F8 4D 02 01 00 0C 70 C0 C0 4D   ; 22DD8 data, read by 20068 2008b
  ADE8  .byte 04 F0 88 38 1C 52 AD FB 3F 0F 03 1F 7F 4D 04 7F   ; 22DE8 data, read by 2008b 20068
  ADF8  .byte 0F 01 00 F8 E0 C3 C7 E3 F1 F8 FE 4D 02 FC F8 FC   ; 22DF8 data, read by 20068 2008b
  AE08  .byte FE FF 7F 03 00 80 C3 CF 9F 3F 3F FF 03 24 05 C1   ; 22E08 data, read by 20068 2008b
  AE18  .byte C5 EA 77 BF 3F 7C 70 C0 4D 03 7F 7F 7F 4D 02 05   ; 22E18 data, read by 20068 2008b
  AE28  .byte AF FE F0 80 00 1C F8 4D 06 E0 00 3F 4D 02 FE F1   ; 22E28 data, read by 20068 2008b
  AE38  .byte CF BF 3F 24 08 3D CE F7 3B 8B F7 F8 C0 FE 3F 0F   ; 22E38 data, read by 20068 2008b
  AE48  .byte 07 05 24 03 CF CE 4C 89 E7 F9 FE 47 00 01 83 E6   ; 22E48 data, read by 20068 2008b
  AE58  .byte F8 FC FF 67 39 58 CB CF DF E1 40 81 C0 80 24 04   ; 22E58 data, read by 20068 2008b
  AE68  .byte 80 E1 FF 3E D6 FC F8 F9 70 E0 03 07 0F 0F 1E 3C   ; 22E68 data, read by 20068
  AE78  .byte 78 F0 1F 3E 3C 79 E3 DF 38 00 E0 C0 80 24 05 80   ; 22E78 data, read by 20068 2008b
  AE88  .byte 00 60 E3 C7 C7 24 02 1E 1B 11 10 18 18 1C 18 4D   ; 22E88 data, read by 20068 2008b
  AE98  .byte 02 7F 1F 84 02 24 08 01 1F 4D 02 CF 87 07 01 00   ; 22E98 data, read by 2008b 20068
  AEA8  .byte 01 3F 1F 0F 07 03 1F FF EE 88 F0 FC 4D 02 EF DF   ; 22EA8 data, read by 20068 2008b
  AEB8  .byte 60 F7 4D 04 F1 E0 70 07 3F FF 7C 90 E1 B9 06 F8   ; 22EB8 data, read by 20068 2008b
  AEC8  .byte C0 00 80 E0 F8 3E 07 F0 C1 07 1F 7F FF FC 40 24   ; 22EC8 data, read by 20068
  AED8  .byte 07 80 0F 06 00 1F C5 F0 C8 E5 24 03 C0 F0 FE E3   ; 22ED8 data, read by 2008b 20068
  AEE8  .byte 70 80 24 02 E0 58 BE 7F FF 24 06 80 03 40 40 01   ; 22EE8 data, read by 20068 2008b
  AEF8  .byte 27 07 5E FC F9 61 60 20 31 37 3F 7E FC 07 1F F9   ; 22EF8 data, read by 20068
  AF08  .byte C1 01 29 5D BD FF 7F 7F FF C3 03 03 03 E0 C0 C0   ; 22F08 data, read by 20068
  AF18  .byte 87 85 80 00 01 F0 E0 E0 E0 D8 DF BF BC 24 02 7C   ; 22F18 data, read by 20068 2008b
  AF28  .byte AF 55 AA 15 E2 24 02 03 24 03 E0 FC 24 04 C3 A6   ; 22F28 data, read by 20068 2008b
  AF38  .byte 55 AA 03 1F F8 C0 24 07 78 D1 A1 50 4D 02 0F 07   ; 22F38 data, read by 20068 2008b
  AF48  .byte 06 06 0C 0D 00 10 20 60 C0 C1 95 A0 5F DC B8 70   ; 22F48 data, read by 20068
  AF58  .byte E0 E0 C0 C0 80 20 10 10 7C AD 46 07 0B 30 18 18   ; 22F58 data, read by 20068
  AF68  .byte 0C 0E 07 07 03 01 24 04 C0 21 57 01 24 05 80 80   ; 22F68 data, read by 20068 2008b
  AF78  .byte 80 60 1C 07 03 39 AE 55 E0 7C 1F 07 03 01 24 02   ; 22F78 data, read by 20068 2008b
  AF88  .byte 7B BF 5F 8F 3F 00 60 38 38 18 01 0F 1C C0 81 C2   ; 22F88 data, read by 20068
  AF98  .byte FC F0 C3 8F 3F C6 10 04 0F 7F F0 C1 83 07 E2 F8   ; 22F98 data, read by 20068
  AFA8  .byte F3 65 CA 95 28 40 24 02 F8 F0 E0 C0 80 07 07 38   ; 22FA8 data, read by 20068 2008b
  AFB8  .byte FF 7E BE 02 24 04 03 03 07 03 FC 4D 03 39 3C 7E   ; 22FB8 data, read by 20068 2008b
  AFC8  .byte 7F 7F 1F 07 03 8C 86 03 01 01 80 E0 F8 FC FF 7E   ; 22FC8 data, read by 20068
  AFD8  .byte 30 80 C0 E0 F0 1F 03 00 81 CF EF F7 7B 55 83 01   ; 22FD8 data, read by 20068
  AFE8  .byte 24 05 80 E0 00 FE 4D 05 F8 E7 1F 67 2B 55 2F 24   ; 22FE8 data, read by 20068 2008b
  AFF8  .byte 04 80 D0 A8 D0 DF 2F C7 FB FD FD 80 24 08 07 C7   ; 22FF8 data, read by 2008b 20068
  B008  .byte FB 4D 04 7F 0F 03 03 01 01 01 01 01 81 AA D5 EA   ; 23008 data, read by 20068 2008b
  B018  .byte F1 9C BF BE B8 C0 E0 F0 FC DF 87 80 81 AA 55 AA   ; 23018 data, read by 20068
  B028  .byte 55 A0 24 08 8F 7F 4D 02 FC FE FD FA FD FA 14 24   ; 23028 data, read by 20068 2008b
  B038  .byte 06 01 03 67 99 27 5E BC 78 F8 70 00 07 1F 3F 7F   ; 23038 data, read by 2008b 20068
  B048  .byte 4D 03 9F 8F 07 0B 05 02 01 02 60 F0 F8 F4 FA FD   ; 23048 data, read by 20068 2008b
  B058  .byte FE FD 3F 4F A3 D5 EA F5 78 A3 24 06 80 40 FD FE   ; 23058 data, read by 20068 2008b
  B068  .byte FC F0 C0 03 07 F0 24 03 03 0F 3F 0F 00 F0 02 3E   ; 23068 data, read by 20068 2008b
  B078  .byte 3D E2 81 24 05 FE FD FE 4D 03 7F 3F 8F D7 6B 94   ; 23078 data, read by 20068 2008b
  B088  .byte 4A 24 05 80 40 A0 E4 D3 AC D3 AE 5C B8 B4 24 02   ; 23088 data, read by 20068 2008b
  B098  .byte 03 0F 1F 3F 7F 7F 70 9A CD 86 02 01 0E 30 00 60   ; 23098 data, read by 20068
  B0A8  .byte F0 F8 FC F0 C1 0F F0 3C 5F AF 06 F9 02 08 24 06   ; 230A8 data, read by 20068 2008b
  B0B8  .byte F3 E7 A7 1F B8 47 37 DC 78 F0 24 04 0F 3F 4D 04   ; 230B8 data, read by 20068 2008b
  B0C8  .byte 1F A3 D5 AA 55 2A 24 05 40 A0 D0 E0 3C FF EF 17   ; 230C8 data, read by 20068 2008b
  B0D8  .byte 0F 17 0D 03 C0 E0 D0 E8 F0 E8 F4 30 24 02 40 A0   ; 230D8 data, read by 20068 2008b
  B0E8  .byte D0 A8 D4 4D 02 3F 1F 0F 07 03 01 01 00 01 02 05   ; 230E8 data, read by 20068 2008b
  B0F8  .byte 0B 17 2F FE FE FC F9 F3 E7 CF 9F 3C 63 9E 7C F8   ; 230F8 data, read by 20068
  B108  .byte F0 E0 E0 83 1F 7F 4D 05 7F BF 5F 2F 17 0B 05 0A   ; 23108 data, read by 20068 2008b
  B118  .byte 80 C0 A0 D0 E8 F4 FA F5 00 80 D0 E8 D4 EA F5 EA   ; 23118 data, read by 20068
  B128  .byte 3F 0F 07 03 01 24 03 3D 5D 2A 1A 05 05 0B 8B C0   ; 23128 data, read by 20068 2008b
  B138  .byte A0 D1 E1 F3 F3 67 27 78 71 E2 D2 E4 C4 A4 44 FE   ; 23138 data, read by 20068
  B148  .byte FC F9 F9 F3 F3 F2 F2 C0 00 07 19 27 4F 9E BC 3F   ; 23148 data, read by 20068
  B158  .byte F8 F0 C7 9F 3F 7F 7F 01 FC 7F E7 8A 05 02 01 03   ; 23158 data, read by 20068
  B168  .byte 00 F0 F8 F5 FA FD FE F0 60 80 40 A8 55 A9 72 FF   ; 23168 data, read by 20068
  B178  .byte 7F 1F 07 02 80 40 81 51 26 1B 6E 9C 18 30 70 A8   ; 23178 data, read by 20068
  B188  .byte C1 87 1F 7F 4D 03 D8 AE 97 48 44 65 45 8B 87 C1   ; 23188 data, read by 20068 2008b
  B198  .byte E0 F0 F8 F8 F8 F1 05 05 FD 03 FB F5 C4 89 F8 F8   ; 23198 data, read by 20068
  B1A8  .byte 00 01 01 F8 F8 F0 CF D5 C9 99 C9 F0 78 9C F0 EE   ; 231A8 data, read by 20068
  B1B8  .byte FE FE FE 7F 1F 0F 2F 58 50 51 D1 A9 EC 54 1F 3F   ; 231B8 data, read by 20068
  B1C8  .byte 3F 3E 3E 1E 1F 8F 50 AA D6 9B CA 4C 66 31 01 01   ; 231C8 data, read by 20068
  B1D8  .byte 01 20 10 20 18 0E 22 55 29 F7 7E 3F 6B 0F 80 00   ; 231D8 data, read by 20068
  B1E8  .byte 82 08 81 40 14 00 A9 56 AA EB E8 3B 6D BA 04 24   ; 231E8 data, read by 20068
  B1F8  .byte 04 40 82 05 AB 59 BA C9 7A 9E 34 DD 00 04 01 04   ; 231F8 data, read by 2008b 20068
  B208  .byte 00 40 80 00 98 5B B7 6B 97 7E 3D 79 02 84 48 94   ; 23208 data, read by 20068
  B218  .byte 68 24 03 0A 50 A3 5C 75 AB D6 AE 81 0A 14 23 1A   ; 23218 data, read by 20068 2008b
  B228  .byte 74 E8 D0 2F 9A 6D CF B0 5F D1 AA 80 45 82 24 02   ; 23228 data, read by 20068 2008b
  B238  .byte 20 2E 55 FB 15 AF 27 CD 94 2F 5C 00 CA 10 18 30   ; 23238 data, read by 20068
  B248  .byte E8 D0 A3 FD DD 06 07 C3 61 B0 58 78 F8 FC FE 3F   ; 23248 data, read by 20068
  B258  .byte 1F 0F 87 C3 E0 F0 F3 F7 E6 C3 01 FC FF 7F 3C 78   ; 23258 data, read by 20068
  B268  .byte F8 FC FE 40 FF C0 BF 4F 70 70 41 3F 24 03 3F 3F   ; 23268 data, read by 20068 2008b
  B278  .byte 3F 3E FC F8 F0 E3 84 0B F7 0E 07 0F 1F FC F8 F0   ; 23278 data, read by 20068
  B288  .byte 03 07 04 80 4A A0 54 A9 D5 DA 24 07 01 80 04 89   ; 23288 data, read by 20068 2008b
  B298  .byte 53 AB 95 2C 59 24 02 20 24 02 48 80 00 02 01 A2   ; 23298 data, read by 20068 2008b
  B2A8  .byte 55 A9 53 35 9B 24 08 22 43 01 44 AB 95 AA D5 24   ; 232A8 data, read by 20068 2008b
  B2B8  .byte 08 1A 0C D4 2A 91 52 49 28 E1 F3 EB F5 7E 3C 3E   ; 232B8 data, read by 2008b 20068
  B2C8  .byte 1F 00 70 81 4A 04 E3 1C 03 24 03 20 24 02 E0 FC   ; 232C8 data, read by 20068 2008b
  B2D8  .byte 06 0B 0E 14 2C 50 80 00 01 07 07 0F 1F 3F 70 40   ; 232D8 data, read by 20068
  B2E8  .byte 1E 70 D4 A0 24 04 01 0F 2B 5F 4D 04 94 54 28 0A   ; 232E8 data, read by 20068 2008b
  B2F8  .byte D5 6A 15 05 0F 8F DF F5 2A 14 28 D8 4B 56 A8 68   ; 232F8 data, read by 20068
  B308  .byte 41 43 16 8E 87 8F 1F 17 3E 3C 68 70 00 10 A8 4F   ; 23308 data, read by 20068
  B318  .byte B0 4F D0 AA FF EF 47 80 00 30 2F 55 F9 E0 F3 67   ; 23318 data, read by 20068
  B328  .byte 04 38 F1 02 06 0F 1C F8 F8 C3 07 0F 07 41 20 10   ; 23328 data, read by 20068
  B338  .byte 28 90 B8 70 24 02 80 40 00 40 00 81 00 80 24 03   ; 23338 data, read by 20068 2008b
  B348  .byte 08 10 30 24 03 01 01 20 C0 80 00 08 16 22 34 0B   ; 23348 data, read by 20068 2008b
  B358  .byte 07 01 00 80 40 88 40 60 18 0C 00 04 3A 04 2A 14   ; 23358 data, read by 20068
  B368  .byte 1B 89 24 03 10 00 08 04 06 90 88 3A 95 4A 0C 46   ; 23368 data, read by 20068 2008b
  B378  .byte 13 69 73 C1 68 30 30 18 0C 6D 77 3D 83 56 28 06   ; 23378 data, read by 20068
  B388  .byte 18 80 80 C2 7C 29 03 90 21 B9 AC D7 E3 70 20 38   ; 23388 data, read by 20068
  B398  .byte 78 06 03 24 02 80 C0 C3 87 8B 89 88 02 0C 04 38   ; 23398 data, read by 20068 2008b
  B3A8  .byte F0 04 06 07 04 00 78 C0 00 03 00 09 94 3A 74 60   ; 233A8 data, read by 20068
  B3B8  .byte 40 08 84 40 24 06 01 02 25 1A 16 A3 11 03 0E 14   ; 233B8 data, read by 20068 2008b
  B3C8  .byte 08 24 04 ED 47 97 41 80 10 0A 55 02 24 05 20 00   ; 233C8 data, read by 20068 2008b
  B3D8  .byte E8 F8 18 09 3C 58 50 A3 24 02 20 10 24 04 A8 D8   ; 233D8 data, read by 20068 2008b
  B3E8  .byte A4 52 45 AA 30 24 09 28 52 29 14 50 82 0C 00 80   ; 233E8 data, read by 20068 2008b
  B3F8  .byte 24 07 1A 10 0A 45 05 82 24 0A 0B 05 0A 8A 10 A0   ; 233F8 data, read by 20068 2008b
  B408  .byte 24 12 4D 08 1C DC DC CE C6 E7 61 30 E0 E0 E0 F0   ; 23408 data, read by 20068 2008b
  B418  .byte F0 F8 FF 7F 3A 39 3A 71 72 E9 D3 85 7D 7E FD FE   ; 23418 data, read by 20068
  B428  .byte FD FE FC FA E1 E3 EB E9 E9 D3 D3 D6 07 07 07 07   ; 23428 data, read by 20068
  B438  .byte 07 0F 0F 0F 9D CD CD CD 9C 9C 1A 3B E1 F1 F1 F1   ; 23438 data, read by 20068
  B448  .byte E1 E1 E0 C0 80 C0 E0 70 34 27 0B 1B 3F 1F 0F 83   ; 23448 data, read by 20068
  B458  .byte C0 C8 DC BC 0B 17 2E F8 06 23 37 31 F4 E8 D0 01   ; 23458 data, read by 20068
  B468  .byte 00 7C 78 7E 8C 18 00 01 03 1E 01 9C 3F 7F FF FE   ; 23468 data, read by 20068
  B478  .byte FC 20 00 0F 71 70 E2 C6 86 66 62 E0 86 87 0F 1F   ; 23478 data, read by 20068
  B488  .byte 1F 0F 8F 07 1B 1B 19 1D 08 05 E2 41 3C 3C 36 B2   ; 23488 data, read by 20068
  B498  .byte DB D8 0C 16 1D 1A CD 64 B4 52 A5 0A 3A 3D 1E 0F   ; 23498 data, read by 20068
  B4A8  .byte 03 81 40 20 ED DA 35 1B E5 48 09 02 1E 3D F8 E0   ; 234A8 data, read by 20068
  B4B8  .byte 24 02 04 A8 E0 E6 C7 94 12 9C 92 BC 09 08 18 38   ; 234B8 data, read by 20068 2008b
  B4C8  .byte 38 30 28 50 84 4C 80 0C 51 90 40 00 21 20 45 81   ; 234C8 data, read by 20068
  B4D8  .byte 0A 20 80 00 54 28 35 92 0D 07 24 02 01 42 40 20   ; 234D8 data, read by 20068 2008b
  B4E8  .byte 10 24 03 16 A9 43 06 AC 70 24 02 C0 80 24 06 E6   ; 234E8 data, read by 20068 2008b
  B4F8  .byte CC 53 A9 03 86 38 00 50 A1 24 08 08 22 55 BA 7F   ; 234F8 data, read by 20068 2008b
  B508  .byte 0F 4D 08 24 02 08 A0 41 8E 3F 4D 09 24 03 57 BF   ; 23508 data, read by 20068 2008b
  B518  .byte FE F9 FC 4D 08 24 03 A0 D4 A0 24 02 4D 10 24 0C   ; 23518 data, read by 20068 2008b
  B528  .byte 10 A5 73 4D 09 24 04 48 B5 EA DF 4D 08 C2 E8 D4   ; 23528 data, read by 20068 2008b
  B538  .byte 80 24 02 15 AA 4D 08 00 40 24 03 51 E8 40 4D 08   ; 23538 data, read by 20068 2008b
  B548  .byte 24 02 E0 3C 07 24 03 4D 02 1F C3 F8 4D 03 24 03   ; 23548 data, read by 20068 2008b
  B558  .byte 40 CA 75 0A 00 4D 03 BF 35 8A F5 FF 24 03 54 AA   ; 23558 data, read by 20068 2008b
  B568  .byte 40 24 02 4D 03 AB 55 BF 4D 02 80 40 A0 C2 F5 DF   ; 23568 data, read by 20068 2008b
  B578  .byte 4D 0A 03 05 24 06 C0 E0 F8 FE 4D 04 24 03 07 1C   ; 23578 data, read by 20068 2008b
  B588  .byte 40 24 02 4D 03 F8 E3 BF 4D 02 24 03 01 0F 7F 4D   ; 23588 data, read by 20068 2008b
  B598  .byte 02 24 11 07 3F 4D 05 00 02 08 14 83 0E B5 EA 24   ; 23598 data, read by 2008b 20068
  B5A8  .byte 05 01 0A 15 3C 42 07 7A A0 24 06 05 5F 4D 03 24   ; 235A8 data, read by 2008b 20068
  B5B8  .byte 08 4D 08 24 02 02 0F 3F 75 A8 00 4D 08 05 3F FD   ; 235B8 data, read by 2008b 20068
  B5C8  .byte E8 54 24 03 4D 08 24 03 52 B5 48 24 02 4D 08 00   ; 235C8 data, read by 20068 2008b
  B5D8  .byte 80 34 0B 01 00 80 40 4D 08 24 03 05 3A 54 A9 16   ; 235D8 data, read by 20068 2008b
  B5E8  .byte 24 0B 0F BA 0A F0 AC 24 08 2C 03 14 2A 5F 3F 5F   ; 235E8 data, read by 20068 2008b
  B5F8  .byte 0C 4D 08 24 02 19 63 82 20 08 02 24 05 C0 F0 FC   ; 235F8 data, read by 20068 2008b
  B608  .byte 24 03 33 48 82 05 80 24 08 E5 F8 A6 40 87 1E 7F   ; 23608 data, read by 20068 2008b
  B618  .byte FE 24 08 43 80 01 0F 9F AE 57 2A 24 08 A1 78 CE   ; 23618 data, read by 20068 2008b
  B628  .byte E7 51 3C 1F 06 FE DF 87 81 E0 F0 FC FF 80 60 18   ; 23628 data, read by 20068
  B638  .byte 84 63 98 E4 B0 00 80 E0 F8 FC 7F 1F CF 01 02 E0   ; 23638 data, read by 20068
  B648  .byte BC CF 5F 2F 17 00 E1 FC FF F1 E0 70 38 1E 3C 32   ; 23648 data, read by 20068
  B658  .byte 04 00 F0 FF F9 E0 C0 01 C3 F8 1F 07 00 7C 33 4E   ; 23658 data, read by 20068
  B668  .byte F0 FD 7E 07 F8 24 02 81 03 24 04 3F CC 33 7D FE   ; 23668 data, read by 20068 2008b
  B678  .byte FF 7F 78 24 02 C0 80 24 05 FC 8F 1F BF 7F BE 1D   ; 23678 data, read by 20068 2008b
  B688  .byte 24 02 70 E0 40 24 03 70 38 1C 08 14 0A 05 02 F3   ; 23688 data, read by 20068 2008b
  B698  .byte F9 FC FE 4D 04 EE 3A 06 E1 FE 3F DF E4 F0 FD FF   ; 23698 data, read by 20068 2008b
  B6A8  .byte 1F 01 C0 E0 F8 1F 04 32 9C C0 9C 80 7E 1C 07 02   ; 236A8 data, read by 20068
  B6B8  .byte C1 7B 1F 01 00 C0 06 1C 3A 74 60 2A 00 0F 3F 4D   ; 236B8 data, read by 20068
  B6C8  .byte 05 7F 7D 2E 17 0B 15 0A 05 0A 80 D0 E8 F4 EA F5   ; 236C8 data, read by 2008b 20068
  B6D8  .byte FA F5 01 A6 50 AA D4 A9 C0 43 07 07 01 24 03 07   ; 236D8 data, read by 20068 2008b
  B6E8  .byte 9F E1 6B B4 58 18 E0 78 1E 00 80 40 A1 03 06 81   ; 236E8 data, read by 20068
  B6F8  .byte E0 8D 3A 71 00 0F 05 1A 71 3D 7D FE F0 80 7A FD   ; 236F8 data, read by 20068
  B708  .byte FE 46 8C 18 00 80 E0 E8 74 9F 3F 7F 7F 1F 07 03   ; 23708 data, read by 20068
  B718  .byte 81 F8 C0 24 03 01 07 1C 4D 03 FC E0 24 04 01 07   ; 23718 data, read by 20068 2008b
  B728  .byte 1C 74 CE 3C FC FF FE 80 24 06 8F 18 3C 78 78 F8   ; 23728 data, read by 20068 2008b
  B738  .byte F0 FF 00 07 03 03 03 03 03 0F 00 0F 0F 07 47 C3   ; 23738 data, read by 20068
  B748  .byte C0 FF 0F 80 C0 E0 B8 1C 0F F9 FE 39 C9 F5 7A 9D   ; 23748 data, read by 20068
  B758  .byte E0 FE 4D 02 3E 0E 87 E3 F9 FF 7F 98 E0 18 06 01   ; 23758 data, read by 20068 2008b
  B768  .byte 80 00 80 E0 78 1F 07 81 C0 80 E0 38 0C 02 01 C0   ; 23768 data, read by 20068
  B778  .byte 78 1F 07 03 01 01 C0 F0 7F 05 08 00 03 0E 0E 80   ; 23778 data, read by 20068
  B788  .byte 00 FA F0 E7 DF BF 7F 7F C0 00 38 CF 85 02 05 02   ; 23788 data, read by 20068
  B798  .byte 05 03 E0 F0 FA FD FA FD FA 0F 00 80 C6 E8 54 EA   ; 23798 data, read by 20068
  B7A8  .byte 00 F0 70 0F 07 03 81 24 03 01 80 E0 68 34 1A 2D   ; 237A8 data, read by 20068 2008b
  B7B8  .byte 7F 3E 07 83 C0 E0 D0 68 BA 58 81 04 18 30 00 80   ; 237B8 data, read by 20068
  B7C8  .byte 40 A0 46 3F 4D 02 7F 21 61 03 E7 CF CF 9F 03 24   ; 237C8 data, read by 20068 2008b
  B7D8  .byte 09 F9 F9 F3 F3 E7 C7 CF 8E 24 08 F4 E4 EC CC D8   ; 237D8 data, read by 2008b 20068
  B7E8  .byte 90 80 00 06 06 06 06 0E 24 03 E0 E0 E0 F0 F0 E0   ; 237E8 data, read by 20068 2008b
  B7F8  .byte 20 00 07 03 24 06 18 07 24 04 03 0F E0 24 07 C0   ; 237F8 data, read by 20068 2008b
  B808  .byte 60 F3 3C 1C 18 E0 F8 E0 70 3C 3E 1D 1B 07 01 30   ; 23808 data, read by 20068
  B818  .byte C2 01 24 05 38 0A 3E 4D 05 3F BF 5F AB 54 28 50   ; 23818 data, read by 20068 2008b
  B828  .byte 28 00 40 A0 54 AA D5 AB D0 00 C0 83 0F 1E 3D 1A   ; 23828 data, read by 20068
  B838  .byte 05 38 07 1F 7F 4D 03 3F F8 FD DE 4B 85 0A 02 24   ; 23838 data, read by 20068 2008b
  B848  .byte 02 80 E0 F4 FA F5 FA FD 0B 10 A1 47 9F 1E 7C FC   ; 23848 data, read by 2008b 20068
  B858  .byte 74 08 07 1F 3F 7F 4D 02 1E FD BE AF 16 28 10 24   ; 23858 data, read by 20068 2008b
  B868  .byte 03 80 D0 E8 D5 EB F0 24 04 FF 9E E9 32 24 02 80   ; 23868 data, read by 2008b 20068
  B878  .byte 4D 02 E0 F0 38 18 10 24 02 9F 6A 55 AA 24 03 F0   ; 23878 data, read by 20068 2008b
  B888  .byte 80 24 04 80 C0 60 81 E0 F8 FC 7F 3F 1C 1B 17 07   ; 23888 data, read by 20068 2008b
  B898  .byte 03 00 07 0F 3C F8 E0 D0 24 02 C0 3E 4D 05 03 C0   ; 23898 data, read by 20068 2008b
  B8A8  .byte F8 3E 1E 1F 0E 17 0B 06 01 C0 E0 E0 F0 E8 F4 24   ; 238A8 data, read by 20068
  B8B8  .byte 02 05 82 41 A0 47 06 03 FC 7A 3D 1E 08 00 3F 78   ; 238B8 data, read by 2008b 20068
  B8C8  .byte 08 00 80 41 03 C0 F8 FF FE 39 47 AF 1F 07 01 0F   ; 238C8 data, read by 20068
  B8D8  .byte 0D 3E F8 F0 E0 C0 00 80 7F 4D 06 54 08 24 06 AA   ; 238D8 data, read by 20068 2008b
  B8E8  .byte F5 FB F7 07 F8 4D 02 1C 78 F8 F0 F0 20 00 C0 4D   ; 238E8 data, read by 20068 2008b
  B8F8  .byte 06 3F 0F 3E 1D 2E 17 0A 15 05 00 C0 E0 D0 E8 F4   ; 238F8 data, read by 2008b 20068
  B908  .byte EA F4 F9 24 02 80 40 A0 80 24 02 FF 7F 3F 1F 00   ; 23908 data, read by 20068 2008b
  B918  .byte 0F 7F FF EA D0 A0 24 05 15 2F 5F 4D 05 00 38 55   ; 23918 data, read by 20068 2008b
  B928  .byte A3 4E 8D 1A B0 24 04 01 02 05 0F 95 89 C1 60 B0   ; 23928 data, read by 20068 2008b
  B938  .byte 58 19 29 63 F7 4D 02 7F 3E 3E 1E 94 88 C2 7C 81   ; 23938 data, read by 20068 2008b
  B948  .byte 43 7F FE E3 F7 4D 02 7F 3D 00 01 2E 17 0A 0B 88   ; 23948 data, read by 20068 2008b
  B958  .byte CB C7 84 C7 E3 F1 F0 F0 F0 FB FF 74 76 77 CD 72   ; 23958 data, read by 20068
  B968  .byte F2 C4 04 8F 8F 8F 06 0C 7C F8 F8 67 67 17 C7 A4   ; 23968 data, read by 20068
  B978  .byte C4 AB 55 F8 F8 F8 38 19 38 50 A2 17 28 17 15 03   ; 23978 data, read by 20068 2003d 20042 2008b
  B988  .byte 1F 7F 0F 3F 5F 3F 7C 60 00 70 17 02 07 1F 28 04   ; 23988 data, read by 20068 2008b
  B998  .byte EA C0 A0 17 05 07 F3 F9 FC FE 28 03 17 08 80 E0   ; 23998 data, read by 20068 2008b
  B9A8  .byte F4 FA 7C 3E 9C CE 17 08 0F 01 17 06 7E 7F 7F BF   ; 239A8 data, read by 20068 2008b
  B9B8  .byte BF BF BF BF 28 02 7F 0F 03 01 03 03 00 80 F0 FC   ; 239B8 data, read by 20068 2008b
  B9C8  .byte FF FE FC FC 17 08 7F 7F 7F 7F 7F BF BF BF 17 08   ; 239C8 data, read by 20068 2008b
  B9D8  .byte D4 E8 F4 F9 F1 E9 F1 E9 28 08 17 08 F0 F0 F0 F0   ; 239D8 data, read by 20068 2008b
  B9E8  .byte F0 F2 F2 F3 03 01 01 01 00 04 04 04 AA 55 AA 55   ; 239E8 data, read by 20068
  B9F8  .byte 2A 15 2A 15 55 AA 55 AA D5 EA 55 6A AA 55 AA 55   ; 239F8 data, read by 20068
  BA08  .byte AA 55 AA 55 55 AA 55 AA 55 AA 55 AA EA D5 AB 57   ; 23A08 data, read by 20068
  BA18  .byte 2F 5F BF 7F 17 10 28 08 80 80 C0 40 A0 60 B0 50   ; 23A18 data, read by 20068 2008b
  BA28  .byte 3F 1F 1F 8F 4F 87 47 A3 17 08 28 08 01 02 02 02   ; 23A28 data, read by 20068 2008b
  BA38  .byte 06 04 0C 18 FE FC FC FC F8 F8 F0 E0 17 08 BF BF   ; 23A38 data, read by 20068 2008b
  BA48  .byte BF BF BF DF DF DF 17 02 01 00 01 03 17 02 F1 EB   ; 23A48 data, read by 20068 2008b
  BA58  .byte F2 F3 D2 E0 D0 E0 28 03 FC E0 01 07 3E 17 05 06   ; 23A58 data, read by 20068 2008b
  BA68  .byte 38 C0 E7 E3 85 0B 05 0A 15 0A 08 0C 0A 14 1A 35   ; 23A68 data, read by 20068
  BA78  .byte 2A 35 0A 15 8A 85 82 C5 42 E1 35 2A 35 1A 1D 0A   ; 23A78 data, read by 20068
  BA88  .byte 8D 06 B0 58 A8 54 AC 56 AB 55 43 A1 51 A8 50 A8   ; 23A88 data, read by 20068
  BA98  .byte 54 AA 80 17 07 7F 28 07 A8 58 AC 54 B8 60 80 18   ; 23A98 data, read by 20068 2008b
  BAA8  .byte 53 A1 51 A8 40 80 00 10 17 05 01 0F 30 28 05 7E   ; 23AA8 data, read by 20068 2008b
  BAB8  .byte 70 17 04 03 3E E1 0F 70 28 03 FC C0 01 0F 7F 00   ; 23AB8 data, read by 20068 2008b
  BAC8  .byte 0F 78 C0 33 F3 22 25 FF F0 80 00 23 C2 C3 C7 F0   ; 23AC8 data, read by 20068
  BAD8  .byte 80 00 3F EA 55 AA 55 17 03 3F 28 04 17 08 DF DF   ; 23AD8 data, read by 20068 2008b
  BAE8  .byte DF E0 F7 EF EF EF 00 01 00 01 00 01 00 01 F3 E2   ; 23AE8 data, read by 20068
  BAF8  .byte 03 32 D3 E2 D3 E2 FE FE FC FC FC FC F8 F9 17 08   ; 23AF8 data, read by 20068 2008b
  BB08  .byte 15 2A 15 2A 55 AA 55 AA 6A 55 6A 55 AA D5 AA 55   ; 23B08 data, read by 20068
  BB18  .byte 62 A1 70 B1 58 B8 58 AC 85 46 83 42 A1 41 A0 50   ; 23B18 data, read by 20068
  BB28  .byte AA 55 AA 55 AE 58 E3 8C 55 AA 55 AA 50 A0 03 0F   ; 23B28 data, read by 20068
  BB38  .byte AC 51 86 0D 3A D5 AA 55 50 A1 47 0A 35 EA 55 AA   ; 23B38 data, read by 20068
  BB48  .byte 68 D4 AC 56 AA 55 AB 55 70 A8 50 A8 54 AA 54 AA   ; 23B48 data, read by 20068
  BB58  .byte 07 38 C0 17 04 80 07 3F 28 02 7F 7F 3F 3F 80 17   ; 23B58 data, read by 20068 2008b
  BB68  .byte 07 28 08 26 65 46 45 4A 4D CA 8D C7 87 87 87 8F   ; 23B68 data, read by 2008b 20068
  BB78  .byte 8F 0F 0F AA 55 AA 55 AA 55 AA 55 28 08 17 08 EF   ; 23B78 data, read by 20068 2008b
  BB88  .byte EF DF DF DF DF DF DF 00 01 17 06 D3 FA E9 F1 E9   ; 23B88 data, read by 20068 2008b
  BB98  .byte F1 E9 F9 F8 F8 F2 F2 F1 F0 E0 E0 01 01 01 01 17   ; 23B98 data, read by 20068
  BBA8  .byte 02 08 0E 55 AA 55 AA D5 6A 1D 06 AA 55 AA 55 2A   ; 23BA8 data, read by 2008b 20068
  BBB8  .byte 15 02 01 5C AE 56 AB 57 AE 78 E0 A0 50 A8 54 A8   ; 23BB8 data, read by 20068
  BBC8  .byte 50 80 00 26 18 60 01 02 05 2A 55 D8 60 01 06 1D   ; 23BC8 data, read by 20068
  BBD8  .byte 7A D5 AA 3A 55 AA 55 AA 55 AA 55 35 6A 55 AA 55   ; 23BD8 data, read by 20068
  BBE8  .byte AA 55 AA 80 80 C0 40 A0 60 B0 50 1F 1F 0F 8F 4F   ; 23BE8 data, read by 20068
  BBF8  .byte 87 47 A3 17 02 01 01 01 01 17 02 28 02 FE FE FE   ; 23BF8 data, read by 20068 2008b
  BC08  .byte FE FE F8 9A 95 9A 15 2A 35 2A 35 1F 1F 1F 1F 3F   ; 23C08 data, read by 20068
  BC18  .byte 3F 3F 3F 17 04 01 01 02 00 4F CF 67 67 26 66 64   ; 23C18 data, read by 20068 2008b
  BC28  .byte 71 17 08 E9 F1 E9 F5 F9 F5 F9 F5 EF 6F CF 5F DF   ; 23C28 data, read by 20068 2008b
  BC38  .byte 5F 9F 9F 00 80 00 80 00 80 17 02 01 80 E0 FC FC   ; 23C38 data, read by 20068 2008b
  BC48  .byte FC FC FC 80 60 18 17 05 86 07 0B 55 2A 55 2A 55   ; 23C48 data, read by 20068 2008b
  BC58  .byte 00 18 74 AA D5 AA D5 AA 2A 15 8A C5 E2 71 B8 5C   ; 23C58 data, read by 20068
  BC68  .byte 55 2A 15 0A 05 82 41 A0 17 08 28 05 7F 7F 3F 72   ; 23C68 data, read by 20068 2008b
  BC78  .byte 64 E8 D0 A0 40 80 00 80 80 02 04 0A 3C 6A FC A8   ; 23C78 data, read by 20068
  BC88  .byte 51 AC 54 B8 61 87 1C 53 A0 50 A8 40 81 07 1F 60   ; 23C88 data, read by 20068
  BC98  .byte 81 07 1C 70 C0 17 02 80 01 07 1F 7F 28 03 00 C0   ; 23C98 data, read by 20068 2008b
  BCA8  .byte 30 18 04 02 01 00 1F CF C3 E1 F8 FC FE FF AA 55   ; 23CA8 data, read by 20068
  BCB8  .byte AA 55 2A 15 8A C1 28 05 3F 1F 0F 17 08 BF BF BF   ; 23CB8 data, read by 20068 2008b
  BCC8  .byte BF BF BF BF BF 17 08 F9 F5 F9 F4 F8 FE FA FC 1F   ; 23CC8 data, read by 20068 2008b
  BCD8  .byte 1F 3F 3F 3F 3F 3F 3F 80 80 17 06 FC FC F8 F8 F8   ; 23CD8 data, read by 20068 2008b
  BCE8  .byte F8 F8 F8 00 01 01 01 01 01 01 01 AE 57 AB 55 AA   ; 23CE8 data, read by 20068
  BCF8  .byte 55 AA 55 50 A8 54 AA 55 AA 55 AA 2A 15 8A C5 E2   ; 23CF8 data, read by 20068
  BD08  .byte 71 B9 5C 55 2A 15 0A 05 82 40 A0 AA 55 AB 56 B8   ; 23D08 data, read by 20068
  BD18  .byte 61 87 1C 55 AA 54 A8 40 81 07 1F 18 61 87 1C 70   ; 23D18 data, read by 20068
  BD28  .byte C0 17 02 E0 81 07 1F 7F 28 03 70 C0 17 06 7F 28   ; 23D28 data, read by 20068 2008b
  BD38  .byte 07 31 08 06 01 17 04 C3 F1 F8 FE 28 04 17 08 7F   ; 23D38 data, read by 2008b 20068
  BD48  .byte 7F 7F 7F 7E 80 DF DF 17 08 FA FC FE F0 00 7E F4   ; 23D48 data, read by 20068 2008b
  BD58  .byte FE 3F 3F 3F 7F 7F 7F 7F 7F 17 08 F8 F8 F8 F8 F8   ; 23D58 data, read by 20068 2008b
  BD68  .byte F8 F8 F9 01 01 01 01 01 01 03 02 AA 55 AB 56 AC   ; 23D68 data, read by 20068
  BD78  .byte 50 E0 81 55 AA 54 A8 50 A1 07 0E B1 65 8A 15 AA   ; 23D78 data, read by 20068
  BD88  .byte 55 AA 55 40 82 05 2A 55 AA 55 AA 20 80 80 40 C0   ; 23D88 data, read by 20068
  BD98  .byte 60 A0 50 3F 3F 1F 8F 0F 87 47 A3 17 08 DF BF BF   ; 23D98 data, read by 20068 2008b
  BDA8  .byte BF BF BF 7F FF 17 08 FA FC FA FE F4 F8 FC F4 7F   ; 23DA8 data, read by 20068 2008b
  BDB8  .byte 7F 7F 28 05 17 08 F0 F1 F0 F1 F1 F2 F0 F0 03 02   ; 23DB8 data, read by 20068 2008b
  BDC8  .byte 03 02 02 17 02 03 AA 4C B0 41 82 05 2A 55 54 B0   ; 23DC8 data, read by 20068 2008b
  BDD8  .byte 41 86 0D 3A D5 AA 6A D5 AA 55 AA 55 AA 55 55 AA   ; 23DD8 data, read by 20068
  BDE8  .byte 55 AA 55 AA 55 AA 0A 15 2A 15 2A 50 07 F8 3F 7F   ; 23DE8 data, read by 20068
  BDF8  .byte 7F 7F 7F FF F8 00 AA 55 AA 55 A8 03 FC 00 28 05   ; 23DF8 data, read by 20068 2008b
  BE08  .byte FC 17 02 AA 55 AA 54 01 FE 17 02 28 04 FE 17 03   ; 23E08 data, read by 20068 2008b
  BE18  .byte AA 55 AA 00 FF 17 03 28 04 17 04 AA 55 00 7F 80   ; 23E18 data, read by 20068 2008b
  BE28  .byte 17 02 1F 28 03 80 17 02 3F FF 54 AC 78 C0 17 02   ; 23E28 data, read by 20068 2008b
  BE38  .byte 08 08 A8 50 80 00 01 71 F1 F1 15 2A 55 2A 55 AA   ; 23E38 data, read by 20068
  BE48  .byte 55 AA 7F 28 07 55 AA 55 AA 55 AA 55 AA 28 08 53   ; 23E48 data, read by 20068 2008b
  BE58  .byte A9 59 A9 50 B6 62 A5 E3 F1 F1 F1 E0 E0 C4 C6 FD   ; 23E58 data, read by 20068
  BE68  .byte FD FD FA FA FA 74 68 FE FE FE FC FC FC 78 70 39   ; 23E68 data, read by 20068
  BE78  .byte 73 47 0F 1F 3F 7F FF 3F 4F 0F 1F 3F 7F 28 02 17   ; 23E78 data, read by 20068 2008b
  BE88  .byte 02 7F D5 AA 55 AA 55 17 02 7F 28 05 01 7F AA 55   ; 23E88 data, read by 2008b 20068
  BE98  .byte AA 55 AA 55 01 7F 28 06 F0 E8 A8 54 A4 54 AA 52   ; 23E98 data, read by 20068 2008b
  BEA8  .byte F1 F1 F0 F8 F8 F8 FC FC 7F FF 7F 7F 3F 3F 1F 1F   ; 23EA8 data, read by 20068
  BEB8  .byte 28 04 7F 7F 3F 3F 08 08 04 04 04 02 02 02 F0 F0   ; 23EB8 data, read by 20068 2008b
  BEC8  .byte F8 F8 F8 FC FC FC 55 2A 55 2A 15 2A 15 0A 28 03   ; 23EC8 data, read by 20068 2008b
  BED8  .byte 7F 7F 7F 7F 3F 17 08 28 08 65 CD 4C CE 9E 9F 9F   ; 23ED8 data, read by 20068 2008b
  BEE8  .byte BF C6 8E 8F 8F 1F 1F 1F 3F 29 11 B3 87 47 4F 4F   ; 23EE8 data, read by 20068
  BEF8  .byte 2F 31 21 03 07 87 8F 8F CF 28 10 A9 55 AA 54 AA   ; 23EF8 data, read by 20068 2008b
  BF08  .byte 55 AA 55 FE FE 28 06 1F 0F 8F 87 47 43 43 A3 3F   ; 23F08 data, read by 20068 2008b
  BF18  .byte 1F 1F 0F 8F 87 87 C7 01 01 01 01 17 04 FE FE FE   ; 23F18 data, read by 20068 2008b
  BF28  .byte FE 28 04 15 0A 05 0A 85 82 80 4F 3F 3F 1F 1F 1F   ; 23F28 data, read by 20068 2008b
  BF38  .byte 0F 0F 80 55 AB 55 AA 56 AE 78 80 FE FE FE FC FC   ; 23F38 data, read by 20068
  BF48  .byte F8 80 00 3F 3F 7F 7F 7F 28 03 3F 3F 7F 7F 7F 28   ; 23F48 data, read by 20068 2008b
  BF58  .byte 03 A7 97 D3 CB E9 E9 E5 F4 C7 E7 E3 F3 F1 F1 F9   ; 23F58 data, read by 2008b 20068
  BF68  .byte F8 A1 51 B0 48 A8 58 A4 54 C3 E3 E1 F1 F0 F0 F8   ; 23F68 data, read by 20068
  BF78  .byte F8 28 04 7F 7F 7F 3E 28 06 FE 78 17 02 01 06 18   ; 23F78 data, read by 20068 2008b
  BF88  .byte 61 81 02 28 02 FE F8 E0 82 0E 3C 40 40 80 17 05   ; 23F88 data, read by 20068 2008b
  BF98  .byte 80 80 0F 3F 3F 7F 7F FF 69 09 11 11 23 23 23 43   ; 23F98 data, read by 20068
  BFA8  .byte 11 F1 E1 E1 C1 C1 C1 81 F2 FA FA F2 F4 F4 E5 E8   ; 23FA8 data, read by 20068
  BFB8  .byte FC FC FC FC F8 F8 F8 F1 7F 3F 1F 1F 0F 0F 87 47   ; 23FB8 data, read by 20068
  BFC8  .byte FF 7F 3F 3F 1F 1F 0F 8F AA 56 AB 55 AA 5C B0 C1   ; 23FC8 data, read by 20068
  BFD8  .byte FC FC FE FE FC F0 C1 07 18 20 07 1F 3F 7F 28 02   ; 23FD8 data, read by 20068 2008b
  BFE8  .byte 60 07 1F 3F 7F 28 03 02 04 04 08 08 10 10 10 FC   ; 23FE8 data, read by 20068 2008b
  BFF8  .byte F8 F9 F1 F3 E3 E7 E7 17 05 01 01 01 28 05 FE FE   ; 23FF8 data, read by 20068 2008b
  C008  .byte FE 53 4B 99 A9 99 2D 54 2C 83 93 11 31 31 31 78   ; 24008 data, read by 20068
  C018  .byte 78 C9 D3 D3 93 A7 A7 2F 4F F1 E3 E3 E3 C7 C7 CF   ; 24018 data, read by 20068
  C028  .byte 8F B3 DF EF 28 02 EF EF EF C7 E3 F3 F3 F3 F3 F3   ; 24028 data, read by 20068 2008b
  C038  .byte F3 AA 55 2A 15 82 61 10 09 28 02 7F 3F 1F 87 E3   ; 24038 data, read by 20068 2008b
  C048  .byte F0 AA 55 AA 54 A3 0C 70 80 28 04 FC F0 80 01 A3   ; 24048 data, read by 20068 2008b
  C058  .byte 5C B0 C1 00 01 0A 15 FC F0 C0 00 07 1F 7F FF 0F   ; 24058 data, read by 20068
  C068  .byte 0F 33 8C 63 90 AC 52 1F 3F 0F 03 80 E0 F0 FC 28   ; 24068 data, read by 20068
  C078  .byte 04 3E 9E 66 19 28 05 7F 1F 06 20 20 40 40 80 80   ; 24078 data, read by 2008b 20068
  C088  .byte 80 00 C7 CF 8F 9F 1F 3F 3F 3F 02 02 02 04 04 04   ; 24088 data, read by 20068
  C098  .byte 08 08 FC FC FC F8 F9 F9 F1 F3 54 AC 56 AA 56 AA   ; 24098 data, read by 20068
  C0A8  .byte 55 AB 78 F8 FC FC FC FC FE FE FE FE 7E 7C 7D 7D   ; 240A8 data, read by 20068
  C0B8  .byte 39 3A 28 02 7F 7F 7E 7E 3E 3C 4F 9F 9F BF 3F 3F   ; 240B8 data, read by 20068 2008b
  C0C8  .byte 7F 7F 8F 1F 1F 3F 3F 3F 7F 7F 02 0C 70 8F 3F 1F   ; 240C8 data, read by 20068
  C0D8  .byte 0F 07 FC F0 80 0F 7F 7F BF BF 04 04 08 08 10 11   ; 240D8 data, read by 20068
  C0E8  .byte 12 21 F8 F8 F0 F0 E3 E3 E7 C7 00 01 0A 15 AA 55   ; 240E8 data, read by 20068
  C0F8  .byte AA 55 03 0F 3F 7F 28 04 FC 83 7F 28 05 00 03 7F   ; 240F8 data, read by 20068 2008b
  C108  .byte 28 05 85 42 B0 5C AA 55 AA 55 02 80 C0 F0 FC FE   ; 24108 data, read by 20068 2008b
  C118  .byte 28 02 17 03 C0 30 8C 63 B0 7F 7F FF 3F 0F 03 80   ; 24118 data, read by 20068 2008b
  C128  .byte 40 11 10 11 22 21 22 25 C2 E3 E3 E7 C7 C7 CF CF   ; 24128 data, read by 20068
  C138  .byte 0F 55 AB 55 AA 55 AA 55 AA FE FE 28 06 3A 3A 94   ; 24138 data, read by 20068 2008b
  C148  .byte 95 85 89 4B 4B 3C 3C 18 19 19 11 83 83 A7 A7 A7   ; 24148 data, read by 20068
  C158  .byte A7 27 4F 4F 4F C7 C7 C7 C7 C7 8F 8F 8F 22 65 42   ; 24158 data, read by 20068
  C168  .byte 45 8A 85 8A 15 C7 8F 8F 8F 1F 1F 3F 3F 5C AB 55   ; 24168 data, read by 20068
  C178  .byte AB 56 AA 56 AC A0 54 AA 54 A8 54 A8 50 45 0A 05   ; 24178 data, read by 20068
  C188  .byte 0A 15 0A 15 2A 1F 1F 1F 3F 3F 3F 7F 7F 4F CF 6F   ; 24188 data, read by 20068
  C198  .byte AF 67 A7 53 B3 8F 8F CF CF C7 C7 E3 E3 FF FE FE   ; 24198 data, read by 20068
  C1A8  .byte FE FE FE FC FD 28 07 FE 4F 4F 9F 9F 9F 9F BF 3F   ; 241A8 data, read by 20068 2008b
  C1B8  .byte 8F 8F 1F 1F 1F 1F 3F 3F FF FC F3 CE 3C F9 FA F5   ; 241B8 data, read by 20068
  C1C8  .byte 00 03 0C 30 C0 17 04 94 2E 54 2D 55 AD 5D 80 17   ; 241C8 data, read by 20068 2008b
  C1D8  .byte 0F 9F 1F 9F 1F 9F 4F 8F 4F 07 07 0F 0F 1F 1E 3C   ; 241D8 data, read by 2008b 20068
  C1E8  .byte 39 F8 F8 F0 F0 E0 E0 C0 C0 D1 D0 D0 A2 A7 A1 48   ; 241E8 data, read by 20068
  C1F8  .byte 4E D9 D9 D8 B2 B7 B7 61 60 07 99 4E 43 40 64 A7   ; 241F8 data, read by 20068
  C208  .byte A7 60 98 6E 6F 63 70 B0 B0 A7 B3 D2 D2 D1 D9 E8   ; 24208 data, read by 20068
  C218  .byte E8 B0 B8 D8 D8 D9 DD EC ED E8 EC F4 F4 F0 F1 E9   ; 24218 data, read by 20068
  C228  .byte E8 ED EE F6 F6 F6 F0 EC EC 93 29 58 52 92 C1 F4   ; 24228 data, read by 20068
  C238  .byte 20 C0 8C 1C 18 98 C9 F1 F8 06 06 4C 8C D9 19 33   ; 24238 data, read by 20068
  C248  .byte B3 36 57 6E AE DC DC 38 38 60 60 C0 C4 8C 96 04   ; 24248 data, read by 20068
  C258  .byte 30 74 75 EE EE CE C7 87 76 01 83 F6 EC D8 B0 66   ; 24258 data, read by 20068
  C268  .byte 6F 79 03 07 0E 1D 39 70 E0 67 43 C3 C9 99 8C 2C   ; 24268 data, read by 20068
  C278  .byte 74 70 68 E8 EC DC CE 8E 06 F1 4B A7 A7 B3 D3 D3   ; 24278 data, read by 20068
  C288  .byte 19 04 00 30 30 38 18 18 1C 69 49 0C 34 D9 24 64   ; 24288 data, read by 20068
  C298  .byte CC EC EC CE 06 00 26 76 EE 89 19 19 13 33 B3 27   ; 24298 data, read by 20068
  C2A8  .byte 67 CC 9C 1C D8 B8 B8 B0 70 28 10 AA 55 AA 55 AA   ; 242A8 data, read by 20068 2008b
  C2B8  .byte 55 AA 55 28 08 3F C0 28 06 00 C0 28 06 AA FD 02   ; 242B8 data, read by 20068 2008b
  C2C8  .byte FD FD FD FB F9 FF 03 01 FC FC FC F8 F8 03 17 07   ; 242C8 data, read by 20068 2008b
  C2D8  .byte DF EF EF F7 FB FB FD FE 28 02 7F 3F 1F 1F 1F 0F   ; 242D8 data, read by 20068 2008b
  C2E8  .byte 28 03 FE E0 E0 E0 F0 28 0A E0 17 05 FA F9 F2 F5   ; 242E8 data, read by 20068 2008b
  C2F8  .byte F2 E5 EA D5 F8 17 07 0F 07 07 07 03 03 01 01 F0   ; 242F8 data, read by 20068 2008b
  C308  .byte 78 B8 B8 DC EC EE F6 28 07 FE 17 08 CA D4 A8 95   ; 24308 data, read by 20068 2008b
  C318  .byte 2A 51 2A 55 00 01 03 00 01 07 0F 1F 01 17 07 FA   ; 24318 data, read by 20068 2008b
  C328  .byte FB FD FE 28 04 FE F8 C6 30 C0 17 02 01 17 03 0E   ; 24328 data, read by 20068 2008b
  C338  .byte 3E FC FC FC 80 17 07 7F 7F 28 06 CC DE 96 29 33   ; 24338 data, read by 20068 2008b
  C348  .byte 67 4F 9F 80 88 0C 1D 1B 37 2F 5F 00 7C 28 06 83   ; 24348 data, read by 20068 2008b
  C358  .byte 7C 28 07 7F 16 E1 F8 28 03 F3 66 00 E0 F8 28 03   ; 24358 data, read by 20068 2008b
  C368  .byte 7F 28 04 3F DF DF 3F 7F 7F 28 02 3F DF DF 47 A1   ; 24368 data, read by 20068 2008b
  C378  .byte 50 A8 50 A8 54 AB DF EF F7 FB FB FD FE FE 28 02   ; 24378 data, read by 20068 2008b
  C388  .byte 7F 1F 1F 1F 0F 0F 28 03 FE E0 E0 F0 70 28 09 F8   ; 24388 data, read by 20068 2008b
  C398  .byte C0 17 05 EF EF E7 EF D7 C7 D5 CB 0F 07 07 07 03   ; 24398 data, read by 20068 2008b
  C3A8  .byte 03 01 01 07 03 41 20 B0 B8 98 5C 38 3C 1E 2E 37   ; 243A8 data, read by 20068
  C3B8  .byte 1B 1B 9D 28 06 7F 3F 17 06 80 C0 D5 AB 97 AF 97   ; 243B8 data, read by 20068 2008b
  C3C8  .byte AF 5F 3F 01 03 03 07 07 0F 0F 1F 17 08 FE 28 07   ; 243C8 data, read by 20068 2008b
  C3D8  .byte 3F 1F 8F 8E CD E2 F2 F8 C0 60 B0 B0 D8 EC F4 F8   ; 243D8 data, read by 20068
  C3E8  .byte 7F 3F 7F FF 7F 28 03 3F 3F 3F 7F 7F 7F 28 02 63   ; 243E8 data, read by 20068 2008b
  C3F8  .byte 63 63 63 63 63 63 63 FC FC FC FC FC FC FC FC 17   ; 243F8 data, read by 20068
  C408  .byte 10 A8 50 A8 43 8C 10 30 08 51 A8 51 A1 40 88 18   ; 24408 data, read by 2008b 20068
  C418  .byte 88 03 0C 30 C0 80 C0 40 60 E0 83 0F 3F 28 02 7E   ; 24418 data, read by 20068 2008b
  C428  .byte 7C 0A 05 02 00 10 10 30 20 9F C7 F3 F8 DE 9F 3F   ; 24428 data, read by 20068
  C438  .byte 3F 17 02 0C 30 C0 17 03 F0 C0 0C 3E 28 03 FE 17   ; 24438 data, read by 20068 2008b
  C448  .byte 10 20 20 17 02 01 17 03 30 20 17 02 01 17 03 40   ; 24448 data, read by 2008b 20068
  C458  .byte 40 C0 80 80 80 C0 40 7F 7F 28 05 7F 17 02 03 0E   ; 24458 data, read by 20068 2008b
  C468  .byte 17 04 FC F8 F3 28 02 FE FE FC 80 80 00 01 03 06   ; 24468 data, read by 20068 2008b
  C478  .byte 0C 18 80 80 00 01 03 07 0F 1F 00 08 08 08 08 08   ; 24478 data, read by 20068
  C488  .byte 08 08 00 08 0E 0F 0F 8F CF EF 20 30 18 08 0C 04   ; 24488 data, read by 20068
  C498  .byte 17 02 3F 3F 1F 0F CF E7 28 02 17 02 01 03 02 17   ; 24498 data, read by 20068 2008b
  C4A8  .byte 03 FC FC F9 FB FF 7F 7F 3F 30 60 C0 80 17 04 3F   ; 244A8 data, read by 2008b 20068
  C4B8  .byte 7F 28 06 17 11 7E AB 55 A8 50 B8 08 00 03 FF FD   ; 244B8 data, read by 20068 2008b
  C4C8  .byte FC FC BC 8C AA 55 AA D5 AA D5 6A 74 28 06 7E 7C   ; 244C8 data, read by 20068 2008b
  C4D8  .byte B8 54 AA 56 9A 14 3B 35 E0 F8 FC FC DC 9E 3E 3E   ; 244D8 data, read by 20068
  C4E8  .byte A0 50 A8 54 AA 55 AA 54 F0 F8 FC FE 28 03 FE 17   ; 244E8 data, read by 20068 2008b
  C4F8  .byte 10 20 20 17 02 01 17 03 30 20 17 02 01 17 03 6B   ; 244F8 data, read by 2008b 20068
  C508  .byte 55 EB D5 AB D5 EA 55 7E 7E FE FE FE 28 02 7F A8   ; 24508 data, read by 20068 2008b
  C518  .byte 50 A3 5F AA 55 AA 54 FC F8 F3 28 03 FE FE 00 80   ; 24518 data, read by 20068 2008b
  C528  .byte 80 02 06 1D 7A D5 00 80 80 02 07 1F 7F FF 00 08   ; 24528 data, read by 20068
  C538  .byte 0A 0D 0A 0D 8A 4D 00 08 0E 0F 0F 8F CF EF 3A 1D   ; 24538 data, read by 20068
  C548  .byte 0A 4D A6 55 AA 55 3F 1F 0F CF E7 28 03 5B 5D 5B   ; 24548 data, read by 20068 2008b 2003d 20042
  C558  .byte 10 40 84 28 64 A2 92 9A D1 E0 60 44 08 0C 0C 0C   ; 24558 data, read by 2008b 20068
  C568  .byte 0E AE 2C 49 10 10 25 46 09 70 F0 F0 E1 E3 43 03   ; 24568 data, read by 20068
  C578  .byte 06 49 66 32 32 A4 13 89 49 30 38 1C 1C 18 0C 06   ; 24578 data, read by 20068
  C588  .byte 86 4B B5 46 89 89 12 52 32 84 02 30 70 70 E1 E1   ; 24588 data, read by 20068
  C598  .byte C1 51 4E A5 A5 92 22 53 11 8F 83 C3 C3 E1 C1 E0   ; 24598 data, read by 20068
  C5A8  .byte E0 08 8A 89 4B 4A 02 4C 40 07 07 07 87 87 87 87   ; 245A8 data, read by 20068
  C5B8  .byte 87 09 4B 92 D5 84 A8 12 22 DE 9C 1C 38 39 31 21   ; 245B8 data, read by 20068
  C5C8  .byte 01 42 94 A5 26 AC 69 29 37 F1 E3 C3 C3 C7 86 C6   ; 245C8 data, read by 20068
  C5D8  .byte C0 4C 29 53 22 24 49 89 8A F0 F0 E0 C1 C3 86 06   ; 245D8 data, read by 20068
  C5E8  .byte 04 55 DA 92 14 0D 21 61 B3 0E 0C 0C 08 5B 03 40   ; 245E8 data, read by 20068 2008b
  C5F8  .byte 1D 46 A2 93 71 51 B8 68 03 01 41 60 C0 E0 60 D0   ; 245F8 data, read by 20068
  C608  .byte 34 B2 22 49 49 54 99 96 C3 C1 C1 80 80 88 0C 1C   ; 24608 data, read by 20068
  C618  .byte 12 2C 55 A5 6D 69 AB 53 0C 18 38 78 F0 F0 F0 E0   ; 24618 data, read by 20068
  C628  .byte 12 52 4A 61 29 A5 94 4A 61 E1 F1 F0 F0 78 78 3C   ; 24628 data, read by 20068
  C638  .byte C1 94 55 96 24 A1 15 3B F3 E3 E2 E0 C0 C6 CC CC   ; 24638 data, read by 20068
  C648  .byte 34 14 44 AD 49 53 12 22 18 38 38 70 F0 E0 E1 C1   ; 24648 data, read by 20068
  C658  .byte 2D 55 53 01 41 CC 71 08 18 38 38 78 3C 30 5B 02   ; 24658 data, read by 20068 2008b
  C668  .byte 40 81 85 15 15 36 63 01 E3 E3 C3 A3 63 41 5B 02   ; 24668 data, read by 20068 2008b
  C678  .byte D2 9A 6B 9B 79 B2 E1 00 E1 E1 D0 E0 80 40 5B 02   ; 24678 data, read by 20068 2008b
  C688  .byte 1A 13 09 B1 BB D3 66 78 BC 3C 7E 7E 7C 3C 18 00   ; 24688 data, read by 20068
  C698  .byte 1E 80 F7 F9 FE FD F3 0F 5B 08 1C E3 FC F3 8F 73   ; 24698 data, read by 20068 2008b
  C6A8  .byte 7C 9F 5B 09 82 33 0F F3 FE 2B C3 5B 05 01 14 00   ; 246A8 data, read by 20068 2008b
  C6B8  .byte FD EA 47 A8 FE F1 8F 7F 5B 08 CF F3 CC 3F 5D 02   ; 246B8 data, read by 20068 2008b
  C6C8  .byte 1F E7 5B 08 F3 CF 37 C6 F9 FE FD F3 5B 02 08 01   ; 246C8 data, read by 20068 2008b
  C6D8  .byte 5B 04 FD FE F0 CF C1 38 C7 3F 5B 02 01 20 06 00   ; 246D8 data, read by 20068 2008b
  C6E8  .byte 38 C0 E0 1F FF CF 8B 71 FE FF 5B 03 30 04 5B 03   ; 246E8 data, read by 20068 2008b
  C6F8  .byte FB FE F9 C7 3F 5D 03 5B 08 FF 7E 9F E0 5D 03 FC   ; 246F8 data, read by 20068 2008b
  C708  .byte 00 01 5B 05 03 FF 7F CF 70 98 E7 B9 67 00 80 30   ; 24708 data, read by 20068 2008b
  C718  .byte 0F 07 00 40 80 5D 02 8F 78 87 7F C7 1F 5B 02 70   ; 24718 data, read by 20068 2008b
  C728  .byte 80 5B 02 38 E0 FF FA C7 3E C1 1F CE F3 00 05 38   ; 24728 data, read by 20068 2008b
  C738  .byte C0 5B 02 01 00 FB FE F1 2F CF 3F 1F 83 04 5B 03   ; 24738 data, read by 20068 2008b
  C748  .byte 30 C0 E0 7C 98 06 F9 FE 5D 04 07 01 5B 06 1F 07   ; 24748 data, read by 20068 2008b
  C758  .byte C3 3C C7 F8 5D 02 E0 F8 3C 03 5B 04 FF 3E 91 E0   ; 24758 data, read by 20068 2008b
  C768  .byte A0 41 92 D1 5B 04 05 0E 0D 0E 39 80 CD DB 91 D3   ; 24768 data, read by 20068 2008b
  C778  .byte C3 95 5B 02 02 04 0E 0C 1C 0A 7E 9C 81 42 A9 58   ; 24778 data, read by 20068 2008b
  C788  .byte D2 33 5B 03 81 60 E1 61 C0 6C 94 81 41 95 51 92   ; 24788 data, read by 20068 2008b
  C798  .byte 11 5B 03 82 02 0E 0D 0E 0E 17 BF 3B 2C 03 2B BC   ; 24798 data, read by 20068 2008b
  C7A8  .byte 5B 08 A7 5F 1D 17 8F C3 61 F0 5B 08 CA B1 B3 CD   ; 247A8 data, read by 20068 2008b
  C7B8  .byte CA 81 B5 B2 27 47 47 17 17 1F 1F 1F 54 52 55 23   ; 247B8 data, read by 20068
  C7C8  .byte A9 8A A5 C4 8F 8F 8F CF C7 C7 C3 C3 8A 52 A5 A3   ; 247C8 data, read by 20068
  C7D8  .byte 05 55 1A 1A F0 E4 C8 CC D8 98 BC BC 4C D6 E4 FC   ; 247D8 data, read by 20068
  C7E8  .byte 64 7A B5 9A F0 F8 F8 F0 F8 F4 78 7D 2C AA 8D 46   ; 247E8 data, read by 20068
  C7F8  .byte 96 DB C9 E5 9F 1F 1F 1F 0F 07 87 83 88 D4 92 48   ; 247F8 data, read by 20068
  C808  .byte A1 92 54 42 F0 E0 E4 E6 CE CF 8F 1F 12 29 2A 5E   ; 24808 data, read by 20068
  C818  .byte 4D 96 6D E6 DC 9E 1F 3F 3F 3F 1F 1F A2 95 50 0B   ; 24818 data, read by 20068
  C828  .byte 29 02 55 43 7C 78 39 31 93 93 83 87 A3 0A C3 56   ; 24828 data, read by 20068
  C838  .byte 55 86 8E 8F C7 C7 8F 8F 8F 1F 1F 1F 8B 47 53 A7   ; 24838 data, read by 20068
  C848  .byte B6 23 46 83 7F 3F 2F 1F 0F 9F 9F DF 0D AA AD 4A   ; 24848 data, read by 20068
  C858  .byte 59 4C 5A 4C 9F 1F 1F 3F 3F 3F 3F 3F 04 00 02 12   ; 24858 data, read by 20068
  C868  .byte 00 10 30 10 C0 90 98 99 39 39 3C BC 05 06 15 53   ; 24868 data, read by 20068
  C878  .byte 99 4B 88 44 DF 5F 4F 8F 07 87 07 83 56 2B A6 83   ; 24878 data, read by 20068
  C888  .byte 53 81 C4 12 8F CF CF E7 E7 E3 E1 E4 A5 28 A9 51   ; 24888 data, read by 20068
  C898  .byte 29 A1 54 59 C9 C3 C3 83 93 1B 39 3D A2 75 E4 D4   ; 24898 data, read by 20068
  C8A8  .byte E9 75 6A 36 FC F8 F9 F9 FC F8 FC FC 38 15 89 84   ; 248A8 data, read by 20068
  C8B8  .byte DE 4C E1 BA 3E 1E 2E 1A 5B 04 BE ED 9E C5 6B C7   ; 248B8 data, read by 20068 2008b
  C8C8  .byte 60 BA 1F 1F 0D 0A 04 5B 03 E4 FC F6 88 C4 F2 E6   ; 248C8 data, read by 20068 2008b
  C8D8  .byte CE 5B 08 94 E8 B5 D8 E1 D3 86 0C 5B 08 0A 25 56   ; 248D8 data, read by 20068 2008b
  C8E8  .byte 3E 1A 3B 16 1C 5B 04 04 04 08 00 07 03 93 99 19   ; 248E8 data, read by 20068 2008b
  C8F8  .byte 18 3C 3C 5B 08 C3 A5 C3 41 63 D3 E5 C3 5B 03 80   ; 248F8 data, read by 20068 2008b
  C908  .byte 80 5B 03 E3 C3 A3 C1 89 90 0C 8C 5B 08 9E 9C CC   ; 24908 data, read by 20068 2008b
  C918  .byte CC C5 60 71 E0 5B 05 80 80 01 29 30 68 D0 B0 B8   ; 24918 data, read by 20068 2008b
  C928  .byte F9 F1 5B 03 20 40 40 5B 02 97 8B 46 6B 63 E3 F1   ; 24928 data, read by 20068 2008b
  C938  .byte F1 5B 02 01 5B 05 0E 3D 35 35 22 12 70 B0 5B 04   ; 24938 data, read by 20068 2008b
  C948  .byte 01 01 00 40 E2 C3 C9 C9 94 98 98 2C 01 5B 06 10   ; 24948 data, read by 20068 2008b
  C958  .byte A3 91 FA D9 68 68 38 39 00 40 00 20 10 10 5B 02   ; 24958 data, read by 20068 2008b
  C968  .byte 06 04 00 A0 51 A2 B1 E3 5B 04 80 40 40 00 E3 63   ; 24968 data, read by 20068 2008b
  C978  .byte B3 69 F1 A9 B0 F0 00 80 40 80 00 40 40 00 2C 12   ; 24978 data, read by 20068
  C988  .byte 0D 1C 0C 1B 3C 18 00 04 02 03 03 04 02 04 07 83   ; 24988 data, read by 20068
  C998  .byte C1 C9 88 9C 1E 2C 5B 08 50 61 C3 C5 82 46 83 41   ; 24998 data, read by 20068 2008b
  C9A8  .byte 80 80 5B 02 01 01 5B 02 73 32 94 92 C0 E0 E3 D6   ; 249A8 data, read by 20068 2008b
  C9B8  .byte 5B 07 01 FA F4 EC D4 68 B0 40 5B 09 E6 F2 E0 F0   ; 249B8 data, read by 20068 2008b
  C9C8  .byte 88 20 00 88 5B 0B 20 50 B0 90 30 5B 03 40 E0 C0   ; 249C8 data, read by 20068 2008b
  C9D8  .byte E0 C0 5B 04 C0 A0 60 10 5B 05 40 C0 E0 5B 03 06   ; 249D8 data, read by 20068 2008b
  C9E8  .byte 09 10 12 27 5B 04 06 0F 0F 1F 5B 04 80 4C 52 29   ; 249E8 data, read by 20068 2008b
  C9F8  .byte 5B 05 80 8C DE 5B 10 80 40 20 A0 60 90 38 88 00   ; 249F8 data, read by 20068 2008b
  CA08  .byte 80 C0 C0 C0 E0 E0 70 5B 05 06 51 B0 5B 06 04 09   ; 24A08 data, read by 20068 2008b
  CA18  .byte 00 01 03 04 0A 15 29 23 5B 03 03 05 0E 1E 1C 5B   ; 24A18 data, read by 20068 2008b
  CA28  .byte 04 28 0C 54 75 5B 04 10 30 38 08 5B 02 80 80 40   ; 24A28 data, read by 2008b 20068
  CA38  .byte 60 20 B0 5B 04 80 80 C0 40 BB 54 00 24 32 14 14   ; 24A38 data, read by 20068 2008b
  CA48  .byte 08 44 AB 5C 98 48 E8 60 30 D7 0D 02 24 18 60 30   ; 24A48 data, read by 20068
  CA58  .byte 20 28 F2 7D 19 46 08 04 00 EB 50 80 40 4A 14 10   ; 24A58 data, read by 20068
  CA68  .byte 08 14 AF 6A 9D 20 08 5B 02 ED B0 5B 02 12 24 94   ; 24A68 data, read by 20068 2008b
  CA78  .byte 5C 12 4F 55 EA 44 48 08 00 FF ED D0 80 5B 05 12   ; 24A78 data, read by 20068 2008b
  CA88  .byte 2F 75 A9 D2 00 80 5D 02 FD EA D0 80 5B 04 02 15   ; 24A88 data, read by 20068 2008b
  CA98  .byte 2E 7D BA 50 5B 08 5D 08 5B 02 04 00 10 10 20 00   ; 24A98 data, read by 20068 2008b
  CAA8  .byte F4 E4 EC C8 D8 90 20 40 5B 08 5D 04 7E 30 04 28   ; 24AA8 data, read by 20068 2008b
  CAB8  .byte 00 02 04 1C 28 30 70 60 FA E2 CE 9C BC 3A 74 48   ; 24AB8 data, read by 20068
  CAC8  .byte 5B 08 7F 7F 3F 3F 1F 07 03 5B 09 5D 05 FE FC FC   ; 24AC8 data, read by 20068 2008b
  CAD8  .byte FF 1F E3 FD DF 75 F0 80 5B 04 20 8A 0D 52 30 00   ; 24AD8 data, read by 20068 2008b
  CAE8  .byte 1A 04 12 20 20 40 CA F5 A0 5A 64 40 44 5B 09 FF   ; 24AE8 data, read by 20068 2008b
  CAF8  .byte 7F 7F 3F 3F 3F 3F 1F 5B 08 5D 06 FB E0 5B 08 1F   ; 24AF8 data, read by 20068 2008b
  CB08  .byte 0F 0F 07 07 03 5B 02 60 40 A0 10 5B 02 20 00 E0   ; 24B08 data, read by 20068 2008b
  CB18  .byte D0 88 80 40 80 5B 0A FF FE FE FC FC FC F8 F8 73   ; 24B18 data, read by 20068 2008b
  CB28  .byte 9A 29 15 34 54 36 B5 00 61 D3 E3 C3 A3 C1 42 42   ; 24B28 data, read by 20068
  CB38  .byte 51 05 21 23 A9 A0 2A 8D 8E 9E 9E 9C 1E 1E 1C A5   ; 24B38 data, read by 20068
  CB48  .byte C9 53 53 55 51 50 00 0A 16 0C 0C 0A 0E 0F 0F C9   ; 24B48 data, read by 20068
  CB58  .byte 44 0E 26 11 21 2B 3A 10 38 70 58 2C 1C 14 05 5B   ; 24B58 data, read by 20068
  CB68  .byte 03 02 01 07 0F 1E 5B 08 FF D4 88 5B 02 8A 28 54   ; 24B68 data, read by 2008b 20068
  CB78  .byte 00 2B 77 AA 7C 10 10 00 FE 5D 02 F8 41 80 80 5B   ; 24B78 data, read by 20068 2008b
  CB88  .byte 04 07 1A 37 6B 22 5B 05 95 EA FC 5B 03 A0 C8 60   ; 24B88 data, read by 2008b 20068
  CB98  .byte 15 03 03 17 A5 40 02 80 5B 02 F4 C8 00 86 00 02   ; 24B98 data, read by 20068 2008b
  CBA8  .byte 5B 02 FF FE FE FC EA C2 F5 C2 00 01 00 01 15 28   ; 24BA8 data, read by 20068 2008b
  CBB8  .byte 00 10 E0 D0 A0 D0 E4 F8 9F 7F 5B 08 A0 54 82 E5   ; 24BB8 data, read by 20068 2008b
  CBC8  .byte DA 5D 03 00 80 70 18 25 5B 09 80 54 5B 07 80 5B   ; 24BC8 data, read by 20068 2008b
  CBD8  .byte 06 C0 50 5B 0A 01 00 05 02 2B 5B 09 FF 7B 55 95   ; 24BD8 data, read by 2008b 20068
  CBE8  .byte 04 08 20 00 04 84 AA 6E FF F7 5D 02 61 94 EE BF   ; 24BE8 data, read by 20068 2008b
  CBF8  .byte 5D 04 BE 6B 11 40 5B 04 EF 5D 02 7A 65 64 02 00   ; 24BF8 data, read by 20068 2008b
  CC08  .byte 10 5B 02 85 9A 9B FD FF 00 04 84 40 95 CB FF 7F   ; 24C08 data, read by 20068 2008b
  CC18  .byte 5D 02 7B BF 6A 36 00 80 5D 02 FE F8 C8 28 00 80   ; 24C18 data, read by 20068 2008b
  CC28  .byte 5B 02 01 02 32 80 00 02 F8 C0 90 40 90 80 10 00   ; 24C28 data, read by 20068 2008b
  CC38  .byte 07 3C 44 84 00 14 5B 02 FE 1F 0F 10 1A 14 1A 00   ; 24C38 data, read by 20068 2008b
  CC48  .byte 01 E0 B0 AF 28 08 08 08 7F FF 1F C7 C3 C1 88 10   ; 24C48 data, read by 20068
  CC58  .byte 5B 02 E0 38 3C 16 12 02 80 C0 C0 F2 FD FE 5D 02   ; 24C58 data, read by 20068 2008b
  CC68  .byte 5B 08 80 5B 04 E4 F8 FF 5B 08 04 5B 05 01 1F 08   ; 24C68 data, read by 20068 2008b
  CC78  .byte 00 08 5B 05 12 20 03 1F 0F 1F 5D 02 20 06 1C 20   ; 24C78 data, read by 20068 2008b
  CC88  .byte 30 60 5B 02 A2 E9 FA 7F 8F FB 5D 02 59 16 05 5B   ; 24C88 data, read by 20068 2008b
  CC98  .byte 16 40 00 15 EC BA 5D 02 5B 02 A0 48 02 01 5B 05   ; 24C98 data, read by 2008b 20068
  CCA8  .byte 80 A0 50 82 C8 5B 05 80 6C 35 AB C5 A3 FA FD 3F   ; 24CA8 data, read by 20068 2008b
  CCB8  .byte 9F DF 00 30 5C 05 02 5B 04 40 2A 85 EA FD 5D 02   ; 24CB8 data, read by 20068 2008b
  CCC8  .byte 5B 02 80 50 05 5B 03 54 A2 E5 3A 87 FD 5D 02 00   ; 24CC8 data, read by 20068 2008b
  CCD8  .byte 48 18 05 18 02 5B 03 80 40 A8 D2 BD 76 F9 5B 05   ; 24CD8 data, read by 20068 2008b
  CCE8  .byte 40 89 06 5B 04 40 AA 57 7E 5B 06 80 5B 06 50 AA   ; 24CE8 data, read by 20068 2008b
  CCF8  .byte BA 5B 07 45 1A 14 28 20 5B 02 20 00 20 20 40 40   ; 24CF8 data, read by 20068 2008b
  CD08  .byte 40 5B 03 60 08 10 10 5B 04 08 10 5B 02 10 5B 03   ; 24D08 data, read by 20068 2008b
  CD18  .byte 10 10 5B 06 20 20 10 00 10 5B 04 20 40 00 40 00   ; 24D18 data, read by 20068 2008b
  CD28  .byte 20 00 60 40 20 40 5B 07 02 02 03 03 5B 02 03 03   ; 24D28 data, read by 20068 2008b
  CD38  .byte 03 07 06 04 00 D0 D0 90 A0 62 42 03 01 E0 E0 E0   ; 24D38 data, read by 20068
  CD48  .byte C2 84 84 0C 3C 1E 0C 80 40 40 40 80 00 04 5B 02   ; 24D48 data, read by 20068 2008b
  CD58  .byte 80 80 80 5B 02 1C 0E 08 0E 0C 06 0B 01 07 07 07   ; 24D58 data, read by 20068 2008b
  CD68  .byte 03 03 01 5B 02 15 1A 2C 11 61 18 60 60 2A 64 F0   ; 24D68 data, read by 20068 2008b
  CD78  .byte E0 80 5B 03 74 26 06 07 03 5B 03 03 03 01 5B 0B   ; 24D78 data, read by 20068 2008b
  CD88  .byte 34 62 5B 05 18 38 64 41 42 41 10 FF 80 9F 8F 87   ; 24D88 data, read by 20068 2008b 2003d 20042
  CD98  .byte 88 88 88 41 08 FF 00 42 03 41 0B FF 07 E7 C7 87   ; 24D98 data, read by 20068 2008b
  CDA8  .byte 07 07 07 41 03 10 30 70 70 70 88 88 88 88 88 88   ; 24DA8 data, read by 20068 2008b
  CDB8  .byte 88 88 41 08 27 57 27 57 27 57 27 57 50 20 50 20   ; 24DB8 data, read by 20068 2008b
  CDC8  .byte 50 20 50 20 88 85 8A 95 80 42 03 41 09 52 95 68   ; 24DC8 data, read by 20068 2008b
  CDD8  .byte 00 42 03 00 05 2A 17 41 09 42 03 00 42 03 41 04   ; 24DD8 data, read by 20068 2008b
  CDE8  .byte 27 17 07 07 07 42 03 50 A0 D0 E0 41 04 2A 14 0A   ; 24DE8 data, read by 20068 2008b
  CDF8  .byte 06 0A 16 2E 5E 80 40 A0 56 AE 5E BE FE 00 01 02   ; 24DF8 data, read by 20068
  CE08  .byte 05 0B 17 2F 5F 42 07 FE BE 7E FE FE EE CE 8E 0E   ; 24E08 data, read by 20068 2008b
  CE18  .byte FE FE FE EE DE 9E 1E FE 00 01 02 05 0B 17 2F 5E   ; 24E18 data, read by 20068
  CE28  .byte 42 08 BE 7C F8 F0 E0 C0 80 00 FC F8 F7 E4 C4 BF   ; 24E28 data, read by 20068 2008b
  CE38  .byte 24 24 0E 0E 0E 0E 0E 0E 0E 0E 9E 9E FE 9E 9E FE   ; 24E38 data, read by 20068
  CE48  .byte 9E 9E BE BC BC BC BC BC BC BC FD F9 F9 FB F9 F9   ; 24E48 data, read by 20068
  CE58  .byte FB F9 41 08 FF 24 24 FF 24 24 FF 24 0E 0E 0E 0E   ; 24E58 data, read by 20068 2008b
  CE68  .byte 0E 0E 0E 0E FE 9E 9E FE 9E 9E FE 9E BC BC BC BC   ; 24E68 data, read by 20068
  CE78  .byte BC BC BC BC F9 FB F9 F9 FB F9 F9 FB 41 08 24 FF   ; 24E78 data, read by 20068 2008b
  CE88  .byte 24 24 FF 24 24 FF 0E 0E 0E 0E 0E 0E 0E 0E 9E FE   ; 24E88 data, read by 20068
  CE98  .byte 9E 9E FE 9E 9E FE BC BC BC BC BC BC BC BC F9 F9   ; 24E98 data, read by 20068
  CEA8  .byte FB F9 F9 FB F9 F9 41 04 01 03 07 0F 24 24 FF 25   ; 24EA8 data, read by 20068 2008b
  CEB8  .byte 27 FF 2F 3F 1E 3D 7A F5 EA D5 AA 55 BE FC F8 F0   ; 24EB8 data, read by 20068
  CEC8  .byte E0 C0 80 00 BC BC BC BC BD BF BF BF FB F9 F9 FB   ; 24EC8 data, read by 20068
  CED8  .byte FB FB 42 02 1E 3D 7A F4 E8 D0 A0 40 FE 7C F9 F3   ; 24ED8 data, read by 20068 2008b
  CEE8  .byte E7 CF 9F 3F 41 08 42 08 BE BD BA B4 A8 90 20 C0   ; 24EE8 data, read by 20068 2008b
  CEF8  .byte FE FC F9 F3 E7 CF 1F 3F 41 02 01 03 05 09 11 29   ; 24EF8 data, read by 20068 2008b
  CF08  .byte FF FE FC F9 F3 E7 CF 9F 41 02 01 02 04 0A 16 2E   ; 24F08 data, read by 20068 2008b
  CF18  .byte FF FE FC F9 F3 E7 CF 9F 59 99 59 D9 D9 D9 D9 D9   ; 24F18 data, read by 20068
  CF28  .byte 3F 7F 42 06 4C 4C 4C 4C 4C 4C 4C 4C 3F 3F 3F 3F   ; 24F28 data, read by 20068 2008b
  CF38  .byte 3F 3F 3F 3F D9 D9 D9 D9 D9 D9 D9 D9 42 08 4C 4C   ; 24F38 data, read by 20068 2008b
  CF48  .byte 4C 4C 4C 4C 4D 4D 3F 3F 3F 3F 3F 3F 3F 3F D1 C5   ; 24F48 data, read by 20068
  CF58  .byte CD 9D 39 B5 AD 1D 42 08 4C 4C 4D 4D 4C 4C 5C 79   ; 24F58 data, read by 20068 2008b
  CF68  .byte 3F 3F 3F 3F 3F 3F 3F 3F 3A B4 A8 10 20 40 80 00   ; 24F68 data, read by 20068
  CF78  .byte 42 08 72 64 48 50 60 40 41 02 3F 3F 3F 3F 3F 7F   ; 24F78 data, read by 20068 2008b
  CF88  .byte 7F FF 41 03 07 0E 1F 3F 3F 42 03 F8 F7 EF DF DF   ; 24F88 data, read by 20068 2008b
  CF98  .byte 41 04 80 40 40 40 42 03 7F 3F 9F 9F 9F 7F 78 7E   ; 24F98 data, read by 20068 2008b
  CFA8  .byte FF F1 F0 F8 FF B8 B7 AF 6F 6F 6F 77 78 E0 30 08   ; 24FA8 data, read by 20068
  CFB8  .byte 88 C4 64 66 32 0F C7 F3 F3 F9 F9 F8 FC FD FD FA   ; 24FB8 data, read by 20068
  CFC8  .byte 74 38 10 41 02 7E 7E 7C B8 C0 E2 FE FE 52 52 52   ; 24FC8 data, read by 20068 2008b
  CFD8  .byte 52 52 52 52 52 3C 3C 3C 3C 3C 3C 3C 3C 41 03 07   ; 24FD8 data, read by 20068 2008b
  CFE8  .byte 0C 1E 3E 3E FE FE FE F8 F7 EF DF DF A4 A4 A4 A4   ; 24FE8 data, read by 20068
  CFF8  .byte A4 A4 A4 E4 79 79 79 79 79 79 79 79 7F 79 7F FF   ; 24FF8 data, read by 20068
  D008  .byte F0 F0 F8 FF B8 B7 AF 6F 6F 6F 77 78 32 E2 C4 08   ; 25008 data, read by 20068
  D018  .byte 08 10 60 80 FC FC F9 F1 F3 E3 87 0F FD FD FA 74   ; 25018 data, read by 20068
  D028  .byte 38 41 03 7E 7E 7C B8 C1 F3 42 02 41 08 1F 7F 7F   ; 25028 data, read by 20068 2008b
  D038  .byte 42 05 41 02 80 00 0C 1C 34 64 AA 55 2A 55 A2 79   ; 25038 data, read by 20068 2008b
  D048  .byte FA F9 00 01 03 06 0C 18 31 63 42 08 C0 85 00 25   ; 25048 data, read by 20068 2008b
  D058  .byte 70 D5 A0 45 F8 F8 F8 F8 F8 C8 98 38 C6 8D 1A 34   ; 25058 data, read by 20068
  D068  .byte 69 D3 A6 4D FE FC F9 F3 E7 CF 9E 3C 80 25 70 D5   ; 25068 data, read by 20068
  D078  .byte A0 45 80 25 78 F8 F8 C8 98 38 78 F8 36 35 32 30   ; 25078 data, read by 20068
  D088  .byte 31 33 36 35 FE FC FD 42 03 FE FC 9A 34 69 D3 A6   ; 25088 data, read by 20068 2008b
  D098  .byte 4D 9A 34 79 F3 E7 CF 9E 3C 79 F3 70 D5 A0 45 80   ; 25098 data, read by 20068
  D0A8  .byte 25 70 D5 F8 C8 98 38 78 F8 F8 C8 32 30 31 33 36   ; 250A8 data, read by 20068
  D0B8  .byte 35 36 30 FD 42 03 FE FC FD FF 69 D3 A6 4D 9A 34   ; 250B8 data, read by 20068 2008b
  D0C8  .byte 69 D3 E7 CF 9E 3C 79 F3 E7 CF A0 45 80 25 70 D5   ; 250C8 data, read by 20068
  D0D8  .byte A0 45 98 38 78 F8 F8 C8 98 38 31 33 36 35 32 30   ; 250D8 data, read by 20068
  D0E8  .byte 31 33 42 02 FE FC FD 42 03 A6 4D 9A 34 69 D3 A6   ; 250E8 data, read by 20068 2008b
  D0F8  .byte 4D 9E 3C 79 F3 E7 CF BE 3C 68 D5 AA 55 AA 55 AA   ; 250F8 data, read by 20068
  D108  .byte 55 E4 C8 90 20 40 80 41 02 32 34 38 30 41 04 FC   ; 25108 data, read by 20068 2008b
  D118  .byte F9 F3 C7 CF 42 03 41 08 42 08 AA 6D CA 8D 0A 0D   ; 25118 data, read by 20068 2008b
  D128  .byte 0A 0D 00 10 30 30 30 30 30 41 09 42 04 FE FC F8   ; 25128 data, read by 20068 2008b
  D138  .byte F0 10 10 10 10 10 10 10 10 E0 E0 E0 E0 E0 E0 E0   ; 25138 data, read by 20068
  D148  .byte E0 10 10 10 11 13 17 16 14 E0 E0 E1 E3 E7 E6 E5   ; 25148 data, read by 20068
  D158  .byte E3 41 03 20 30 38 3C 3E 42 03 CF E7 F3 F9 EC 37   ; 25158 data, read by 20068 2008b
  D168  .byte 33 31 30 30 30 30 38 EE EF EF EF EF EF EF F7 00   ; 25168 data, read by 20068
  D178  .byte 80 C0 E0 70 78 7C 6C 7F 3F 9F CF EF F3 D9 D9 3C   ; 25178 data, read by 20068
  D188  .byte 3E 3E 36 36 3E 3E 36 FB FD ED ED FD FD ED ED 6C   ; 25188 data, read by 20068
  D198  .byte 6C 6C 6C 6C 6C 6C 6C D9 D9 D9 D9 D9 D9 D9 D9 36   ; 25198 data, read by 20068
  D1A8  .byte 3E 3E 36 36 36 36 37 FD FD ED ED ED ED ED EE 6C   ; 251A8 data, read by 20068
  D1B8  .byte 7C 7C 7C 6C 6C 6C 6C D9 E9 F9 D9 D9 D9 D9 D9 37   ; 251B8 data, read by 20068
  D1C8  .byte 37 37 37 37 37 37 37 EF EF EF EF EF EF EF EF EC   ; 251C8 data, read by 20068
  D1D8  .byte EC EC EC FC FC FC EC 59 D9 D9 D9 E9 F9 D9 D9 3B   ; 251D8 data, read by 20068
  D1E8  .byte 3D 1F 0F 07 03 01 00 F7 FB FD 42 05 EC EC EC EC   ; 251E8 data, read by 20068 2008b
  D1F8  .byte EC EC FC FC D9 D9 D9 D9 D9 D9 E9 F9 7C 3C 1C 0C   ; 251F8 data, read by 20068
  D208  .byte 04 41 03 F9 F9 F9 F9 F9 42 03 41 03 20 30 18 2C   ; 25208 data, read by 20068 2008b
  D218  .byte 16 42 03 DF CF C7 C3 C1 2B 17 2B 15 2A 15 2A 15   ; 25218 data, read by 20068 2008b
  D228  .byte C0 C0 C0 C0 C0 C0 C0 C0 00 80 C0 E0 F0 F8 FC DE   ; 25228 data, read by 20068
  D238  .byte FF 7F 3F 1F 0F 07 23 31 2A 15 2A 15 2A 15 2A 15   ; 25238 data, read by 20068
  D248  .byte C0 C0 C0 C0 C0 C0 C0 C0 EF D7 EB D5 EA D5 EA D5   ; 25248 data, read by 20068
  D258  .byte 38 3C 3E 3F 3F 3F 3F 3F 00 80 C0 E0 F0 78 BC 5C   ; 25258 data, read by 20068
  D268  .byte FF 7F 3F 1F 8F C7 E3 F3 EA D5 EA D5 EA D5 EA D5   ; 25268 data, read by 20068
  D278  .byte 3F 3F 3F 3F 3F 3F 3F 3F AC 54 AC 54 AC 54 AC 54   ; 25278 data, read by 20068
  D288  .byte FB FB FB FB FB FB FB FB 23 2F 1F 0F 07 03 01 00   ; 25288 data, read by 20068
  D298  .byte DF 42 07 EA F5 FA FD FE 42 0B AC 54 AC 54 AC 54   ; 25298 data, read by 20068 2008b
  D2A8  .byte AC D4 FB FB FB FB FB FB FB FB 7F 3F 1F 0F 07 03   ; 252A8 data, read by 20068
  D2B8  .byte 01 00 42 08 EC F4 FC FC FC FC FC FC FB FB FB FB   ; 252B8 data, read by 20068 2008b
  D2C8  .byte FB FB FB FB 7C 3C 1C 0C 04 41 03 FB FB FB FB 42   ; 252C8 data, read by 20068 2008b
  D2D8  .byte 04 41 03 20 30 38 34 32 42 03 DF CF C7 C3 C1 31   ; 252D8 data, read by 20068 2008b
  D2E8  .byte 30 30 30 30 30 30 30 C0 C1 C1 C1 C1 C1 C1 C1 00   ; 252E8 data, read by 20068
  D2F8  .byte 80 40 A0 70 B8 7C BC FF 7F BF DF EF F7 FB FB 30   ; 252F8 data, read by 20068
  D308  .byte 30 30 30 30 30 30 30 C1 C1 C1 C1 C1 C1 C1 C1 7C   ; 25308 data, read by 20068
  D318  .byte BC 7C BC 7C BC 74 B4 FB FB FB FB FB FB F3 F3 7C   ; 25318 data, read by 20068
  D328  .byte BC 7C BC 7C BC 7C BC FB FB FB FB FB FB FB FB 30   ; 25328 data, read by 20068
  D338  .byte 30 18 0C 06 03 01 00 C0 D0 F8 FC FE 42 03 74 3C   ; 25338 data, read by 20068 2008b
  D348  .byte 7C 3C 3C 1C 9C CC F3 7B 7B 3B 3B 1B 9B CB 6C 34   ; 25348 data, read by 20068
  D358  .byte 1C 0C 04 41 03 EB F3 FB FB FB 42 03 41 02 20 30   ; 25358 data, read by 20068 2008b
  D368  .byte 38 3C 3E 3F 42 02 DF EF F7 FB FD FE 3F 3B 39 38   ; 25368 data, read by 20068 2008b
  D378  .byte 38 38 38 38 F7 F3 F3 F2 F2 F2 F2 F2 80 C0 E0 F0   ; 25378 data, read by 20068
  D388  .byte 78 3C 1E 0E 7F BF DF EF F7 BB BD AD 38 38 38 38   ; 25388 data, read by 20068
  D398  .byte 38 38 38 38 F2 F2 F2 F2 F2 F2 F2 F2 0E 0E 0E 0E   ; 25398 data, read by 20068
  D3A8  .byte 0E 0E 0E 0E AD AD AD AD AD AD AD AD 38 3C 1E 0F   ; 253A8 data, read by 20068
  D3B8  .byte 07 03 01 00 F2 FA FC FE 42 04 0E 0E 0E 0E 8E CE   ; 253B8 data, read by 20068 2008b
  D3C8  .byte EE FE AD AD AD AD 2D AD CD ED 7E 3E 1E 0E 06 02   ; 253C8 data, read by 20068
  D3D8  .byte 41 02 FD FD FD FD FD 42 03 41 03 20 30 38 34 32   ; 253D8 data, read by 20068 2008b
  D3E8  .byte 42 03 DF CF C7 CB CD 31 30 30 30 30 30 30 30 CE   ; 253E8 data, read by 20068 2008b
  D3F8  .byte CF CF CF CF CF CF CF 00 80 40 20 10 08 04 04 FF   ; 253F8 data, read by 20068
  D408  .byte 7F BF DF EF F7 FB FB 30 30 30 30 30 30 30 30 CF   ; 25408 data, read by 20068
  D418  .byte CF CF CF CF CF CF CF 04 04 04 04 04 04 04 04 FB   ; 25418 data, read by 20068
  D428  .byte FB FB FB FB FB FB FB 30 32 34 34 34 34 34 32 CF   ; 25428 data, read by 20068
  D438  .byte CF CF CF CF CF CF CF 30 30 18 0C 06 03 01 00 CF   ; 25438 data, read by 20068
  D448  .byte CF 42 06 04 04 04 04 04 04 84 C4 FB FB FB FB FB   ; 25448 data, read by 20068 2008b
  D458  .byte FB FB FB 64 34 1C 0C 04 41 03 FB FB FB FB 42 04   ; 25458 data, read by 20068 2008b
  D468  .byte 1C 1E 1F 1D 1C 1C 1C 10 E3 E1 E0 E0 E0 E0 E0 E0   ; 25468 data, read by 20068
  D478  .byte 41 03 80 40 20 10 08 42 03 7F 3F 1F 0F 07 41 03   ; 25478 data, read by 20068 2008b
  D488  .byte 80 40 20 10 08 42 03 7F 3F 1F 0F 07 08 08 08 08   ; 25488 data, read by 20068 2008b
  D498  .byte 08 08 08 08 07 07 07 07 07 07 07 07 08 08 08 08   ; 25498 data, read by 20068
  D4A8  .byte C8 E8 68 28 07 07 07 87 C7 67 A7 C7 AB 57 AF 5F   ; 254A8 data, read by 20068
  D4B8  .byte BF 7F FE FD 42 02 FE FC F8 F1 E3 C7 FF 01 81 FF   ; 254B8 data, read by 20068 2008b
  D4C8  .byte A9 55 A9 55 42 02 7F 01 42 04 FA B5 9A 95 9A 95   ; 254C8 data, read by 20068 2008b
  D4D8  .byte 90 FF 8F CF EF EF EF EF EF FF 41 08 42 08 AA 55   ; 254D8 data, read by 20068 2008b
  D4E8  .byte AA 55 AA 55 AA 55 41 18 42 08 41 08 7F 42 02 7F   ; 254E8 data, read by 20068 2008b
  D4F8  .byte 7F 6F 6E 6F 00 5F 6F 37 3B 2C 2D 28 00 42 05 00   ; 254F8 data, read by 20068 2008b
  D508  .byte FF 00 42 04 00 FF 00 6C EC EC 7F 3C 1F 0E 07 2B   ; 25508 data, read by 20068 2008b
  D518  .byte 6B 6A 3B 1B 0D 05 41 02 24 18 C3 00 FF 41 02 E7   ; 25518 data, read by 20068 2008b
  D528  .byte E7 7E 42 04 00 7F 42 02 7F 3F 3F 3F 3E 00 5F 6F   ; 25528 data, read by 20068 2008b
  D538  .byte 37 1B 1D 1E 19 42 07 41 02 42 05 00 FF 7F FE BC   ; 25538 data, read by 20068 2008b
  D548  .byte 58 2C 15 08 07 18 59 7B 3F 1F 0F 07 00 FF AA 00   ; 25548 data, read by 20068
  D558  .byte 22 00 FF 00 FF 00 55 42 05 41 02 F0 F8 FC FE FF   ; 25558 data, read by 20068 2008b
  D568  .byte 01 FF 07 E3 F1 F8 FC 00 FE 00 02 26 1A C2 02 FE   ; 25568 data, read by 20068
  D578  .byte 41 02 E4 E4 7C FC FC FE FE 00 E0 CF 9F 3F 7F FF   ; 25578 data, read by 20068 2008b
  D588  .byte 80 FF 00 07 0F 1F 3F 00 7F 00 40 64 58 43 40 FF   ; 25588 data, read by 20068
  D598  .byte 80 00 17 17 3E 3F 3F 7F 7F 00 C4 E2 F1 F8 FC FE   ; 25598 data, read by 20068
  D5A8  .byte FF 01 03 C1 E0 F0 F8 FC 00 FE FF AA 02 22 02 FE   ; 255A8 data, read by 20068
  D5B8  .byte 01 FF 00 54 FC FC FC FC FE 00 A0 54 BA 79 F4 E8   ; 255B8 data, read by 20068
  D5C8  .byte D0 A0 0C 06 03 05 0A 17 2F 5F 41 04 80 60 90 48   ; 255C8 data, read by 20068 2008b
  D5D8  .byte 41 06 20 10 AA 55 AA 55 AA 55 AA 55 41 08 AE 5D   ; 255D8 data, read by 20068 2008b
  D5E8  .byte BA 74 E8 D0 A0 40 01 02 05 0B 17 2F 5F BF 41 08   ; 255E8 data, read by 20068 2008b
  D5F8  .byte AA D5 EA F5 FA FD FE FF 41 02 01 03 06 0C 18 20   ; 255F8 data, read by 20068 2008b
  D608  .byte 41 05 01 02 15 E4 A6 25 21 22 E4 48 F0 18 58 DA   ; 25608 data, read by 20068 2008b
  D618  .byte DE DC D8 B0 00 FE FD F9 F2 E4 C4 84 64 00 FA F6   ; 25618 data, read by 20068
  D628  .byte EC D8 B8 78 98 E3 C7 8F 1F 3F 7F FF 80 00 03 07   ; 25628 data, read by 20068
  D638  .byte 0F 1F 3F 00 7F FF 6A 40 64 40 7F 80 FF 00 15 3F   ; 25638 data, read by 20068
  D648  .byte 3F 3F 3F 7F 41 03 40 20 50 27 57 27 00 7F 3F 5F   ; 25648 data, read by 20068 2008b
  D658  .byte 20 50 20 50 00 08 08 08 88 88 88 88 00 F0 E0 C0   ; 25658 data, read by 20068
  D668  .byte 41 04 27 50 2F 5F 3F 41 03 50 20 40 41 05 6A D4   ; 25668 data, read by 20068 2008b
  D678  .byte A8 50 A0 40 80 00 E4 C9 93 27 4F 9F 3F 7F AB 57   ; 25678 data, read by 20068
  D688  .byte AF 5F BF 7F FE FD 42 02 FE FC F8 F1 E3 C7 FF 01   ; 25688 data, read by 20068 2008b
  D698  .byte 81 FF A9 55 A9 55 42 02 7F 01 42 04 FA B5 9A 95   ; 25698 data, read by 20068 2008b
  D6A8  .byte 9A 95 90 FF 8F CF EF EF EF EF EF FF F2 12 D2 52   ; 256A8 data, read by 20068
  D6B8  .byte 52 52 D2 12 04 E4 E4 84 84 84 04 04 8F 88 8B 8A   ; 256B8 data, read by 20068
  D6C8  .byte 8A 8A 8A 88 60 67 67 67 67 67 67 66 00 03 3F 23   ; 256C8 data, read by 20068
  D6D8  .byte 23 23 7F 7F 00 7D 7D 79 79 61 01 7F FF 81 BD A5   ; 256D8 data, read by 20068
  D6E8  .byte A5 BD 81 FF 00 7F 7F 7B 7B 63 7F 7F F3 E7 CF 9F   ; 256E8 data, read by 20068
  D6F8  .byte 3F 7E FC F9 3F 7E FC F9 F3 E7 CF 9F FF 80 80 80   ; 256F8 data, read by 20068
  D708  .byte 8F 88 88 88 00 40 20 1F 1F 1F 1F 1F FF 01 03 07   ; 25708 data, read by 20068
  D718  .byte F7 07 07 07 00 02 06 FE FE EE EE EE 88 88 88 8F   ; 25718 data, read by 20068
  D728  .byte 80 9F BF FF 1F 1F 1F 18 1F 3F 7F 00 07 07 07 07   ; 25728 data, read by 20068
  D738  .byte 07 FB FD FF EE EE EE 0E FE FE FE 00 99 64 53 86   ; 25738 data, read by 20068
  D748  .byte B9 4A E0 59 99 64 53 86 B9 4A E0 59 D5 08 A4 31   ; 25748 data, read by 20068
  D758  .byte 46 18 C6 29 D5 08 A4 31 46 18 C6 29 1A 2B 1A 10   ; 25758 data, read by 20068 2003d 20042 2008b
  D768  .byte FE FE FC FC F8 F8 F0 F0 FC FC FA FB F7 F7 EF EF   ; 25768 data, read by 20068
  D778  .byte 06 01 1A 06 F9 FE 7F 7F 3F BF 9F DF F7 FB 7B 18   ; 25778 data, read by 20068 2008b
  D788  .byte 03 0B 1B 3B F0 78 98 E0 F0 E0 C0 80 FC FC FC 7C   ; 25788 data, read by 20068
  D798  .byte 8D F1 F9 FB 1A 04 01 01 01 03 F0 F8 FE 2B 05 E7   ; 25798 data, read by 20068 2008b
  D7A8  .byte E1 C0 C0 C0 80 80 80 1A 03 81 E3 F0 F4 F4 CF EF   ; 257A8 data, read by 20068 2008b
  D7B8  .byte 66 10 1A 02 02 03 3D 7D FD FD FE FE 3E 0F 80 1A   ; 257B8 data, read by 20068 2008b
  D7C8  .byte 06 80 F3 F3 F7 E7 E7 CF CF 4F 03 03 07 07 07 0F   ; 257C8 data, read by 20068 2008b
  D7D8  .byte 0F 0F 7F 7F BF BF DF DF EF EE 1A 08 EC CE DE 9E   ; 257D8 data, read by 20068 2008b
  D7E8  .byte BF 3F 7F 7F 0B 0D 1D 1D 3E 3E 7E 7F 03 1A 03 01   ; 257E8 data, read by 20068 2008b
  D7F8  .byte 03 03 87 E0 F8 FE FE FC F8 F8 70 2F 3F 07 00 81   ; 257F8 data, read by 20068
  D808  .byte 81 83 83 1F 47 79 7E 3C 3C 38 38 EE EC F4 F1 01   ; 25808 data, read by 20068
  D818  .byte 03 04 1A 04 01 01 02 E2 E3 2B 04 F8 C0 1A 02 2B   ; 25818 data, read by 20068 2008b
  D828  .byte 03 F8 C7 3F FF 7F 8F CF CF 93 1C 1F 3F 3F 60 80   ; 25828 data, read by 20068 2008b
  D838  .byte 80 40 C0 C0 80 80 C7 C7 CF C0 E0 22 C2 E6 10 10   ; 25838 data, read by 20068
  D848  .byte 1A 03 01 01 05 08 08 18 1C 1C 1C 3E 3E E3 E3 C1   ; 25848 data, read by 20068 2008b
  D858  .byte C1 C1 C0 80 80 1A 08 BF DF EF F7 FB FD FE FE BF   ; 25858 data, read by 20068 2008b
  D868  .byte BF BF BF 1F AF D7 DB 1A 08 E6 CF CF 9F 9F 9F 3F   ; 25868 data, read by 20068 2008b
  D878  .byte 3F 05 0E 0E 1E 1E 1E 3F 3E 3E 3F 0F 33 7C 7F 2B   ; 25878 data, read by 20068
  D888  .byte 02 80 80 80 80 1A 04 01 01 03 83 87 07 CF EF 7C   ; 25888 data, read by 20068 2008b
  D898  .byte 7C 38 38 10 10 1A 02 DC EE EE EE F4 F4 F5 F9 1A   ; 25898 data, read by 20068 2008b
  D8A8  .byte 06 01 00 7E 7C 78 F0 E0 C0 80 00 7D 7B 77 EF DF   ; 258A8 data, read by 20068 2008b
  D8B8  .byte BF 7E FE FF 7F 7F BF BF DF DF EE 1A 08 EF E0 E0   ; 258B8 data, read by 20068 2008b
  D8C8  .byte C0 D8 BC 3E 7F 1A 03 0F 17 3B 3D 7E F2 03 1A 02   ; 258C8 data, read by 20068 2008b
  D8D8  .byte 02 07 07 0F 01 00 01 F8 F8 F0 F0 E0 00 E1 01 01   ; 258D8 data, read by 20068
  D8E8  .byte 01 00 80 C0 E0 1C FC 7C 3C 1E 0E 06 EE F4 F5 F9   ; 258E8 data, read by 20068
  D8F8  .byte E3 81 70 F8 1A 02 01 01 1A 02 71 F8 2B 06 7F 1F   ; 258F8 data, read by 20068 2008b
  D908  .byte FE 2B 02 F8 07 7F 9F E7 0F 9F DF C0 EF EF F7 F7   ; 25908 data, read by 20068 2008b
  D918  .byte E0 40 80 00 E0 E0 F0 F0 E0 F0 F8 FC 06 F8 FE FE   ; 25918 data, read by 20068
  D928  .byte 02 02 1A 06 0B 0B 14 28 D7 2E DC D8 FC FD FB F7   ; 25928 data, read by 20068 2008b
  D938  .byte EC D9 33 37 6F 76 74 30 30 98 98 D8 80 80 80 C0   ; 25938 data, read by 20068
  D948  .byte C0 E0 E0 E0 D8 D8 2C D6 EB 34 1B 0B 77 F7 DB ED   ; 25948 data, read by 20068
  D958  .byte 37 DB EC FC 1A 08 2B 08 00 08 18 1C 1C 1C 3C 3C   ; 25958 data, read by 20068 2008b
  D968  .byte E0 03 C1 C1 C1 C0 80 80 1A 08 3F 80 FE 2B 03 FE   ; 25968 data, read by 20068 2008b
  D978  .byte FE 00 03 3F 3F 1F 4F D7 DB FC C0 00 80 1A 05 C8   ; 25978 data, read by 20068 2008b
  D988  .byte CF 9F 9F 9F 3F 3F 07 08 0E 1E 1E 1E 3F 3E EE F4   ; 25988 data, read by 20068
  D998  .byte F5 F1 E3 99 78 F3 1A 02 01 01 1A 04 2B 06 7F 9F   ; 25998 data, read by 20068 2008b
  D9A8  .byte FE 2B 02 F8 07 7F 1F 07 0F 9F DF E0 EF EF F7 F7   ; 259A8 data, read by 20068 2008b
  D9B8  .byte E0 40 80 00 E0 E0 F0 F0 E0 F0 F8 FC 06 F8 2B 02   ; 259B8 data, read by 20068 2008b
  D9C8  .byte 02 02 1A 06 E0 C0 80 1A 0D E7 39 0E 01 1A 04 01   ; 259C8 data, read by 20068 2008b
  D9D8  .byte 1A 07 F7 FB 7B 9B 60 1D 1A 02 F0 78 18 1A 05 FF   ; 259D8 data, read by 20068 2008b
  D9E8  .byte FC E3 1F E0 1A 26 03 0F 1F 7F FF 1A 0A 80 C0 E0   ; 259E8 data, read by 20068 2008b
  D9F8  .byte F8 FC FF 1A 0E 03 1F 1A 07 80 F1 F8 F8 F0 4C 3C   ; 259F8 data, read by 20068 2008b
  DA08  .byte 7E 3E 04 04 04 04 08 08 0C 1C F0 F0 F0 70 60 20   ; 25A08 data, read by 20068
  DA18  .byte 20 00 80 81 83 07 0F 1F 1F 0F 3E 3C 38 10 1A 04   ; 25A18 data, read by 20068 2008b
  DA28  .byte 1C 00 0C 04 04 1A 06 10 10 38 38 38 13 1C 8E 8E   ; 25A28 data, read by 20068 2008b
  DA38  .byte 8E 06 02 1A 03 20 20 30 30 78 7C 1A 09 7C 7C 3C   ; 25A38 data, read by 20068 2008b
  DA48  .byte 38 38 38 38 1A 05 80 80 80 60 1F 7F 7F 7F 3F 3F   ; 25A48 data, read by 20068 2008b
  DA58  .byte 3F 1A 04 1C 0C 04 00 38 18 18 1A 03 10 18 C0 C0   ; 25A58 data, read by 20068 2008b
  DA68  .byte C0 C0 C0 C0 1A 02 1F 1F 1F 1F 0F 0F 0E 06 1A 05   ; 25A68 data, read by 20068 2008b
  DA78  .byte 40 C0 C0 8C 8C 8C 0C 0C 04 04 04 1A 02 01 01 01   ; 25A78 data, read by 20068 2008b
  DA88  .byte 03 07 18 06 06 04 04 1A 04 C0 C4 C4 C0 C0 C0 80   ; 25A88 data, read by 20068 2008b
  DA98  .byte 1A 04 08 0C 1C 1C 00 61 81 80 80 C0 C0 C0 C0 1A   ; 25A98 data, read by 20068 2008b
  DAA8  .byte 02 02 03 03 07 07 07 C4 C4 E0 60 24 14 1A 06 80   ; 25AA8 data, read by 20068 2008b
  DAB8  .byte C0 E0 F0 E0 E0 E0 00 70 38 18 0C 0F 0F 0C 03 07   ; 25AB8 data, read by 20068
  DAC8  .byte 83 C3 E1 1A 08 C0 30 F0 F0 F0 F0 F0 F0 C6 C5 E3   ; 25AC8 data, read by 20068 2008b
  DAD8  .byte 67 2F 1F 3F 7F 1A 04 80 C0 80 00 E0 E1 E3 07 2F   ; 25AD8 data, read by 20068 2008b
  DAE8  .byte 9F BE 00 0E 0C 08 00 07 1F 3E 00 FE F8 E0 00 E0   ; 25AE8 data, read by 20068
  DAF8  .byte FF 0F 00 01 07 1F 2B 03 0F 00 80 1A 05 01 01 0F   ; 25AF8 data, read by 20068 2008b
  DB08  .byte 03 00 01 07 1F 7E FE 1F 1F 1F 1F 0F 17 1B 1C 7F   ; 25B08 data, read by 20068
  DB18  .byte 7F 7F 7F 7F 6F 67 62 1E 1C 1C 2C A8 B0 10 A2 7E   ; 25B18 data, read by 20068
  DB28  .byte 7C 7D 5D 9B 8B 0B 47 2E 2D 6D 70 30 30 00 08 50   ; 25B28 data, read by 20068
  DB38  .byte 50 10 0B 0B 0B 03 13 B2 72 60 18 7C FC FC FC 47   ; 25B38 data, read by 20068
  DB48  .byte 87 9B FB FD FD FD FD 08 08 08 18 10 10 71 3B 13   ; 25B48 data, read by 20068
  DB58  .byte 33 37 27 67 67 16 78 FC FC FC FC FC 00 78 78 FD   ; 25B58 data, read by 20068
  DB68  .byte FD FD FD FD FD F9 F9 3B 3D 3D 3E 3E 3C 30 09 78   ; 25B68 data, read by 20068
  DB78  .byte 7C 7C 7E 7E 7F 7C 78 78 B4 B4 C6 C6 66 06 86 F9   ; 25B78 data, read by 20068
  DB88  .byte 75 75 36 2E 0E 0E 5E 3B 3B 3B 36 36 35 2D 0B 78   ; 25B88 data, read by 20068
  DB98  .byte 78 78 71 51 53 43 27 86 46 66 E6 F6 F6 F9 C1 5E   ; 25B98 data, read by 20068
  DBA8  .byte DE EE EE F6 D6 F9 C1 0A 01 07 27 23 63 63 63 27   ; 25BA8 data, read by 20068
  DBB8  .byte 0F 2F 4F 4F 2F 2F 2F 39 F9 FD FD FD FD FD FD F9   ; 25BB8 data, read by 20068
  DBC8  .byte F9 FD FD FD FD FD FD 60 62 66 66 26 27 0B 0B 2F   ; 25BC8 data, read by 20068
  DBD8  .byte 2C 29 29 49 40 28 18 FD 1D E1 F9 F9 71 71 71 FD   ; 25BD8 data, read by 20068
  DBE8  .byte FD FB FB FB F3 F3 F5 0D 1D 1E 1E 1E 39 23 1F 3C   ; 25BE8 data, read by 20068
  DBF8  .byte 3C 7E 7E 7F 7F 7F 7F A1 A1 A1 C1 06 86 8E 8E 6D   ; 25BF8 data, read by 20068
  DC08  .byte 6D 6D 1F 1E BE BE BE 3F C7 38 07 1A 06 C0 F8 2B   ; 25C08 data, read by 20068 2008b
  DC18  .byte 04 F0 0F F0 1A 07 0F 2B 05 18 E7 18 1A 07 E7 2B   ; 25C18 data, read by 20068 2008b
  DC28  .byte 05 60 E6 26 06 06 07 03 01 28 28 A9 C9 E9 F0 F8   ; 25C28 data, read by 20068 2008b
  DC38  .byte FC 1A 05 1E FF 03 2B 07 03 1A 04 03 7F FC 00 2B   ; 25C38 data, read by 20068 2008b
  DC48  .byte 06 FC 1A 05 E8 7C 1F 00 2B 05 7F 1F 1A 05 0E 7F   ; 25C48 data, read by 2008b 20068
  DC58  .byte C1 00 FE 2B 05 C1 00 A1 21 21 00 06 86 FA 00 6D   ; 25C58 data, read by 20068 2008b
  DC68  .byte 6D AD DE EE F6 FA 00 1F E0 1F 1A 04 03 1A 02 E0   ; 25C68 data, read by 20068 2008b
  DC78  .byte 2B 03 FC FB 00 FF 00 0F 18 3F EF 99 1A 02 F0 E8   ; 25C78 data, read by 20068 2008b
  DC88  .byte D0 38 EF 9D F8 00 F8 07 1A 02 F8 FF 00 07 07 1A   ; 25C88 data, read by 20068 2008b
  DC98  .byte 04 F8 00 1F 00 FF 02 1A 02 FF 00 2B 02 1A 06 FF   ; 25C98 data, read by 2008b 20068
  DCA8  .byte 00 AA BD 57 0A FF 00 2B 02 55 02 1A 02 03 1F E0   ; 25CA8 data, read by 20068 2008b
  DCB8  .byte 1F A0 54 EB FF E0 00 E0 FF 5F AB 15 1F FF F0 0F   ; 25CB8 data, read by 20068
  DCC8  .byte 80 70 14 77 8F 79 1A 02 8F F3 F8 F8 F0 84 0F F0   ; 25CC8 data, read by 20068 2008b
  DCD8  .byte 0F 1A 03 E0 1A 03 F0 2B 02 1F 0F 1F 1A 02 03 1A   ; 25CD8 data, read by 20068 2008b
  DCE8  .byte 02 80 FF 0F FC FC FB FC 2B 03 0F 33 C6 88 11 62   ; 25CE8 data, read by 2008b 20068
  DCF8  .byte 05 FE 01 3B E7 8E 1C 70 89 FE 01 03 03 01 1A 05   ; 25CF8 data, read by 20068 2008b
  DD08  .byte FC 7C 3E 1F 0F C7 F3 2B 02 DB DB 8A CB 4C AA 77   ; 25D08 data, read by 20068 2008b
  DD18  .byte FF ED ED ED 8D 89 00 77 F0 5A 52 91 85 80 6D E0   ; 25D18 data, read by 20068
  DD28  .byte FF A5 A5 24 10 12 0D E0 1F D5 E7 32 10 23 76 07   ; 25D28 data, read by 20068
  DD38  .byte E0 2A 10 81 88 88 71 07 CE 63 18 9A 8D 02 1D C0   ; 25D38 data, read by 20068
  DD48  .byte 30 84 C1 00 40 60 9D C0 C0 38 C0 1C E0 00 FF 80   ; 25D48 data, read by 20068
  DD58  .byte 07 03 07 23 1F 2B 02 80 2B 02 03 00 30 28 34 93   ; 25D58 data, read by 20068 2008b
  DD68  .byte 1A 04 20 30 38 1C E0 C0 80 80 00 08 08 19 0F 07   ; 25D68 data, read by 20068 2008b
  DD78  .byte 06 12 10 10 31 23 83 B1 31 31 D0 D0 D1 96 00 20   ; 25D78 data, read by 20068
  DD88  .byte 20 60 60 60 E1 E7 FD F1 E1 81 03 63 83 23 1A 05   ; 25D88 data, read by 20068 2008b
  DD98  .byte 60 E0 C0 99 C8 2C 64 06 87 CA 91 1E 0F 2F 77 37   ; 25D98 data, read by 20068
  DDA8  .byte 07 0A 1C 99 D3 63 37 17 06 72 F0 23 07 87 C7 E7   ; 25DA8 data, read by 20068
  DDB8  .byte 07 F3 F8 C7 87 07 03 01 F8 31 C3 1A 05 F8 C0 00   ; 25DB8 data, read by 20068 2008b
  DDC8  .byte 2C 30 00 08 F0 F0 E0 E3 30 20 1A 06 B0 B1 37 60   ; 25DC8 data, read by 20068 2008b
  DDD8  .byte 40 5F 3E 01 C7 C6 C0 80 9F 9F BF 1E A1 41 03 87   ; 25DD8 data, read by 20068
  DDE8  .byte C6 CC 99 93 3B 7B 07 07 0F 0F 1E 1C 16 0A 0A 0E   ; 25DE8 data, read by 20068
  DDF8  .byte 04 64 F0 FA 18 0C 0C 0C 04 04 1A 02 E0 C0 86 06   ; 25DF8 data, read by 20068 2008b
  DE08  .byte 27 73 C1 14 F8 FB F7 EF CF 87 0B 19 06 06 06 06   ; 25E08 data, read by 20068
  DE18  .byte 0A 2A 6C EC F0 F0 F0 70 1A 04 81 81 82 03 07 47   ; 25E18 data, read by 20068 2008b
  DE28  .byte 4F 6F 3D 39 3A 13 07 07 0F 0F 08 00 80 40 A2 C2   ; 25E28 data, read by 20068
  DE38  .byte 92 98 E0 F0 F0 70 B8 C0 B8 A8 27 01 98 9E 9F 3E   ; 25E38 data, read by 20068
  DE48  .byte 3E 3E 07 01 18 1E 1F 3E 3E 3E 14 24 54 04 54 8A   ; 25E48 data, read by 20068
  DE58  .byte 92 8A 4C 6C 4C 0C 4C 86 86 86 3E 0E 02 78 7E 7E   ; 25E58 data, read by 20068
  DE68  .byte 7E 7E 3E 0E 02 78 7E 7E 7E 7E 92 8A 82 0A 82 8A   ; 25E68 data, read by 20068
  DE78  .byte 82 8A 86 86 86 06 86 86 86 86 7E 7E 7E 7E 7E 7E   ; 25E78 data, read by 20068
  DE88  .byte 70 06 7E 7E 7E 7E 7E 7E 70 06 02 0A 02 0A 02 0A   ; 25E88 data, read by 20068
  DE98  .byte 02 0A 86 86 86 86 86 86 06 86 7E 7E 3E 3F 3E 3C   ; 25E98 data, read by 20068
  DEA8  .byte 19 13 7E 7E 3E 3F 3E 3C 19 13 92 8A 92 24 54 A4   ; 25EA8 data, read by 20068
  DEB8  .byte D4 E4 86 86 86 0C 4C AC CC EC 47 8F 9F 9F CF CF   ; 25EB8 data, read by 20068
  DEC8  .byte C6 C4 07 0F 1F 1F 0F 0F 06 04 F0 C2 82 82 04 04   ; 25EC8 data, read by 20068
  DED8  .byte 02 02 B8 DC 98 B8 30 70 70 E0 02 02 06 06 06 06   ; 25ED8 data, read by 20068
  DEE8  .byte 06 06 E0 E0 20 D0 F0 F0 F0 E0 6F 6F 6F 4F 4F 5C   ; 25EE8 data, read by 20068
  DEF8  .byte 1B 13 1F 1F 1F 3C 38 20 63 63 7E 3C 1D 2D A9 11   ; 25EF8 data, read by 20068
  DF08  .byte 11 A3 FE FC 7D 5D 9B 0B 09 87 27 27 6F 6F 1E 05   ; 25F08 data, read by 20068
  DF18  .byte 1B 13 57 57 0F 0F 1E 05 1F 1F B3 91 29 69 F5 F5   ; 25F18 data, read by 20068
  DF28  .byte F5 F9 87 87 23 61 F1 F1 F1 F9 25 2D 25 2D 25 4A   ; 25F28 data, read by 20068
  DF38  .byte 5C 48 3B 33 3B 33 3B 71 61 71 F9 F9 F9 F9 C1 39   ; 25F38 data, read by 20068
  DF48  .byte F9 F9 F8 F8 F8 F8 C0 38 F8 F8 5C 48 5C 48 5C 48   ; 25F48 data, read by 20068
  DF58  .byte 5C 48 61 71 61 71 61 71 61 71 FD FD FC FD FD FD   ; 25F58 data, read by 20068
  DF68  .byte FD 01 FC FC FC FC FC FC FC 00 5C 48 5C 48 5C 48   ; 25F68 data, read by 20068
  DF78  .byte 5C 48 31 71 31 71 31 71 31 71 FC FD FC FC FC FD   ; 25F78 data, read by 20068
  DF88  .byte FD FD FC FC FC FC FC FC FC FC 5A 4A 52 2A 23 22   ; 25F88 data, read by 20068
  DF98  .byte 23 22 61 73 6B 31 37 37 37 37 F9 01 51 A9 55 A9   ; 25F98 data, read by 20068
  DFA8  .byte 51 A9 F8 00 F8 FC FC F8 F8 F8 50 58 68 60 60 60   ; 25FA8 data, read by 20068
  DFB8  .byte 20 00 1C 1F 2F 2D 4D 46 27 13 51 01 01 01 01 01   ; 25FB8 data, read by 20068
  DFC8  .byte 11 11 F1 31 93 C3 E3 E3 53 55 08 1C 1C 1E 1E 39   ; 25FC8 data, read by 20068
  DFD8  .byte 23 1F 3A 7C 7C 7E 7F 7F 7F 7F 01 81 81 C1 06 86   ; 25FD8 data, read by 20068
  DFE8  .byte 8E 8E 0D 0D 0D 1F 1E BE BE BE 1A 09 80 C0 F0 FE   ; 25FE8 data, read by 20068 2008b
  DFF8  .byte 2B 03 68 28 18 08 1A 02 04 00 F0 70 30 18 C8 E0   ; 25FF8 data, read by 20068 2008b
  E008  .byte F8 FF 1A 0B 01 1F 2B 03 1A 0A 3C 7F 2B 04 1A 08   ; 26008 data, read by 20068 2008b
  E018  .byte AA 55 AA 55 AA 55 AA 55 1A 03 0F 1F 1F 1B 19 2B   ; 26018 data, read by 20068 2008b
  E028  .byte 03 F0 EF EF EF EF 1A 03 F0 F0 F4 D6 96 2B 03 0F   ; 26028 data, read by 2008b 20068
  E038  .byte F7 F3 F1 F1 92 D2 F2 12 02 02 FE 00 71 31 11 E1   ; 26038 data, read by 20068
  E048  .byte 01 01 01 FF 18 18 18 10 1A 02 03 00 EF EE EC EF   ; 26048 data, read by 20068 2008b
  E058  .byte F0 F8 FC FF 14 29 53 A7 4E 9C 39 73 E3 C6 8D 1B   ; 26058 data, read by 20068
  E068  .byte 36 6C D9 B3 18 8C C6 E3 71 F8 FC FE EF 37 8B C5   ; 26068 data, read by 20068
  E078  .byte 62 B1 D8 EC 73 39 9C 4E A7 53 29 14 B3 D9 6C 36   ; 26078 data, read by 20068
  E088  .byte 1B 8D C6 E3 FC F9 F2 E5 CB 96 2C 58 EC D8 B1 62   ; 26088 data, read by 20068
  E098  .byte C5 8B 17 2F 1A 03 03 0F 0F 1E 1C 2B 02 FC F0 E3   ; 26098 data, read by 20068 2008b
  E0A8  .byte E7 CF CF 1A 03 C0 F0 F4 3A 3B 2B 02 3F 0F C7 A3   ; 260A8 data, read by 20068 2008b
  E0B8  .byte C1 C0 1C 1E 0F 0F 03 04 03 00 CF CD E4 E2 F0 F8   ; 260B8 data, read by 20068
  E0C8  .byte FC FF 3B 7B F7 F7 CE 3E FC F0 C0 80 1A 02 01 01   ; 260C8 data, read by 20068 2008b
  E0D8  .byte 03 0F 01 02 00 7F 01 03 FF 00 AA 01 02 02 03 00   ; 260D8 data, read by 20068 2003d 20042 2008b
  E0E8  .byte FF 55 00 FC 01 03 FC 00 AA 01 02 FE FE FE 00 FE   ; 260E8 data, read by 20068 2008b
  E0F8  .byte 54 02 08 01 08 FE FE FE FE FE FE FE FE 01 08 AA   ; 260F8 data, read by 20068 2008b
  E108  .byte 55 01 03 FF 7F 01 09 AA 54 01 03 FE FC 01 09 01   ; 26108 data, read by 20068 2008b 2003d
  E118  .byte 02 00 05 44 45 44 45 44 45 00 3A 3B 3A 3B 3A 3B   ; 26118 data, read by 20042 20068
  E128  .byte 3A 44 45 44 45 44 45 44 05 3B 3A 3B 3A 3B 3A 3B   ; 26128 data, read by 20068
  E138  .byte 3A 00 02 07 01 08 02 08 01 09 86 46 86 46 86 46   ; 26138 data, read by 20068 2008b
  E148  .byte 86 01 08 46 86 46 86 46 86 46 86 01 0A 07 18 20   ; 26148 data, read by 20068 2008b
  E158  .byte 21 42 45 01 03 07 1F 1E 3D 3A 01 02 E0 18 04 04   ; 26158 data, read by 20068 2008b
  E168  .byte 82 42 01 03 E0 F8 F8 0C 00 40 41 20 20 18 07 01   ; 26168 data, read by 20068 2008b
  E178  .byte 02 3A 38 1C 1C 0C 01 03 A2 42 84 04 18 E0 01 0A   ; 26178 data, read by 20068 2008b
  E188  .byte FD EA D4 B0 C0 A1 43 86 A9 40 01 06 AF 5F A7 1B   ; 26188 data, read by 20068 2008b
  E198  .byte 0B 8D C5 45 0A 05 0A 44 34 12 1A 3A C6 C3 E0 C0   ; 26198 data, read by 20068 2008b
  E1A8  .byte E0 F0 FC FF 80 40 A9 67 B3 5C AB 55 45 85 0D 0B   ; 261A8 data, read by 20068
  E1B8  .byte 33 E7 1F FF 3A 7A F2 F4 CD 1A E5 AA 02 08 AA 55   ; 261B8 data, read by 20068 2008b
  E1C8  .byte AA 55 AA 55 AA 55 6D 89 6D 10 89 04 FC F3 CC 20   ; 261C8 data, read by 20068 2003d 20042 2008b
  E1D8  .byte 6D 05 03 0F 3F FE F1 CF 3F AA 55 6D 03 01 0F 3F   ; 261D8 data, read by 20068 2008b
  E1E8  .byte 89 04 00 89 03 AA 55 6D 03 89 07 6D 02 10 30 38   ; 261E8 data, read by 20068 2008b
  E1F8  .byte 78 FC FC 6D 02 10 30 38 78 FC FC 6D 03 08 18 18   ; 261F8 data, read by 20068 2008b
  E208  .byte 3C 3C 6D 03 08 18 18 3C 3C 01 01 01 01 01 01 03   ; 26208 data, read by 20068 2008b
  E218  .byte 03 6D 08 7F 8F F3 FC AF 55 6D 03 80 80 F0 FC 89   ; 26218 data, read by 20068 2008b
  E228  .byte 07 3F CF 37 0B 6D 06 C0 F0 2F 43 40 40 40 40 62   ; 26228 data, read by 2008b 20068
  E238  .byte 42 3F 7F 7F 7F 7F 7F 7D 7D E0 FF 6D 02 08 88 8C   ; 26238 data, read by 20068 2008b
  E248  .byte CE 89 08 00 FF 00 20 20 22 33 12 89 03 DF DF DF   ; 26248 data, read by 20068 2008b
  E258  .byte CF EF 00 FF 6D 02 03 43 43 47 89 04 FD FD FD F9   ; 26258 data, read by 20068 2008b
  E268  .byte 00 FF 00 02 12 2D DD 5D 89 03 FE BE BE AE 3C 00   ; 26268 data, read by 20068 2008b
  E278  .byte FF 00 01 41 41 51 D3 89 03 FE BE BE BE 3C 00 FF   ; 26278 data, read by 20068 2008b
  E288  .byte 6D 02 80 82 C2 82 89 05 FD FD FC 1D EE 06 0E 86   ; 26288 data, read by 20068 2008b
  E298  .byte 8E 86 8E F8 F0 F8 F0 F8 F0 F8 F0 62 72 62 72 67   ; 26298 data, read by 20068
  E2A8  .byte 76 66 35 7D 7D 7D 7D 78 78 78 38 8C CE 8D CF 4F   ; 262A8 data, read by 20068
  E2B8  .byte 57 57 BB 89 04 6F 47 47 03 13 0A 13 35 35 75 26   ; 262B8 data, read by 20068 2008b
  E2C8  .byte 6F EF F3 E4 C1 C1 81 C0 80 E3 F6 F2 A5 BD 25 BD   ; 262C8 data, read by 20068
  E2D8  .byte B5 7D 78 7C 38 30 38 30 38 BB BD 7D FD FD 78 78   ; 262D8 data, read by 20068
  E2E8  .byte 78 83 81 01 01 01 6D 03 F3 F3 B3 96 1A 16 1A 1C   ; 262E8 data, read by 20068 2008b
  E2F8  .byte 1C 1C 1D 18 1C 18 1C 18 C6 E5 65 AD AD A9 B9 D1   ; 262F8 data, read by 20068
  E308  .byte F8 F8 78 30 30 30 30 10 46 6E 46 6E 64 AD B5 AD   ; 26308 data, read by 20068
  E318  .byte 78 70 78 70 78 30 38 30 B4 BC D8 E8 F4 FC FC FF   ; 26318 data, read by 20068
  E328  .byte 38 30 18 08 6D 04 03 03 01 01 6D 04 03 03 01 01   ; 26328 data, read by 20068 2008b
  E338  .byte 6D 04 67 63 C0 C0 C0 6D 03 80 80 80 80 80 6D 03   ; 26338 data, read by 20068 2008b
  E348  .byte 1C 14 1C 18 08 6D 03 10 18 10 10 08 6D 03 30 30   ; 26348 data, read by 20068 2008b
  E358  .byte 10 6D 0D 0C 08 6D 06 0C 08 6D 06 E1 40 6D 0E BC   ; 26358 data, read by 20068 2008b
  E368  .byte B8 B8 38 10 6D 03 30 30 30 38 10 6D 03 89 08 6D   ; 26368 data, read by 20068 2008b
  E378  .byte 08 1F 07 E1 F8 FE 5F AF 55 00 E0 F8 FE 89 07 7F   ; 26378 data, read by 2008b 20068
  E388  .byte 1F 87 E3 F9 6D 04 80 E0 F8 FC FE FC F9 F3 E7 CF   ; 26388 data, read by 20068 2008b
  E398  .byte 9E 3D 00 01 03 07 0F 1F 3F 7F 01 01 81 81 A3 B3   ; 26398 data, read by 20068
  E3A8  .byte F7 FF 01 01 81 81 A3 B3 F7 FF AA 15 02 01 00 A0   ; 263A8 data, read by 20068
  E3B8  .byte 50 AA 89 05 5F AF 55 F8 5E AE 5A B2 62 42 82 FC   ; 263B8 data, read by 20068 2008b
  E3C8  .byte FC FC FC FC FC FC FC 00 01 01 13 33 7B 7F 7F 6D   ; 263C8 data, read by 20068
  E3D8  .byte 08 7A F5 EA D4 A8 50 A1 42 89 06 FE FD 85 0A 15   ; 263D8 data, read by 2008b 20068
  E3E8  .byte 2B 57 AF 5F BF FA F5 EA D4 A8 50 A0 40 55 AA F4   ; 263E8 data, read by 20068
  E3F8  .byte F8 F1 E1 C1 81 AB 57 0F 0F 1E 3E 7E FE 22 22 22   ; 263F8 data, read by 20068
  E408  .byte 62 42 42 46 4C DC DC DC 9C BC 8C 88 80 83 83 C3   ; 26408 data, read by 20068
  E418  .byte C7 E7 89 03 6D 08 89 08 6D 0A 10 18 18 1C 3C 3F   ; 26418 data, read by 20068 2008b
  E428  .byte 6D 02 10 18 18 1C 3C 3F 7F FE FC F8 F0 E0 C0 88   ; 26428 data, read by 20068 2008b
  E438  .byte 81 03 07 0F 1F 3F 7F F7 01 21 21 21 22 22 22 25   ; 26438 data, read by 20068
  E448  .byte FE DE DE DE DC CC CC C0 B4 78 7C 7C DC C8 80 6D   ; 26448 data, read by 20068
  E458  .byte 09 6A 71 7C 7F 77 77 77 63 7F 7F 7F 7F 7F 7F 7F   ; 26458 data, read by 2008b 20068
  E468  .byte 7F 85 0A 15 2B C7 F3 DC 9F FA F5 EA D4 F8 FC 89   ; 26468 data, read by 20068
  E478  .byte 02 6D 10 08 18 18 18 18 18 14 15 F7 E7 E3 E3 E3   ; 26478 data, read by 2008b 20068
  E488  .byte E1 E1 E0 60 60 40 40 40 C0 80 80 8A 8E 9E 9E 9E   ; 26488 data, read by 20068
  E498  .byte 0C 04 00 63 63 65 65 05 0D 1E 0C 7B 7B 79 71 31   ; 26498 data, read by 20068
  E4A8  .byte 21 6D 02 9F 9F 9F 9F 9F 8E 0F 2E 89 05 DF CF 8F   ; 264A8 data, read by 20068 2008b
  E4B8  .byte 86 26 25 2D 22 2E 6E 1E F9 D8 D8 C0 C0 C0 80 C0   ; 264B8 data, read by 20068
  E4C8  .byte 16 16 2E 6C 5C 0C 04 00 E0 E0 40 6D 05 0F 06 07   ; 264C8 data, read by 20068 2008b
  E4D8  .byte 02 01 6D 03 0F 07 07 03 01 01 6D 02 40 00 40 6D   ; 264D8 data, read by 20068 2008b
  E4E8  .byte 05 9C DC 9C C8 80 80 6D 02 89 04 FC F0 E3 CF 6D   ; 264E8 data, read by 2008b 20068
  E4F8  .byte 05 03 0F 1F FC F0 C3 0F 3F FE F5 EA 00 03 0F 3F   ; 264F8 data, read by 2008b 20068
  E508  .byte 89 04 11 09 00 80 40 30 8C 43 00 01 00 80 70 3C   ; 26508 data, read by 20068 2008b
  E518  .byte 0F 03 9F 9E 15 2A 35 38 3E 66 3F 3F 7F 7F 7F 7F   ; 26518 data, read by 20068
  E528  .byte 7F 7F 55 AA 50 A0 00 05 0A 55 89 05 FA F5 AA 04   ; 26528 data, read by 20068 2008b
  E538  .byte 04 84 44 62 32 12 1A 84 C4 E6 76 7A 3A 1A DA 7F   ; 26538 data, read by 20068
  E548  .byte 3F 9F CF E7 F3 79 BC 00 80 C0 E0 F0 F8 FC FE 37   ; 26548 data, read by 20068
  E558  .byte 37 23 23 23 23 21 A1 7F 7F 7F 7F 7F 7B 73 33 2A   ; 26558 data, read by 20068
  E568  .byte 95 CF EF B7 BB BD 3E D5 EA F0 F0 F8 FC FE FF A1   ; 26568 data, read by 20068
  E578  .byte 50 A8 D4 EA F5 FA FD 5F AF 57 2B 15 0A 05 02 5E   ; 26578 data, read by 20068
  E588  .byte AF 57 2B 15 0A 85 42 89 06 7F BF 02 83 83 87 87   ; 26588 data, read by 20068 2008b
  E598  .byte C7 EF FF 6D 08 03 03 03 03 6D 04 33 23 03 03 01   ; 26598 data, read by 20068 2008b
  E5A8  .byte 01 6D 02 1F 1F 0F 0F 0F 0F 0E 0E FF BF 9F 9F 8F   ; 265A8 data, read by 20068 2008b
  E5B8  .byte 0F 0F 0F 7E BF DF 6F 77 7B 7D 3E 81 C0 E0 F0 F8   ; 265B8 data, read by 20068
  E5C8  .byte FC FE FF 88 90 91 91 92 82 C4 44 A8 98 D9 D9 DB   ; 265C8 data, read by 20068
  E5D8  .byte EB E7 66 85 8A 04 08 01 06 18 60 C0 C0 80 80 81   ; 265D8 data, read by 20068
  E5E8  .byte 07 1F 7C 33 7F 89 06 6D 08 0E 0C 0C 04 6D 04 01   ; 265E8 data, read by 20068 2008b
  E5F8  .byte 02 02 0A 04 6D 03 3F 3D 3D 7D BC BC BC BC 7F 7F   ; 265F8 data, read by 20068 2008b
  E608  .byte 7F 7F 3F 3F 3F 3F 80 80 C0 C0 E0 E2 E2 F7 80 80   ; 26608 data, read by 20068
  E618  .byte C0 C0 E0 E2 E2 F7 A1 50 A8 D4 EB FC F0 C0 5F AF   ; 26618 data, read by 20068
  E628  .byte 57 2B 17 0F 3F FF 5C AA 52 C2 02 82 82 82 FC FC   ; 26628 data, read by 20068
  E638  .byte FC FC FC 7C 7C 7C 1C 1D 18 6D 05 1F 1F 1E 0C 04   ; 26638 data, read by 20068 2008b
  E648  .byte 6D 03 BF BF BF 1F 1F 1E 0E 0E 89 03 9F 1F 1F 0F   ; 26648 data, read by 20068 2008b
  E658  .byte 0F 00 20 60 61 69 69 5B 5C FF D7 87 86 82 82 80   ; 26658 data, read by 20068
  E668  .byte 80 C2 C6 86 86 84 06 04 00 3C 18 08 08 08 6D 03   ; 26668 data, read by 20068 2008b
  E678  .byte 07 07 07 01 03 01 6D 03 04 06 03 6D 04 DC DC D8   ; 26678 data, read by 20068 2008b
  E688  .byte D8 B8 B0 30 C0 6D 08 84 72 08 04 00 30 C0 00 8C   ; 26688 data, read by 20068 2008b
  E698  .byte F7 7B BD CE 37 F8 F1 E0 00 90 48 2C 24 00 0E E5   ; 26698 data, read by 20068
  E6A8  .byte 19 DE EF EF 77 31 0E 41 46 40 61 24 18 6D 02 71   ; 266A8 data, read by 20068 2008b
  E6B8  .byte 77 76 79 A7 DE BD D9 83 6D 04 07 7C 00 F0 E0 0F   ; 266B8 data, read by 20068 2008b
  E6C8  .byte B8 07 89 02 FC 00 07 80 6D 02 0C 18 A0 80 47 BF   ; 266C8 data, read by 20068 2008b
  E6D8  .byte C0 03 0B 16 38 80 88 8C DC FE FE FE FF 80 88 8C   ; 266D8 data, read by 20068
  E6E8  .byte DC FE FE FE FF F0 6D 03 08 08 10 10 89 02 FE 01   ; 266E8 data, read by 20068 2008b
  E6F8  .byte EF 8F 5F DC 6D 02 40 42 41 40 40 40 42 37 7B 7B   ; 266F8 data, read by 20068 2008b
  E708  .byte 7B 77 71 62 6D 02 1C 6D 02 87 40 20 E2 1F 7F BC   ; 26708 data, read by 20068 2008b
  E718  .byte C0 DF EF 30 44 88 08 10 10 20 21 41 77 CF 8F 1F   ; 26718 data, read by 20068
  E728  .byte 1E 3C 39 71 20 00 40 40 80 80 08 08 B0 AC 5C 78   ; 26728 data, read by 20068
  E738  .byte F6 E7 CF 8F 40 6D 02 20 20 20 20 20 6B 53 5B 33   ; 26738 data, read by 20068 2008b
  E748  .byte B8 B3 BB 31 01 00 82 40 20 01 04 02 40 BC DF E7   ; 26748 data, read by 20068
  E758  .byte F0 38 8C C2 6D 03 08 1C 1C 3E 3F 6D 02 10 18 24   ; 26758 data, read by 20068 2008b
  E768  .byte 24 42 C1 00 04 04 0C 0C 2E 4E 7F 6D 02 08 02 26   ; 26768 data, read by 20068 2008b
  E778  .byte 46 B7 AF 00 3F 3F 7F 7F 7F 6E 6C 00 3F 3F 7F 7F   ; 26778 data, read by 20068
  E788  .byte 7F 7F 7F 00 FC D2 E8 D4 E8 F4 E8 00 FC FE FE FE   ; 26788 data, read by 20068
  E798  .byte FE FE FE 89 02 EF 17 0B C7 E3 E5 89 04 3F DF 89   ; 26798 data, read by 20068 2008b
  E7A8  .byte 08 7F 7F 89 08 96 C8 E1 F3 89 02 BF 7C FE FF FD   ; 267A8 data, read by 2008b 20068
  E7B8  .byte F3 89 02 BF 7D 89 04 FE 7E 3D 5D 89 04 FE FE FD   ; 267B8 data, read by 20068 2008b
  E7C8  .byte FD E2 F0 F0 F9 FC FD FC FC 89 09 FE FE FE FD FD   ; 267C8 data, read by 20068 2008b
  E7D8  .byte FD 7B FF FE FE FE FD FD FD FB 7B F7 89 06 7B F7   ; 267D8 data, read by 20068 2008b
  E7E8  .byte 89 06 2B 1B A7 97 CF 89 03 FB FB F7 F7 EF 89 03   ; 267E8 data, read by 20068 2008b
  E7F8  .byte FE FE BF 5F 0F C7 EB E5 89 08 BB 57 0F 9F 89 02   ; 267F8 data, read by 20068 2008b
  E808  .byte FD E2 FB F7 EF 9F 89 05 BF 9F AF DF CF CF E7 89   ; 26808 data, read by 20068 2008b
  E818  .byte 0A F3 EF ED ED DE DF 89 02 F3 EF EF EF DF DF E3   ; 26818 data, read by 2008b 20068
  E828  .byte F5 F2 F9 FC 89 0B E1 D8 DD 3C 7C FE FE FF E7 DF   ; 26828 data, read by 20068 2008b
  E838  .byte DF BF 7F 89 03 7F FF 7F BF 5F 3F 5F 2E 89 07 FE   ; 26838 data, read by 20068 2008b
  E848  .byte DF BF BF BF 7F 7F 7F FF DF BF BF BF 7F 7F 7F FF   ; 26848 data, read by 20068
  E858  .byte 00 89 03 AA 54 03 0F 00 89 07 00 FC F3 CF 3F FE   ; 26858 data, read by 20068 2008b
  E868  .byte F5 EA 00 89 07 3F FE F5 6A 75 78 7C 76 89 08 77   ; 26868 data, read by 20068 2008b
  E878  .byte 77 23 A3 A3 A3 A3 E3 89 03 7F 7F 7B 73 33 E3 43   ; 26878 data, read by 20068 2008b
  E888  .byte 03 03 6D 04 13 23 03 03 01 01 6D 02 80 82 82 C6   ; 26888 data, read by 20068 2008b
  E898  .byte C6 E6 EE FF 80 82 82 C6 C6 E6 EE FF 00 1F CF F3   ; 26898 data, read by 20068
  E8A8  .byte FC 5F AF 55 00 89 07 00 89 03 AA 15 C0 F0 00 89   ; 268A8 data, read by 20068 2008b
  E8B8  .byte 07 FC 5F AC 58 B0 60 C4 82 89 08 20 22 21 63 43   ; 268B8 data, read by 2008b 20068
  E8C8  .byte 43 47 4F DF DF DF 9F BF 8F 8B 83 85 03 01 01 6D   ; 268C8 data, read by 20068
  E8D8  .byte 04 01 03 01 01 6D 06 20 60 61 F1 F3 FB 6D 02 20   ; 268D8 data, read by 2008b 20068
  E8E8  .byte 60 61 F1 F3 FB FA 75 EE D7 A8 50 01 02 3F 4F F3   ; 268E8 data, read by 20068
  E8F8  .byte FC 89 02 FE FD 85 0A 15 2B D7 BF 5F BF FA F5 EA   ; 268F8 data, read by 20068 2008b
  E908  .byte D4 28 40 A0 40 4A 5D 79 7B B3 BB AB A1 7F 6E 4E   ; 26908 data, read by 20068
  E918  .byte 4C 2C 24 34 3E CC E8 CC EE CE DE BD 7D FE FE F6   ; 26918 data, read by 20068
  E928  .byte 70 70 60 40 80 A0 A4 42 44 64 4E 68 4A 3F 3F 7F   ; 26928 data, read by 20068
  E938  .byte 7F 7F 7F 7F 7F BC 45 2C 15 2C 15 0C 15 40 B8 D0   ; 26938 data, read by 20068
  E948  .byte E8 D0 E8 F0 E8 64 46 65 44 41 40 40 42 7F 7F 7F   ; 26948 data, read by 20068
  E958  .byte 7F 7F 7F 7F 7F 2C 1A 2C 12 2C 12 AC 9A D0 E0 D0   ; 26958 data, read by 20068
  E968  .byte E8 D0 E8 D0 E0 52 56 A7 AB 3B 57 A6 D9 7F 7F FE   ; 26968 data, read by 20068
  E978  .byte F6 26 64 84 D9 0C B2 C8 B2 D1 6A 85 6B F0 C8 B4   ; 26978 data, read by 20068
  E988  .byte C8 A4 40 90 40 00 80 80 C2 C2 C6 EE FF 00 80 80   ; 26988 data, read by 20068
  E998  .byte C2 C2 C6 EE FF A1 50 A8 D4 EB FD FA FF 5F AF 57   ; 26998 data, read by 20068
  E9A8  .byte 2B 14 02 05 80 5F AF 77 EB 02 05 80 40 FC F3 CF   ; 269A8 data, read by 20068
  E9B8  .byte 3F 89 02 7F BF 89 03 FB F0 F4 F4 FA 89 03 FB F0   ; 269B8 data, read by 20068 2008b
  E9C8  .byte F4 F2 F9 FC 83 40 80 40 82 C2 A2 89 02 7F FF 7F   ; 269C8 data, read by 20068 2008b
  E9D8  .byte FD FD FD 6D 10 C2 E2 E2 E3 E7 A6 A6 36 FD BD BD   ; 269D8 data, read by 20068 2008b
  E9E8  .byte BC 38 38 38 38 89 02 F7 F3 68 49 28 08 89 02 F7   ; 269E8 data, read by 20068 2008b
  E9F8  .byte F3 60 41 20 04 6A 75 6B BF DF EC F3 F7 1D 0A 14   ; 269F8 data, read by 20068
  EA08  .byte 80 C0 E0 F0 F0 AA 55 EB FF 7F 1C 81 C3 7D AA 14   ; 26A08 data, read by 20068
  EA18  .byte 6D 05 BF F8 E3 8F 3E FD EA D4 40 6D 03 01 02 15   ; 26A18 data, read by 20068 2008b
  EA28  .byte 2B 01 E0 89 02 AA 55 80 6D 05 55 AA 7F FF FA 7F   ; 26A28 data, read by 20068 2008b
  EA38  .byte 1F E3 F8 5F AF 15 05 6D 04 A0 50 EA FE 7C 99 E2   ; 26A38 data, read by 20068 2008b
  EA48  .byte F9 7C BD 5E 6D 02 01 02 01 80 41 A0 EE DD BB 75   ; 26A48 data, read by 20068 2008b
  EA58  .byte 7A BD DE EF E1 C2 85 0A 05 82 C1 E0 C7 C7 CE CD   ; 26A58 data, read by 20068
  EA68  .byte CE ED EE E7 6D 02 01 02 01 02 01 00 A0 45 8A 15   ; 26A68 data, read by 20068 2008b
  EA78  .byte AB 17 8B 45 5F BF 7F FF 7F FF 7F BF AA 55 89 0E   ; 26A78 data, read by 20068 2008b
  EA88  .byte 82 51 E8 F4 FA FD FE FF FD FE 89 06 2E 5E AE 5E   ; 26A88 data, read by 20068 2008b
  EA98  .byte AE DE AE DE D0 A0 D0 E0 D0 E0 D0 E0 F7 CB B1 BC   ; 26A98 data, read by 20068
  EAA8  .byte BE 77 6B 75 F0 C8 80 80 80 08 14 0A E7 63 E1 60   ; 26AA8 data, read by 20068
  EAB8  .byte E0 E0 C7 9F 00 80 00 80 6D 04 A2 D1 E8 F4 7A 3D   ; 26AB8 data, read by 20068 2008b
  EAC8  .byte 9E CF 5F 2F 17 0B 05 02 01 00 FF 7F BF 5F 2A 15   ; 26AC8 data, read by 20068
  EAD8  .byte 80 55 89 06 7F AA FA D5 A8 41 8A 15 2B 5F 89 03   ; 26AD8 data, read by 20068 2008b
  EAE8  .byte FE F5 EA D4 A0 AE DC AD 5C 39 7A B5 72 D0 E0 D1   ; 26AE8 data, read by 20068
  EAF8  .byte A0 C1 82 45 82 6A 75 6A 77 6B 77 6B 75 15 0E 17   ; 26AF8 data, read by 20068
  EB08  .byte 0F 17 0F 17 0B 3E F5 EA D5 8A 55 8B 55 01 0A 15   ; 26B08 data, read by 20068
  EB18  .byte 2F 7F BF 7F AF E7 73 B8 5C AE 57 AB D5 00 80 40   ; 26B18 data, read by 20068
  EB28  .byte A0 D0 E8 F4 FA AA D5 FF 3E 00 81 C3 E3 55 2A 6D   ; 26B28 data, read by 20068
  EB38  .byte 06 BC F3 C7 1F 7A F5 EA D5 40 6D 03 05 0B 17 2A   ; 26B38 data, read by 2008b 20068
  EB48  .byte E1 CC 9E 3E 7E FE EE D6 01 6D 05 10 28 6A BD BE   ; 26B48 data, read by 20068 2008b
  EB58  .byte DF EF C3 B1 3C 15 82 81 C0 E0 C0 80 00 AA E5 F2   ; 26B58 data, read by 20068
  EB68  .byte 3F 0F E7 F9 5E 55 1A 05 6D 04 A0 EA 75 AA 55 AA   ; 26B68 data, read by 20068 2008b
  EB78  .byte D5 EA 75 FD FE 7F BF 5F 2B 15 0A F3 7B B8 5C BC   ; 26B78 data, read by 20068
  EB88  .byte 59 BB 77 00 80 40 A0 40 A0 40 80 AA 89 02 00 7C   ; 26B88 data, read by 20068 2008b
  EB98  .byte FF CF 55 55 6D 05 30 AA AE FE FE 7E 3D C2 F5 7A   ; 26B98 data, read by 20068 2008b
  EBA8  .byte 50 6D 03 01 02 05 82 6F 77 6B 75 6A 7D 6A 75 10   ; 26BA8 data, read by 20068 2008b
  EBB8  .byte 08 14 0A 1D 0E 1D 0A AF 57 8B 45 82 D1 A2 45 50   ; 26BB8 data, read by 20068
  EBC8  .byte A8 F4 FA FD FE FD FA 3A 8D C7 E3 E0 60 E1 C7 05   ; 26BC8 data, read by 20068
  EBD8  .byte 02 6D 03 80 6D 02 F6 E7 C7 C3 33 79 FD 5E 01 6D   ; 26BD8 data, read by 20068 2008b
  EBE8  .byte 06 A0 AA 45 A8 54 AA D4 E2 D4 55 BE 5F BF 5F 2F   ; 26BE8 data, read by 2008b 20068
  EBF8  .byte 1F 2F BD 5C BD 1E 8E DE EE FE 41 A0 41 E0 70 20   ; 26BF8 data, read by 20068
  EC08  .byte 10 00 6B 7F 7F BE D9 E7 EE DD 14 6D 02 80 C0 E0   ; 26C08 data, read by 20068 2008b
  EC18  .byte E1 C2 AB 97 2F 5E BD F3 EE 9D F4 E8 D0 A0 40 00   ; 26C18 data, read by 20068
  EC28  .byte 01 02 CE 9D 7A F4 E8 D5 AB 17 01 02 05 0B 17 2F   ; 26C28 data, read by 20068
  EC38  .byte 5F FF AE 5E AF 17 AF 17 AE 1E 50 A0 50 E8 D0 E8   ; 26C38 data, read by 20068
  EC48  .byte D0 E0 E8 75 7A 75 3A 3D 1F 1F 17 0B 05 0A 05 02   ; 26C48 data, read by 20068
  EC58  .byte 6D 02 7D 02 05 3A 79 7C 7D 7C 01 02 05 02 01 00   ; 26C58 data, read by 20068 2008b
  EC68  .byte 01 00 DA B5 BB 75 6B 77 6B 75 C5 8B 87 0B 17 0F   ; 26C68 data, read by 20068
  EC78  .byte 17 0F 7A 64 E8 53 A2 15 2F 5F 05 1B 17 AF 5F 89   ; 26C78 data, read by 20068
  EC88  .byte 03 2E 5D BA 76 F8 F1 EA D5 89 05 FE FD FA 2E 5C   ; 26C88 data, read by 2008b 20068
  EC98  .byte BC 5D B9 7B F3 E3 D0 A0 40 A0 40 80 6D 04 7F FF   ; 26C98 data, read by 20068 2008b
  ECA8  .byte EA D5 AA 55 6D 04 15 2A 5F BF F6 EE D6 EE F6 CE   ; 26CA8 data, read by 20068 2008b
  ECB8  .byte A6 4E 08 10 28 10 08 30 58 B0 17 0F 17 27 17 0B   ; 26CB8 data, read by 20068
  ECC8  .byte 13 0B 17 0F 1F 2F 1F 0F 17 0F 17 27 17 0B 1B 2B   ; 26CC8 data, read by 20068
  ECD8  .byte 19 3C 1F 2F 17 0F 1F 2F 1F 3F 1C 2E 17 2B 13 0D   ; 26CD8 data, read by 20068
  ECE8  .byte 05 0A 1F 2F 17 2F 17 0F 07 0B 0B 07 0D 15 09 04   ; 26CE8 data, read by 20068
  ECF8  .byte 02 04 0B 07 0F 17 0B 05 03 05 F7 F3 E2 69 68 29   ; 26CF8 data, read by 20068
  ED08  .byte 68 08 F7 F3 E2 61 60 21 60 00 80 C0 C0 C0 E2 E6   ; 26D08 data, read by 20068
  ED18  .byte F6 FE 6D 08 88 CC DC FC FE FE 89 02 6D 08 89 02   ; 26D18 data, read by 20068 2008b
  ED28  .byte CF C7 A7 A3 45 4B 89 02 CF C7 87 83 25 0B 89 03   ; 26D28 data, read by 20068 2008b
  ED38  .byte FE FF E7 D8 E7 89 03 FE FF E7 C0 E8 89 02 87 63   ; 26D38 data, read by 20068 2008b
  ED48  .byte 83 07 0B 17 89 02 87 03 43 87 0B 17 F3 FC FE 89   ; 26D48 data, read by 20068 2008b
  ED58  .byte 02 F8 C7 B8 F0 FD FE 89 02 F8 C0 87 0B E5 03 00   ; 26D58 data, read by 2008b 20068
  ED68  .byte FE 80 00 01 0B 05 83 6D 02 70 80 01 C1 FC C3 BC   ; 26D68 data, read by 20068 2008b
  ED78  .byte C0 89 03 C0 FC C0 83 C0 89 03 00 E1 1E 00 01 81   ; 26D78 data, read by 20068 2008b
  ED88  .byte 63 05 00 01 E0 00 01 01 83 05 FE FD FA F4 E9 F3   ; 26D88 data, read by 20068
  ED98  .byte 89 02 FE FC F9 F2 E5 F3 89 02 05 03 07 C3 11 03   ; 26D98 data, read by 20068 2008b
  EDA8  .byte 05 2B 05 03 07 03 E1 03 05 2B 45 0D 0A 9A B8 FC   ; 26DA8 data, read by 20068
  EDB8  .byte FD FF 65 4D 0B 9B BA FC FD FF 86 06 14 14 34 74   ; 26DB8 data, read by 20068
  EDC8  .byte F0 F9 41 80 12 12 30 70 F4 F9 18 18 08 08 04 14   ; 26DC8 data, read by 20068
  EDD8  .byte 28 50 44 44 C4 84 80 10 28 50 80 40 22 51 23 57   ; 26DD8 data, read by 20068
  EDE8  .byte BF FF 40 20 12 41 23 57 BF FF 09 11 09 11 2A 55   ; 26DE8 data, read by 20068 2003d 20042 2008b
  EDF8  .byte 2A 55 2A 55 2A 09 09 A9 51 A3 43 87 07 0F 00 03   ; 26DF8 data, read by 20068 2008b
  EE08  .byte 07 0F 1F 3F 7F FF 09 09 11 07 09 02 02 06 0E 1E   ; 26E08 data, read by 20068 2008b
  EE18  .byte 3E 7E 00 FC F8 F0 E0 C0 80 00 F8 F0 E0 C0 81 03   ; 26E18 data, read by 20068
  EE28  .byte 07 0F F7 EF DF BE 7C F8 F0 E0 09 04 11 07 09 09   ; 26E28 data, read by 20068 2008b
  EE38  .byte 10 10 30 30 11 03 07 77 77 77 77 09 03 C0 81 03   ; 26E38 data, read by 20068 2008b
  EE48  .byte 07 0F 11 03 3E 7C F8 F0 E0 09 03 FF 1F 3F 7E FC   ; 26E48 data, read by 20068 2008b
  EE58  .byte 11 03 00 DF BE 7D FB 09 03 1F 1D 1D 1D 1C 11 03   ; 26E58 data, read by 20068 2008b
  EE68  .byte E0 E0 E0 E0 E0 09 03 11 04 00 11 03 09 08 F0 0F   ; 26E68 data, read by 20068 2008b
  EE78  .byte 1E 3C 78 11 03 07 EF DE BD 7B 09 04 01 03 07 0F   ; 26E78 data, read by 20068 2008b
  EE88  .byte 11 03 BE 7C F8 F0 E0 09 04 11 03 00 11 03 09 09   ; 26E88 data, read by 20068 2008b
  EE98  .byte 1D 1D 1D 1C 11 03 E0 E0 E0 E0 E0 80 C0 E0 F0 F8   ; 26E98 data, read by 20068 2008b
  EEA8  .byte FC FE FF 7F 3F 1F 0F 07 03 01 00 FF C0 E0 FF F0   ; 26EA8 data, read by 20068
  EEB8  .byte F0 F0 F0 00 7F 7F 7F 7F 7F 7F 7F FF 09 02 FF 09   ; 26EB8 data, read by 20068 2008b
  EEC8  .byte 05 11 07 FE 02 06 FE 0E 0E 0E 0E 00 FC F8 F0 F0   ; 26EC8 data, read by 2008b 20068
  EED8  .byte F0 F0 F0 F0 F0 F0 F0 F0 F0 F0 F0 7F 7F 7F 7F 7F   ; 26ED8 data, read by 20068
  EEE8  .byte 7F 7F 7F 3C 42 81 99 98 80 40 30 FF FD FE E6 EE   ; 26EE8 data, read by 20068
  EEF8  .byte FE FD C3 09 08 AA 55 2A 15 0A 05 02 01 09 08 80   ; 26EF8 data, read by 20068 2008b
  EF08  .byte 40 A0 50 A8 54 AA 55 09 08 80 00 BF 2F B6 38 B8   ; 26F08 data, read by 20068 2008b
  EF18  .byte 31 AA 55 AA 55 AA 55 AA 55 09 08 54 28 50 20 41   ; 26F18 data, read by 20068 2008b
  EF28  .byte 07 1F 7F 01 03 07 0F 1F 3F 7F 7F 0F 1F 1F 7F 11   ; 26F28 data, read by 20068
  EF38  .byte 0C 00 01 03 07 0F 1F 3F 7F FE FC F8 F0 E0 C0 80   ; 26F38 data, read by 2008b 20068
  EF48  .byte 00 FE FE FE FE FE FE FE FE 09 08 F8 F0 E0 C0 81   ; 26F48 data, read by 20068 2008b
  EF58  .byte 05 0D 1D F7 EF 5F 3E 7C F8 F0 E0 1F 3F 7F 11 02   ; 26F58 data, read by 20068 2008b
  EF68  .byte FE FC F8 C0 80 09 03 01 03 07 F0 E0 C0 80 09 04   ; 26F68 data, read by 20068 2008b
  EF78  .byte 0F 1F 3F 7F 11 03 FE 70 70 70 70 70 30 50 E0 77   ; 26F78 data, read by 20068 2008b
  EF88  .byte 77 77 77 77 37 57 E7 11 08 09 10 11 09 7F 3F 1F   ; 26F88 data, read by 20068 2008b
  EF98  .byte 0F 07 03 01 00 80 C0 E0 F0 F8 FC FE 09 08 FE FD   ; 26F98 data, read by 20068 2008b
  EFA8  .byte FA F5 EA D5 AA 55 F0 F0 F0 F0 F5 EA D5 FF 7F 7F   ; 26FA8 data, read by 20068
  EFB8  .byte 7F 7F 70 60 40 09 05 55 AA 55 11 05 09 04 0E 0E   ; 26FB8 data, read by 20068 2008b
  EFC8  .byte 0E 0E 56 AA 54 FF F0 F0 F0 F0 08 04 02 00 0E 0E   ; 26FC8 data, read by 20068
  EFD8  .byte 0E 0E 0E 0E 0E 0E F0 F0 F0 F0 F0 F0 F0 F0 09 08   ; 26FD8 data, read by 20068 2008b
  EFE8  .byte 42 C2 22 12 1A 3E FE 01 09 02 FF 09 02 FF 09 02   ; 26FE8 data, read by 20068 2008b
  EFF8  .byte 11 05 00 11 02 24 24 24 24 24 24 24 24 FB FB FB   ; 26FF8 data, read by 20068 2008b
  F008  .byte FB FB FB FB FB 09 09 FF 87 0F 1E 3C FF 09 0A 7F   ; 27008 data, read by 20068 2008b
  F018  .byte 4F 5F 6E 74 73 63 00 02 02 06 0E 0E 06 C2 00 FE   ; 27018 data, read by 20068
  F028  .byte 0E 1E 3E 6E C6 02 09 08 AA 55 AA 55 AA 55 AA 55   ; 27028 data, read by 20068 2008b
  F038  .byte 2A 55 2A 55 2A 55 2A 55 7F 7F 7F 7F 7F 7F 7F 7F   ; 27038 data, read by 20068
  F048  .byte AA 55 AB 57 AF 5F BF 7F FE FC F8 F0 E0 C0 80 09   ; 27048 data, read by 20068
  F058  .byte 02 2A 55 2A 55 2A 55 2A 09 08 1D 1D 1D 1D 1D 1D   ; 27058 data, read by 2008b 20068
  F068  .byte 1D 1C E0 E0 E0 E0 E0 E0 E0 E0 F8 F8 F8 F8 F8 F8   ; 27068 data, read by 20068
  F078  .byte F8 00 07 07 07 07 07 07 07 00 01 03 07 0F 1F 3F   ; 27078 data, read by 20068
  F088  .byte 7E FC FD FB F7 EF DF BE 7D FB 00 C3 87 0F 1E FF   ; 27088 data, read by 20068
  F098  .byte 09 02 FF C3 87 0F 1E 00 11 02 09 02 87 0F 1E 3C   ; 27098 data, read by 20068 2008b
  F0A8  .byte 09 02 11 02 87 0F 1E 3C FF 00 73 7B 3B 1B 0B 03   ; 270A8 data, read by 20068 2008b
  F0B8  .byte 43 63 F4 FC BC 9C 8C 84 C4 E4 E0 F0 F8 FC DC CC   ; 270B8 data, read by 20068
  F0C8  .byte C4 C0 22 32 3A 3E 1E 0E 06 02 00 07 0F 0E 04 00   ; 270C8 data, read by 20068
  F0D8  .byte 40 60 FF C7 AF 9E 8C 87 C7 E7 80 C0 E7 CF C6 C0   ; 270D8 data, read by 20068
  F0E8  .byte C0 C0 7F 3F 07 1F 0E 04 02 01 E0 70 98 0C 14 38   ; 270E8 data, read by 20068
  F0F8  .byte 09 02 22 B2 9A 0E 16 3A FE 09 09 A7 2F BF 3D B9   ; 270F8 data, read by 20068 2008b
  F108  .byte 31 A1 23 77 BF 9F 0F 17 F7 03 01 70 B8 98 08 10   ; 27108 data, read by 20068
  F118  .byte 08 FC FE 00 C4 88 10 20 09 03 FE C5 8B 17 2D F9   ; 27118 data, read by 20068 2008b
  F128  .byte F1 A1 09 08 AA 55 AB 57 AF 5F BF 7F 09 02 03 07   ; 27128 data, read by 20068 2008b
  F138  .byte 0E 1C 09 02 45 4F 5B 77 6E 5C 7F 09 02 01 03 07   ; 27138 data, read by 20068 2008b
  F148  .byte 0E 1F 09 02 A7 2D BB 37 AE 20 BF 7F 09 08 46 4F   ; 27148 data, read by 20068 2008b
  F158  .byte 5E 7F 7A 73 62 43 09 02 87 0F 1E 3C 09 03 FF 87   ; 27158 data, read by 20068 2008b
  F168  .byte 0F 1E 3C 11 02 09 02 87 0F 1E 3C FF 00 11 02 87   ; 27168 data, read by 20068 2008b
  F178  .byte 0F 1E 3C 09 04 8C 18 30 60 C0 00 FF FE 8C 1A 36   ; 27178 data, read by 20068 2008b
  F188  .byte 6A D2 22 09 0A FF 1E 3C 78 F0 FF 09 08 A7 2F DF   ; 27188 data, read by 20068 2008b
  F198  .byte 0F 35 79 F9 FF 01 03 01 03 03 03 03 A3 09 02 FE   ; 27198 data, read by 20068 2008b
  F1A8  .byte 8A 12 22 C2 E2 2A 55 2B 57 2F 5F 3F 00 7E 7C 78   ; 271A8 data, read by 20068
  F1B8  .byte 70 60 40 09 02 11 07 09 09 1B 1B 17 14 1F 09 03   ; 271B8 data, read by 20068 2008b
  F1C8  .byte E0 E0 E0 E3 E0 11 03 F1 C1 09 02 FF 09 03 0E 3E   ; 271C8 data, read by 20068 2008b
  F1D8  .byte 11 02 00 11 03 F8 F0 E0 C0 80 05 0D 0D F7 EF 5F   ; 271D8 data, read by 20068 2008b
  F1E8  .byte 3E 7C F8 F0 F0 09 06 7F 7F 11 08 09 02 20 30 38   ; 271E8 data, read by 20068 2008b
  F1F8  .byte 3C FE 11 11 01 03 07 0F 1F 3F 03 03 BF DF EF F7   ; 271F8 data, read by 20068 2008b
  F208  .byte FB FD C1 DF 80 C0 E0 F0 F8 FC C0 C0 00 03 03 03   ; 27208 data, read by 20068
  F218  .byte 03 03 03 03 AA 57 AB 57 AB 57 AB 57 00 C0 C0 C0   ; 27218 data, read by 20068
  F228  .byte C0 C0 C0 C0 AA D5 EA D5 EA D5 EA D5 09 02 04 0C   ; 27228 data, read by 20068 2008b
  F238  .byte 1C 3C 7F FF 09 02 04 0C 1C 3C 7F FF 09 06 FE FE   ; 27238 data, read by 20068 2008b
  F248  .byte 09 06 FE FE 70 30 10 F0 09 04 11 08 0E 0E 0C 0F   ; 27248 data, read by 20068 2008b
  F258  .byte 09 04 F0 F1 F3 F7 11 04 77 7E 38 17 0E 1C 38 00   ; 27258 data, read by 20068 2008b
  F268  .byte F0 FC BB 97 8E 9C B8 FF E0 F0 F8 F0 C0 C0 C0 80   ; 27268 data, read by 20068
  F278  .byte 22 33 3F 3F 1E 3C 3F 00 FF FE FC F8 F0 E0 C0 80   ; 27278 data, read by 20068
  F288  .byte 09 08 01 03 07 0F 1F 3F 7F FF 09 08 7F 7F 09 06   ; 27288 data, read by 20068 2008b
  F298  .byte 11 02 80 11 06 FE 3C 38 30 20 09 02 FF FE 3D FB   ; 27298 data, read by 20068 2008b
  F2A8  .byte F7 EF DF 11 08 FE 03 03 03 03 03 03 03 00 DF DF   ; 272A8 data, read by 20068 2008b
  F2B8  .byte DF DF DF DF DF 1F C0 C0 C0 C0 C0 C0 C0 00 03 03   ; 272B8 data, read by 20068
  F2C8  .byte 3F 1F 0F 07 03 01 AB 57 BF 5F AF 57 AB 55 C0 C0   ; 272C8 data, read by 20068
  F2D8  .byte FC F8 F0 E0 C0 80 EA D5 FE FD FA F5 EA D5 FF 7F   ; 272D8 data, read by 20068
  F2E8  .byte 3C 1C 0C 04 09 02 FF 7F 3C 1C 0C 04 09 02 FE FE   ; 272E8 data, read by 20068 2008b
  F2F8  .byte 09 06 FE FE 09 0A A0 50 B0 F0 11 04 0F 1F 3F 7F   ; 272F8 data, read by 20068 2008b
  F308  .byte 09 04 05 0A 0D 0E 11 04 F0 F0 F0 F0 80 80 80 80   ; 27308 data, read by 20068 2008b
  F318  .byte 81 83 87 8F 7F 7F 7F 7E 7C 78 70 60 4A B5 6A F5   ; 27318 data, read by 20068
  F328  .byte EA F5 EA F4 80 09 05 01 03 A8 50 A8 48 98 18 18   ; 27328 data, read by 20068 2008b
  F338  .byte 78 07 0F 1F 3F 7F 11 03 09 02 02 06 0E 1E 3E 7E   ; 27338 data, read by 20068 2008b
  F348  .byte FE FC F8 F0 E0 C0 80 00 DF BF 80 80 80 80 80 81   ; 27348 data, read by 20068
  F358  .byte 09 03 7F 7F 7F 7E 7C E9 E7 09 03 40 C0 C0 07 0F   ; 27358 data, read by 20068 2008b
  F368  .byte 1F DF 9F 1F 1F 1F F8 F9 03 01 06 0D 1E 3D FE FC   ; 27368 data, read by 20068
  F378  .byte FC F8 F0 E0 C0 80 FE FE FE 55 AA 54 A8 51 09 05   ; 27378 data, read by 20068 2008b
  F388  .byte 01 03 07 03 07 0F 1F 3F D5 AA D5 F8 F0 E0 C0 80   ; 27388 data, read by 20068
  F398  .byte 09 03 C0 C0 C1 C3 C7 4F A0 40 1F 1E 1C 18 10 09   ; 27398 data, read by 20068 2008b
  F3A8  .byte 02 7F FE FD FE FD FE FC 00 10 09 05 01 03 E3 A1   ; 273A8 data, read by 2008b 20068
  F3B8  .byte 41 83 07 1F 7F 01 03 0F 1F 3F 7F 11 02 FC F8 AA   ; 273B8 data, read by 20068 2008b
  F3C8  .byte D4 A8 D0 A1 C1 87 9F 00 01 03 07 0F 1F 3F 7F 40   ; 273C8 data, read by 20068
  F3D8  .byte 40 C0 C0 C1 C3 C7 DF 11 03 FE FC F8 F0 E0 18 38   ; 273D8 data, read by 20068 2008b
  F3E8  .byte 78 F8 F8 F8 F9 F8 C3 83 03 03 03 02 09 02 07 0F   ; 273E8 data, read by 20068 2008b
  F3F8  .byte 1F 3F 7F 11 02 00 F0 E0 C0 80 09 04 24 2D 24 10   ; 273F8 data, read by 20068 2008b 2003d 20042
  F408  .byte 57 8F 57 8D 54 8C 54 8C E8 F3 EB F3 EB F3 EB F3   ; 27408 data, read by 20068
  F418  .byte 2D 04 7F 3F 0F 07 2D 18 80 C1 C0 C1 90 91 90 99   ; 27418 data, read by 20068 2008b
  F428  .byte 7F BE BF DE 8F 8E 8F 86 AB 57 AB 57 AB 57 AB 57   ; 27428 data, read by 20068
  F438  .byte 54 A8 54 A8 54 A8 54 A8 AB 6A 55 2A 5F 29 50 28   ; 27438 data, read by 20068
  F448  .byte 00 3F 2D 02 AF D7 AF D7 E1 F1 71 B1 5D FF 3F 0F   ; 27448 data, read by 20068 2008b
  F458  .byte 1E 0E 8E EE F2 FC FE FF AA D4 AA D4 AA D4 AA D4   ; 27458 data, read by 20068
  F468  .byte 24 08 D8 68 B8 58 AC 54 FE FE 67 97 E7 F7 FB FB   ; 27468 data, read by 20068 2008b
  F478  .byte FD FD 01 24 07 2D 09 6F 55 2A 55 2A 55 2A FF 87   ; 27478 data, read by 20068 2008b
  F488  .byte 80 80 80 80 80 80 18 1D 1C 07 01 87 2D 02 07 02   ; 27488 data, read by 20068 2008b
  F498  .byte 03 78 FE 7F 1F 07 AB 57 AB 57 AA D6 AA D6 54 A8   ; 27498 data, read by 20068
  F4A8  .byte 54 A9 55 29 55 A9 50 E8 F8 FE 7F 3F 1F 0F AF 17   ; 274A8 data, read by 20068
  F4B8  .byte E7 F9 FE 2D 03 03 02 01 02 01 82 C1 E2 FF FD FE   ; 274B8 data, read by 20068 2008b
  F4C8  .byte FD FE 7D BE DD AB BD BA F5 AA EF A7 E1 00 03 0F   ; 274C8 data, read by 20068
  F4D8  .byte 1F 1F 1F 1F 1F 7C 39 35 29 35 29 35 A9 F9 F0 C0   ; 274D8 data, read by 20068
  F4E8  .byte C0 C0 C0 C0 40 24 02 80 80 C0 C0 E0 E0 2D 02 7F   ; 274E8 data, read by 20068 2008b
  F4F8  .byte 7F 3F 3F 1F 1F 50 35 AA F5 FE FF BF 9F 80 9F 7F   ; 274F8 data, read by 20068
  F508  .byte 7F 7F 7F 7F 7F F5 7A BD 56 AB F5 2D 02 0A 85 E2   ; 27508 data, read by 20068 2008b
  F518  .byte F9 FE 2D 03 2A B6 2C B4 3C FC FC FC 15 09 13 0B   ; 27518 data, read by 20068 2008b
  F528  .byte 03 03 C3 FB 2F 17 2B 15 2B 15 2A 14 DF EF D7 EA   ; 27528 data, read by 20068
  F538  .byte D4 EB D5 EB F9 FE 2D 03 FE FF 3F E6 F9 FE FF 01   ; 27538 data, read by 20068 2008b
  F548  .byte 2D 03 A0 E0 A0 E0 F8 7E 9D E9 1F 1F 1F 9F E7 F9   ; 27548 data, read by 20068 2008b
  F558  .byte FC F8 B5 A9 F5 E9 F5 69 B5 59 40 40 24 02 80 C0   ; 27558 data, read by 20068 2008b
  F568  .byte E0 F0 F0 F7 2D 03 DF C7 C1 0F 08 07 3F 3F 3F 3F   ; 27568 data, read by 20068 2008b
  F578  .byte 3F 87 83 81 C0 F0 F8 FE FF 7F 7F 7F BF CF F7 F9   ; 27578 data, read by 20068
  F588  .byte FE 2D 05 DF CF C7 2D 03 01 00 3E 3F 3F FE 2D 04   ; 27588 data, read by 20068 2008b
  F598  .byte C7 E3 F8 FD FE 2D 02 3F 3F 2D 02 2A 14 AA D4 EA   ; 27598 data, read by 20068 2008b
  F5A8  .byte FC FE FF D5 EB 55 AB D5 E3 FD FE 1F 2F 17 0A 15   ; 275A8 data, read by 20068
  F5B8  .byte 0A 15 0A FF D7 EB F5 EA F5 EA F5 F5 E9 D5 A9 54   ; 275B8 data, read by 20068
  F5C8  .byte AB 5A 95 F0 E0 C0 80 81 07 8F 3F AD FD 2D 02 7F   ; 275C8 data, read by 20068 2008b
  F5D8  .byte FF 7F FF F8 FC FE 2D 05 C0 C0 C0 C0 E0 F8 2D 02   ; 275D8 data, read by 20068 2008b
  F5E8  .byte 3F 3F 3F 3F 9F E7 F8 E0 7F 3F 0F 07 01 24 03 2D   ; 275E8 data, read by 20068 2008b
  F5F8  .byte 08 C1 E0 F8 E4 FA F9 82 D4 3F DF E7 FB FD FE 78   ; 275F8 data, read by 2008b 20068
  F608  .byte 00 FE FF BF 57 AA 55 AA D5 2D 02 7F AF 55 AA 55   ; 27608 data, read by 20068 2008b
  F618  .byte 2A 3F 2D 02 FE F5 6A B5 6A FF 87 E0 FC F0 80 40   ; 27618 data, read by 20068 2008b
  F628  .byte 80 85 0A 05 0A 05 0A 05 0A 7A 75 7A 75 7A 75 7A   ; 27628 data, read by 20068
  F638  .byte 75 FF 9F 87 83 80 80 80 80 3F 7F 7F 7F 7F 7F 7F   ; 27638 data, read by 20068
  F648  .byte 7F 7F BF 7F BF 5F 9F 57 8B FF FE F8 C1 E7 FF EF   ; 27648 data, read by 20068
  F658  .byte F7 2D 07 FE 0F 3F 2D 06 C0 A0 A0 A0 48 28 48 A8   ; 27658 data, read by 20068 2008b
  F668  .byte 3F DF DF CF 87 87 87 07 AA D5 AA D5 AA 55 A9 AA   ; 27668 data, read by 20068
  F678  .byte 24 06 03 7F 6A 55 6A 75 6A 75 7A BD 15 2A 15 0A   ; 27678 data, read by 20068 2008b
  F688  .byte 15 0A 85 E2 B5 6A B5 6A B5 6A B5 6A 40 80 40 80   ; 27688 data, read by 20068
  F698  .byte 40 80 40 80 45 42 65 62 75 72 7D 7A 3A 3D 1A 1D   ; 27698 data, read by 20068
  F6A8  .byte 0A 0D 02 05 80 80 80 80 80 80 80 80 7F 7F 7F 7F   ; 276A8 data, read by 20068
  F6B8  .byte 7F 7F 7F 7F 55 8A 55 8A 55 8A 55 8A EA F5 EA F5   ; 276B8 data, read by 20068
  F6C8  .byte EA F5 EA F5 FE FE 5E AC 57 AA 57 AA FF 7F BF 56   ; 276C8 data, read by 20068
  F6D8  .byte A8 54 A8 54 4C AC 4C AC 54 A6 56 A6 03 03 03 03   ; 276D8 data, read by 20068
  F6E8  .byte 03 01 01 01 D5 AA 95 8A 85 82 85 82 7F 7F 7F 7F   ; 276E8 data, read by 20068
  F6F8  .byte 7F 7F 7F 7F 56 AF 5F BF 7F BF 7F FF F9 FE 2D 06   ; 276F8 data, read by 20068 2008b
  F708  .byte B5 EA F5 AF AF A7 D7 D3 41 07 8F DF DF DF EF EF   ; 27708 data, read by 20068
  F718  .byte 7D AE 55 AB 2D 04 C2 F9 FE 2D 05 80 80 80 C0 E0   ; 27718 data, read by 20068 2008b
  F728  .byte E0 F0 F8 7F 7F 7F BF DF DF EF F7 55 8A 55 8A 55   ; 27728 data, read by 20068
  F738  .byte 8B 57 9F EA F5 EA F5 EA F4 EB E7 57 AA 5F BF 2D   ; 27738 data, read by 20068
  F748  .byte 04 A8 54 A3 4F 3F 2D 03 56 A6 56 E7 F7 2D 03 01   ; 27748 data, read by 2008b 20068
  F758  .byte 01 01 C0 E0 F8 FC FE 81 81 80 81 80 81 80 81 7F   ; 27758 data, read by 20068
  F768  .byte 7E 7F 7E 7F 7E 7F 7E FF 7F BF 5F AB 55 AB 55 2D   ; 27768 data, read by 20068
  F778  .byte 02 7F AF 57 AA 54 AA EB F2 EA D3 CB 13 AB 53 F4   ; 27778 data, read by 2008b 20068
  F788  .byte F9 F1 E0 E0 C0 24 02 2D 02 3F 1F 0F 83 81 C1 01   ; 27788 data, read by 20068 2008b
  F798  .byte FE 2D 03 7F 7F 3F FC FC CE E7 F2 F4 EA D4 FB 3B   ; 27798 data, read by 20068 2008b
  F7A8  .byte FD FE F8 E0 80 00 D7 2F D7 2F D4 6E 54 2E 28 53   ; 277A8 data, read by 20068
  F7B8  .byte 2B 51 2B 11 2B 11 5C 2A 5C 6A 94 8E 82 82 23 15   ; 277B8 data, read by 20068
  F7C8  .byte 23 15 6B 71 7D 7D 05 89 55 A9 55 A9 55 A9 78 30   ; 277C8 data, read by 20068
  F7D8  .byte 24 06 55 A9 55 A9 55 29 55 29 24 06 20 10 AA D4   ; 277D8 data, read by 20068 2008b
  F7E8  .byte AA D4 AA D4 AA D4 24 08 A8 D8 B0 E8 B2 EC B8 EC   ; 277E8 data, read by 20068 2008b
  F7F8  .byte 24 02 08 14 08 10 00 10 BC E8 BC 68 BC 42 80 C2   ; 277F8 data, read by 20068 2008b
  F808  .byte 00 10 00 90 E0 F8 FC F8 A4 48 94 A8 54 AA 50 A2   ; 27808 data, read by 20068
  F818  .byte F0 E0 C0 80 80 04 8C 1C 82 C2 A9 D5 AB D7 AF D6   ; 27818 data, read by 20068
  F828  .byte 3C 3C 56 2A 54 28 50 28 AC D6 AC D2 AC D2 AC D3   ; 27828 data, read by 20068
  F838  .byte 50 28 50 28 50 28 50 28 AD D3 AC 52 A8 76 B8 CE   ; 27838 data, read by 20068
  F848  .byte 50 28 50 A8 D4 C8 E4 F0 A4 C6 C0 A2 C2 B6 E2 C2   ; 27848 data, read by 20068
  F858  .byte F8 38 FC FC F8 E0 80 00 3F FF FC FB FF FC 54 8C   ; 27858 data, read by 20068
  F868  .byte 00 3F 2D 02 FB F3 EB F3 F8 7F 2D 04 3F 07 00 F8   ; 27868 data, read by 20068 2008b
  F878  .byte 2D 06 21 2D 07 00 21 2D 06 F0 BF BF DF DF DF 93   ; 27878 data, read by 20068 2008b
  F888  .byte 99 00 F0 2D 03 CF 8F 86 E7 FD FD FE FE FE EA 56   ; 27888 data, read by 20068 2008b
  F898  .byte 00 E7 2D 03 FC D4 A8 FC 2D 04 3F 57 28 00 FC 2D   ; 27898 data, read by 20068 2008b
  F8A8  .byte 04 AF D7 7F DF EF EF F3 FD FE 7F 00 7F 2D 06 E3   ; 278A8 data, read by 2008b 20068
  F8B8  .byte 2D 03 FE F4 EA D4 00 E3 2D 02 FC F0 C0 00 C4 C4   ; 278B8 data, read by 20068 2008b
  F8C8  .byte C4 C5 F5 FC FF 9F 08 08 08 09 39 7D 7F 6F F5 FA   ; 278C8 data, read by 20068
  F8D8  .byte F5 FA FF 7F 3F 1E 24 02 80 F0 FE FF DF EF CF EF   ; 278D8 data, read by 20068 2008b
  F8E8  .byte 2D 02 7F FF 7F 5F F7 F3 F0 FC 7E 3F BF BF C0 80   ; 278E8 data, read by 20068 2008b
  F8F8  .byte 00 80 1C FE 5E 4E DF 9F 1F 3F 7F BF 3F 37 AB 95   ; 278F8 data, read by 20068
  F908  .byte AF 97 AF F1 F8 BC 54 6A 57 6F 57 6F 7F FF 28 18   ; 27908 data, read by 20068
  F918  .byte A8 F8 F0 F8 FC 7E D7 E0 D0 E0 F8 FC FE FF 46 06   ; 27918 data, read by 20068
  F928  .byte 16 9E BE BE 9F 9F 3E F8 F8 78 7C 7E 7F 7F 54 4C   ; 27928 data, read by 20068
  F938  .byte 54 5C 1C BE FF EF 29 31 29 31 F9 7F 1F 9F CC C6   ; 27938 data, read by 20068
  F948  .byte C6 C6 8E CF 8F C6 2D 02 F9 F9 39 3F 3F 3E 7F 7F   ; 27948 data, read by 20068 2008b
  F958  .byte 7E 68 50 68 50 40 2D 02 BF 87 80 80 80 B8 CF C7   ; 27958 data, read by 20068 2008b
  F968  .byte CB C7 4B 47 4B 47 BF BF B7 B8 B4 B8 B4 B8 E3 E1   ; 27968 data, read by 20068
  F978  .byte D0 90 18 18 1C 1C DF FF CF 8F 07 07 03 03 86 C4   ; 27978 data, read by 20068
  F988  .byte C4 E4 F4 F4 E4 C4 3A 38 F8 F8 F8 F8 E8 48 0C 1E   ; 27988 data, read by 20068
  F998  .byte 7F FF F7 FA F5 FA FC FE 2D 02 07 24 03 BB 2D 02   ; 27998 data, read by 20068 2008b
  F9A8  .byte BF 9F 9F 4F C7 74 7C 7E 2D 02 7F 3F 3F 06 00 0F   ; 279A8 data, read by 20068 2008b
  F9B8  .byte 3F 87 83 80 C0 39 7F 2D 06 06 FC 02 80 F8 0C 80   ; 279B8 data, read by 20068 2008b
  F9C8  .byte E0 01 02 01 60 04 82 60 10 24 08 E0 1C 02 02 01   ; 279C8 data, read by 20068 2008b
  F9D8  .byte 01 01 01 2D 03 FE FC F8 FE F8 24 03 01 00 07 00   ; 279D8 data, read by 20068 2008b
  F9E8  .byte 04 CE 80 80 C0 30 08 80 00 01 00 40 30 08 24 0C   ; 279E8 data, read by 20068 2008b
  F9F8  .byte 80 01 01 00 04 02 03 00 10 18 09 0D 0D 1F 3F 01   ; 279F8 data, read by 20068
  FA08  .byte 11 19 89 CD CD CF EF 07 00 80 F0 00 C0 60 00 80   ; 27A08 data, read by 20068
  FA18  .byte 00 60 08 80 20 24 02 2D 08 24 09 04 0C 06 07 27   ; 27A18 data, read by 20068 2008b
  FA28  .byte 2F 3F 19 0D 0D 87 47 67 2F 3F FF F8 FC 80 80 F0   ; 27A28 data, read by 20068
  FA38  .byte 18 24 03 02 01 70 08 04 80 24 08 80 40 24 03 04   ; 27A38 data, read by 20068 2008b
  FA48  .byte 06 02 00 01 01 01 01 91 59 7B 03 23 33 11 19 99   ; 27A48 data, read by 20068
  FA58  .byte 58 7A 90 30 38 0A 06 07 01 01 FF 7F 3F 8F 07 07   ; 27A58 data, read by 20068
  FA68  .byte 01 C1 C0 B0 FE E3 C0 80 FC 3F 24 09 80 E0 F0 F8   ; 27A68 data, read by 20068 2008b
  FA78  .byte 04 80 C0 81 60 10 08 04 00 40 20 C0 24 05 01 01   ; 27A78 data, read by 20068 2008b
  FA88  .byte 24 09 01 21 31 19 19 1D 1F 03 03 21 31 19 19 1D   ; 27A88 data, read by 20068 2008b
  FA98  .byte 9F 24 09 80 24 03 04 02 82 24 05 04 04 C5 24 02   ; 27A98 data, read by 20068 2008b
  FAA8  .byte 10 18 48 4C 4C ED FF BF 5F AB 5F EF 1B 58 FC 59   ; 27AA8 data, read by 20068
  FAB8  .byte A7 54 A7 17 E7 F7 2D 08 3C 2D 02 7F 87 F8 2D 02   ; 27AB8 data, read by 20068 2008b
  FAC8  .byte 3F 07 24 02 80 C0 60 00 2D 04 7F 3F 1F 00 5A D5   ; 27AC8 data, read by 20068 2008b
  FAD8  .byte AB F7 A0 61 80 01 47 CF 9F 9F 1F 1E 1F 1E 2D 03   ; 27AD8 data, read by 20068 2008b
  FAE8  .byte D5 AA 55 AA 40 2D 03 EA 55 AA 55 80 C7 E2 A1 72   ; 27AE8 data, read by 20068 2008b
  FAF8  .byte B9 5A 8D 00 BF DD DE 8D 46 85 02 01 B4 74 B4 7C   ; 27AF8 data, read by 20068
  FB08  .byte BC 7C 08 00 0B 0B 0B 03 03 03 03 00 AA 1F 03 05   ; 27B08 data, read by 20068
  FB18  .byte 02 05 02 05 2D 03 FA FD FA FD 1A BC FE FE FF BB   ; 27B18 data, read by 20068 2008b
  FB28  .byte 55 A8 50 FB FD FD FC 58 A0 50 A0 01 00 01 02 00   ; 27B28 data, read by 20068
  FB38  .byte 0C 1A 1C 02 1C 22 40 40 0C 9A 9C 00 01 C7 3F 40   ; 27B38 data, read by 20068
  FB48  .byte 81 07 0F 01 C6 38 40 81 06 08 10 17 15 01 02 02   ; 27B48 data, read by 20068
  FB58  .byte 00 42 46 97 95 81 82 92 B0 E2 E6 01 01 81 89 90   ; 27B58 data, read by 20068
  FB68  .byte 38 38 10 32 02 84 88 90 38 38 10 2D 02 87 0F 3F   ; 27B68 data, read by 20068 2008b
  FB78  .byte E1 03 07 24 02 08 10 40 02 04 08 10 00 80 80 80   ; 27B78 data, read by 20068 2008b
  FB88  .byte E0 E0 E0 D0 80 80 8C 98 F0 F1 F7 0F 0C 10 20 60   ; 27B88 data, read by 20068
  FB98  .byte 40 00 01 10 00 10 20 60 40 00 01 07 0F 18 20 41   ; 27B98 data, read by 20068
  FBA8  .byte 03 00 80 08 10 20 41 02 04 08 01 03 67 C6 CD C0   ; 27BA8 data, read by 20068
  FBB8  .byte 80 80 90 03 67 C6 CD C0 87 8E 9C 40 80 80 08 18   ; 27BB8 data, read by 20068
  FBC8  .byte 14 38 30 43 82 80 08 18 14 38 30 FF 1F 3F 7F 07   ; 27BC8 data, read by 20068
  FBD8  .byte 08 01 03 00 20 40 80 08 10 22 04 A0 98 B0 B0 E0   ; 27BD8 data, read by 20068
  FBE8  .byte E0 E0 F1 A0 98 B0 B0 E2 E6 EC FD 00 20 60 D0 98   ; 27BE8 data, read by 20068
  FBF8  .byte 30 A1 A3 0C 20 60 D0 98 30 A1 A3 1F 31 40 81 07   ; 27BF8 data, read by 20068
  FC08  .byte 0F 18 80 20 40 80 02 08 10 00 81 07 4C 88 90 24   ; 27C08 data, read by 20068
  FC18  .byte 02 10 38 07 4C 88 90 00 02 1C 38 24 02 30 78 F0   ; 27C18 data, read by 2008b 20068
  FC28  .byte A2 06 0C 02 04 30 78 F0 A2 06 8C 64 60 40 C0 80   ; 27C28 data, read by 20068
  FC38  .byte 80 24 02 FF FE F8 F0 E0 C0 80 80 07 01 0E 3F 0F   ; 27C38 data, read by 20068 2008b
  FC48  .byte 07 3F FF 24 08 80 D0 28 94 D8 98 94 AA 24 02 C0   ; 27C48 data, read by 20068 2008b
  FC58  .byte E0 E0 E0 C0 24 03 84 86 8E CE 2D 0B 73 73 61 21   ; 27C58 data, read by 20068 2008b
  FC68  .byte 01 24 02 2D 09 F3 F3 63 61 21 01 00 2D 08 24 02   ; 27C68 data, read by 20068 2008b
  FC78  .byte 04 8C 8E 8E DF 2D 09 00 21 31 71 73 7B 2D 0B EF   ; 27C78 data, read by 20068 2008b
  FC88  .byte CE C6 86 80 24 02 2D 09 CF CF 8F 86 86 24 02 2D   ; 27C88 data, read by 20068 2008b
  FC98  .byte 08 00 10 39 39 7D 7F 7F 2D 09 80 E0 F0 F8 FC 7E   ; 27C98 data, read by 2008b 20068
  FCA8  .byte 9F EF 00 80 E0 F0 F8 FC FE FE F6 F9 1E 0D 0A 0F   ; 27CA8 data, read by 20068
  FCB8  .byte 0D 1A FE FC F8 F0 F0 F0 F3 EF 80 80 80 80 80 80   ; 27CB8 data, read by 20068
  FCC8  .byte 80 C0 24 07 80 35 4B 57 4F 47 C3 45 63 DF BF BF   ; 27CC8 data, read by 20068 2008b
  FCD8  .byte BF BF 3F BA DC 70 F8 FC FC F4 EC F4 EC C0 F0 F8   ; 27CD8 data, read by 20068
  FCE8  .byte F8 F0 80 24 02 75 7B 3D 5F 3F 5F 2F 5E EA F4 FA   ; 27CE8 data, read by 20068 2008b
  FCF8  .byte FC FE 2D 03 F4 EC F4 EC F4 EC F4 EC 24 08 2D 06   ; 27CF8 data, read by 20068 2008b
  FD08  .byte FE 38 24 08 01 03 07 0F 1F 3F 5F 4F 00 01 03 07   ; 27D08 data, read by 20068 2008b
  FD18  .byte 0F 03 3C 3F 47 41 41 82 85 81 85 82 3F 3F 3E 7D   ; 27D18 data, read by 20068
  FD28  .byte 7A 7D 7A 7D 24 04 03 0F 1F 3F 24 05 03 0F 1F 85   ; 27D28 data, read by 20068 2008b
  FD38  .byte 8B 85 8A C5 FA FD FE 7A 74 7A 75 3A C5 F2 FD 7F   ; 27D38 data, read by 20068
  FD48  .byte 4F 43 40 40 40 40 40 3F 3F 3F 3F 3F 3F 3F 3F 2D   ; 27D48 data, read by 20068
  FD58  .byte 04 3F 3F 3F 3F FE FC F8 E0 C0 C0 C0 C0 C0 C0 C0   ; 27D58 data, read by 2008b 20068
  FD68  .byte C0 C0 C0 CF FF 3F 3F 3F 3F 3F 3F 20 1F 3A 34 6A   ; 27D68 data, read by 20068
  FD78  .byte 54 4E 46 4A E5 C7 DF BF BF B7 BB B5 1A 7F FF BF   ; 27D78 data, read by 20068
  FD88  .byte 9F 87 81 80 80 3F 7F 7F 7F 7F 7F 7F 7F FA FD FE   ; 27D88 data, read by 20068
  FD98  .byte FF FE FD 7A 77 E5 FA FD FE FE F8 E0 80 80 80 80   ; 27D98 data, read by 20068
  FDA8  .byte 81 81 81 81 81 7F 7F 7F 7E 7E 7E 7E 7E 7C 6A D4   ; 27DA8 data, read by 20068
  FDB8  .byte AE 7C 3E 16 0A 87 9F 7F 2D 03 EF F5 81 81 81 81   ; 27DB8 data, read by 20068 2008b
  FDC8  .byte 81 81 81 81 7E 7E 7E 7E 7E 7E 7E 7E 15 0A 15 0A   ; 27DC8 data, read by 20068
  FDD8  .byte 15 0A 15 0A EA F5 EA F5 EA F5 EA F5 24 04 1F 3F   ; 27DD8 data, read by 20068 2008b
  FDE8  .byte 7F FF 24 05 1F 3F 7F 24 05 C0 F0 F8 24 06 C0 F0   ; 27DE8 data, read by 20068 2008b
  FDF8  .byte 9F 8F 83 81 80 80 80 80 7F 7F 7F 7F 7F 7F 7F 7F   ; 27DF8 data, read by 20068
  FE08  .byte FE 2D 04 5F AE 57 FC FE 2D 03 BF 56 A8 24 02 80   ; 27E08 data, read by 20068 2008b
  FE18  .byte C0 E0 E0 A0 67 24 03 80 C0 80 24 02 BF BF 9F 9F   ; 27E18 data, read by 20068 2008b
  FE28  .byte 8F 87 85 82 7F 7F 7F 7F 7F 7F 7B 7D FE 2D 06 AF   ; 27E28 data, read by 20068 2008b
  FE38  .byte F8 FE 2D 05 5F 24 02 C0 E0 F0 F8 FC FE 24 03 C0   ; 27E38 data, read by 20068 2008b
  FE48  .byte E0 F0 F8 FC 01 C7 2D 06 24 08 80 80 E0 F8 FD FF   ; 27E48 data, read by 20068 2008b
  FE58  .byte F6 FD 7F 7F 1F E7 FA F9 F3 E7 AE 57 AF 57 EE 5D   ; 27E58 data, read by 20068
  FE68  .byte BE 7F 50 A8 50 A9 13 E3 F9 FE BF 57 AF 57 AF 5F   ; 27E68 data, read by 20068
  FE78  .byte AF 9F 07 3F 7F 2D 04 7F C0 F0 FE 2D 05 00 C0 F0   ; 27E78 data, read by 20068 2008b
  FE88  .byte FE 2D 04 85 82 85 82 45 A3 26 65 7A 7D 7A 7D BA   ; 27E88 data, read by 20068 2008b
  FE98  .byte DC DB 9B 55 AA 55 AA FF 00 AA 55 AB 55 AA 55 00   ; 27E98 data, read by 20068
  FEA8  .byte 2D 03 2B 57 BF 7F 6F F8 F3 AD 87 08 07 18 27 2F   ; 27EA8 data, read by 20068 2008b
  FEB8  .byte 5C 53 02 C5 F9 F9 FE 7F 1E CB FD 3A C6 76 99 EC   ; 27EB8 data, read by 20068
  FEC8  .byte F5 34 68 51 25 4A A4 12 64 CA 87 8F 9F 3F 7F FD   ; 27EC8 data, read by 20068
  FED8  .byte FB F5 D6 C1 31 42 04 19 BA B4 E9 BE CE BC F8 E0   ; 27ED8 data, read by 20068
  FEE8  .byte 41 43 EA 59 54 93 22 09 52 B5 00 A0 A8 6C DC F4   ; 27EE8 data, read by 20068
  FEF8  .byte A9 43 A7 59 A6 58 84 7A C4 01 00 07 1F 3F 7F FD   ; 27EF8 data, read by 20068
  FF08  .byte FB FE D6 89 41 35 4A 14 A8 D0 E8 F4 AA C0 A0 C0   ; 27F08 data, read by 20068
  FF18  .byte 24 02 E0 58 5C 92 22 01 42 94 00 A0 A0 6C D8 F4   ; 27F18 data, read by 20068 2008b
  FF28  .byte A8 40 60 80 80 24 05 90 60 00 80 24 05 40 80 F0   ; 27F28 data, read by 20068 2008b
  FF38  .byte D6 FC E8 FB 24 08 2A 05 02 01 00 01 24 0A AF 57   ; 27F38 data, read by 20068 2008b
  FF48  .byte AB 55 AA 55 AA 55 0F 07 03 01 24 04 FA F5 F2 E5   ; 27F48 data, read by 20068 2008b
  FF58  .byte C2 05 82 05 E0 F0 F0 E0 C0 24 03 FE F9 F2 C1 82   ; 27F58 data, read by 20068 2008b
  FF68  .byte 01 82 01 FC F8 F0 C0 24 04                        ; 27F68 data, read by 20068 2008b

int_B4_FF71:
  FF71  .byte 40 FF FF FF FF FF FF 8D B6 FF 20 72 FF            ; 27F71 data, read by 20068
  FF7E  A9 00     LDA #$00                      ; 27F7E inferred, not run (as at 1FF7E in bank 3, where it ran; read as data here too)
  FF80  .byte 8D B3 FF 60 85 3E 29 10 09 03 A8 99 B3 FF 20 72   ; 27F80 data, read by 20068
  FF90  .byte FF                                                ; 27F90 data, read by 20068
  FF91  A5 3E     LDA $3E                       ; 27F91 inferred, not run (as at 1FF91 in bank 3, where it ran; read as data here too)
  FF93  A8        TAY                           ; 27F93 inferred, not run (as at 1FF93 in bank 3, where it ran; read as data here too)
  FF94  99 B3 FF  STA $FFB3,Y                   ; 27F94 inferred, not run (as at 1FF94 in bank 3, where it ran; read as data here too)
  FF97  .byte 60                                                ; 27F97 data, read by 20068

int_B4_FF98:
  FF98  86 76     STX $76                       ; 27F98 ×480
  FF9A  85 75     STA $75                       ; 27F9A ×480
  FF9C  A9 04     LDA #$04                      ; 27F9C ×480
  FF9E  A2 00     LDX #$00                      ; 27F9E ×480
  FFA0  8E B3 FF  STX $FFB3                     ; 27FA0 ×480
  FFA3  .byte 4C 71 FF                                          ; 27FA3 data, read by 20068
  FFA6  A6 76     LDX $76                       ; 27FA6 inferred, not run (as at 07FA6 in bank 0, where it ran; read as data here too)
  FFA8  A5 2E     LDA $2E                       ; 27FA8 inferred, not run (as at 07FA8 in bank 0, where it ran; read as data here too)
  FFAA  A8        TAY                           ; 27FAA inferred, not run (as at 07FAA in bank 0, where it ran; read as data here too)
  FFAB  99 B3 FF  STA $FFB3,Y                   ; 27FAB inferred, not run (as at 07FAB in bank 0, where it ran; read as data here too)
  FFAE  A4 77     LDY $77                       ; 27FAE ×480
  FFB0  A5 75     LDA $75                       ; 27FB0 ×480
  FFB2  40        RTI                           ; 27FB2 ×480
  FFB3  .byte 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F   ; 27FB3 data, read by 20068 27fe4
  FFC3  .byte 10 11 12 13 14 15 16 17                           ; 27FC3 data, read by 20068
  FFCB  A9 00     LDA #$00                      ; 27FCB inferred, not run (as at 07FCB in bank 0, where it ran; read as data here too)
  FFCD  09 04     ORA #$04                      ; 27FCD inferred, not run (as at 07FCD in bank 0, where it ran; read as data here too)
  FFCF  85 2D     STA $2D                       ; 27FCF inferred, not run (as at 07FCF in bank 0, where it ran; read as data here too)
  FFD1  A5 13     LDA $13                       ; 27FD1 inferred, not run (as at 07FD1 in bank 0, where it ran; read as data here too)
  FFD3  48        PHA                           ; 27FD3 inferred, not run (as at 07FD3 in bank 0, where it ran; read as data here too)
  FFD4  86 13     STX $13                       ; 27FD4 inferred, not run (as at 07FD4 in bank 0, where it ran; read as data here too)
  FFD6  B9 B3 FF  LDA $FFB3,Y                   ; 27FD6 inferred, not run (as at 07FD6 in bank 0, where it ran; read as data here too)
  FFD9  99 B3 FF  STA $FFB3,Y                   ; 27FD9 inferred, not run (as at 07FD9 in bank 0, where it ran; read as data here too)
  FFDC  20 00 80  JSR sub_B4_8000               ; 27FDC ×366
  FFDF  A4 2D     LDY $2D                       ; 27FDF ×366
  FFE1  68        PLA                           ; 27FE1 ×366
  FFE2  85 13     STA $13                       ; 27FE2 ×366
  FFE4  B9 B3 FF  LDA $FFB3,Y                   ; 27FE4 ×366
  FFE7  99 B3 FF  STA $FFB3,Y                   ; 27FE7 ×366
  FFEA  60        RTS                           ; 27FEA inferred, not run (as at 0FFEA in bank 1, where it ran)
  FFEB  CA        DEX                           ; 27FEB inferred, not run (as at 37FEB in bank 6, where it ran)
  FFEC  D0 FD     BNE $FFEB                     ; 27FEC inferred, not run (as at 37FEC in bank 6, where it ran)
  FFEE  88        DEY                           ; 27FEE inferred, not run (as at 37FEE in bank 6, where it ran)
  FFEF  D0 FA     BNE $FFEB                     ; 27FEF inferred, not run
  FFF1  60        RTS                           ; 27FF1 inferred, not run

int_B4_FFF2:
  FFF2  A9 00     LDA #$00                      ; 27FF2 inferred, not run (RESET vector of bank 4)
  FFF4  8D B3 FF  STA $FFB3                     ; 27FF4 inferred, not run
  FFF7  4C F2 FF  JMP int_B4_FFF2               ; 27FF7 inferred, not run
  FFFA  .byte 98 FF                                             ; 27FFA data, read by 20068 20071 20073 20075 (+15)
  FFFC  .byte F2 FF 71 FF                                       ; 27FFC
