; bank 2 — PRG $10000-$17FFF, mapped at $8000-$FFFF


sub_B2_8000:                    ; from 17fdc
  8000  6C 13 00  JMP ($0013)                   ; 10000 ×134446

jt_B2_8003:                    ; from 10000
  8003  4C D6 FD  JMP loc_B2_FDD6               ; 10003 ×58778

jt_B2_8006:                    ; from 10000
  8006  4C 0E CA  JMP loc_B2_CA0E               ; 10006 ×6

jt_B2_8009:                    ; from 10000
  8009  4C 78 EE  JMP loc_B2_EE78               ; 10009 ×2150

jt_B2_800C:                    ; from 10000
  800C  4C 65 EE  JMP loc_B2_EE65               ; 1000C ×3036

jt_B2_800F:                    ; from 10000
  800F  4C BE EC  JMP loc_B2_ECBE               ; 1000F ×892

jt_B2_8012:                    ; from 10000
  8012  4C 3F F2  JMP loc_B2_F23F               ; 10012 ×58783
  8015  .byte 4C C9 F7                                          ; 10015

jt_B2_8018:                    ; from 10000
  8018  4C 58 C9  JMP loc_B2_C958               ; 10018 ×8770

jt_B2_801B:                    ; from 10000
  801B  4C 23 FF  JMP loc_B2_FF23               ; 1001B ×14
  801E  .byte 4C 45 F8                                          ; 1001E

jt_B2_8021:                    ; from 10000
  8021  4C A2 C9  JMP loc_B2_C9A2               ; 10021 ×2017
  8024  .byte 10 10 30 20 10 00 00 00 00 00 FF FF               ; 10024
  8030  .byte 00 00 00 00 60 1E 02 8A 00 70 9D 20 9F E0 FC 74   ; 10030 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8040  .byte 00 0D 0A 00 60 1E 02 8A 00 7D 9A 20 9F E0 FC 74   ; 10040 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8050  .byte 7C 08 08 10 10 10 00 20 00 70 70 60 60 20 20 00   ; 10050 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8060  .byte 00 0F 1F 7F FF 7C F9 F6 00 00 0F 0F 57 07 76 79   ; 10060 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8070  .byte 7F C7 F6 EF 00 80 00 80 0C 7F DD F0 FF 7F FF FF   ; 10070 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8080  .byte 60 FC FE 96 7E 02 02 05 00 00 FC 68 80 FC FC FE   ; 10080 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8090  .byte 76 75 35 75 F2 65 3F 0F 39 38 18 38 7D 3B 03 07   ; 10090 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  80A0  .byte C0 40 40 46 C5 E3 E9 CD FF FF FF F9 F8 FC FE FE   ; 100A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  80B0  .byte 1E 1C 1C 1C CA AA 69 32 F4 E0 F8 F8 3C 1C 9E CC   ; 100B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  80C0  .byte 3F 7E 7D FE 7A 39 3D 3D 1F 0F 06 28 04 1E 1E 1E   ; 100C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  80D0  .byte 39 5D AF 1F 3F 7A 74 74 FE BE 1C 02 18 3C 38 38   ; 100D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  80E0  .byte 6B E4 76 BF 7E FC E8 D0 F0 F8 F8 72 08 60 F0 E0   ; 100E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  80F0  .byte 01 01 01 0F 7F F2 C9 F2 00 00 00 00 0F 7F FE 0C   ; 100F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8100  .byte A6 AD BE DF 9E 61 80 00 C3 C6 CF 6F E1 80 00 00   ; 10100 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8110  .byte 80 00 F8 FC EE 9B 66 00 00 00 00 F8 FC 66 00 00   ; 10110 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8120  .byte 0D 0A 00 60 1F 8A 0A 14 FD 9A 60 1F 60 74 34 08   ; 10120 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8130  .byte 08 00 00 20 20 20 00 00 00 00 00 00 40 40 40 00   ; 10130 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8140  .byte 00 00 00 00 00 00 3F FF 00 00 00 00 00 00 00 3F   ; 10140 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8150  .byte 07 0F 1F 3F 7C 78 7F FF 03 07 0F 1F 3F 3F 00 2F   ; 10150 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8160  .byte 87 B7 CF 00 40 80 E0 F1 F9 C8 F0 FF BF 7F 9F 6E   ; 10160 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8170  .byte FC 3E BF 7F 02 02 04 04 F0 C8 42 80 FC FC F8 F8   ; 10170 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8180  .byte FE E0 3F 08 08 6F FF F7 9F 1F 00 07 07 07 67 63   ; 10180 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8190  .byte F9 29 D1 FE 38 38 90 90 F6 F6 EE 10 F0 F0 E0 E0   ; 10190 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  81A0  .byte 1B 19 36 35 54 A8 A8 70 0E 0F 19 18 38 70 70 00   ; 101A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  81B0  .byte F2 F2 F2 3F BF 7F 8B 84 7C DC CC D0 40 09 74 78   ; 101B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  81C0  .byte 42 74 64 68 6F FF 80 7F 3C 38 38 30 30 7F 7F 00   ; 101C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  81D0  .byte 80 00 00 38 C6 F9 06 F8 00 00 00 00 38 FE F8 00   ; 101D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  81E0  .byte 0D 0A 80 60 1C 0A 94 F8 ED 9A 60 9F E0 F4 68 00   ; 101E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  81F0  .byte 18 07 02 25 3E 04 18 50 67 F8 7D 1A 00 38 60 20   ; 101F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8200  .byte 00 37 7F 3F 7F 7C FC F3 00 00 27 03 2B 33 7B 7C   ; 10200 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8210  .byte 30 FF FF C2 8C 23 40 80 00 30 FF FF F3 FC BF 7F   ; 10210 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8220  .byte 00 C0 F8 94 2C FC 04 0B 00 00 C0 F8 D0 00 F8 F4   ; 10220 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8230  .byte 7B FD FA E4 88 71 03 02 3C 70 78 78 70 00 01 01   ; 10230 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8240  .byte 00 30 B0 B0 A1 62 FF FF FF FF 7F 7F 7E FC FC FF   ; 10240 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8250  .byte 15 2D 59 E1 1E 00 80 C0 EE DE BE 1E 00 00 00 80   ; 10250 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8260  .byte 01 03 03 03 07 0F 5F FD 00 00 01 01 00 06 0E 5E   ; 10260 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8270  .byte 3F 07 C0 BF 8F 9F EE FC FF FF 3F C2 F7 67 87 2F   ; 10270 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8280  .byte FC FE 3F FE EC C8 90 20 F8 E0 D2 80 F0 F0 E0 C0   ; 10280 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8290  .byte FC F3 EC D0 D8 FC 42 3C 7F 7C 70 60 60 78 3C 00   ; 10290 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  82A0  .byte FD 3A 3C 2B 2F 10 0F 00 0E 1C 18 1C 1F 0F 00 00   ; 102A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  82B0  .byte F6 E8 F0 AC BE 41 3E 00 38 70 60 70 7C 3E 00 00   ; 102B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  82C0  .byte 0D 0A 80 60 1E 0A 8C F8 ED 9A 60 1F E0 F4 70 00   ; 102C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  82D0  .byte 07 0F 0F 1F 1F 7D F3 EC 02 00 01 0C 0E 1E 7C 70   ; 102D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  82E0  .byte E0 FF FF FF FF 77 0F 8F 00 60 7F 7F FE FF FF 77   ; 102E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  82F0  .byte 00 30 FC CA 96 7E 03 07 00 00 30 C8 00 00 02 02   ; 102F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8300  .byte 3C 7E FA DA E4 D8 A0 40 00 3C 7C 7C F8 E0 C0 80   ; 10300 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8310  .byte F4 C8 70 00 00 18 3C 3F 78 70 00 00 00 00 18 18   ; 10310 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8320  .byte F8 9C 5C 2F 5F DF FF BF 08 7C 3C 1F 38 67 7F 7F   ; 10320 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8330  .byte 07 09 13 FE E0 F0 F8 F8 02 06 0C C0 00 C0 C0 A0   ; 10330 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8340  .byte 1F 3B 34 76 E9 C8 B0 C0 0F 1F 1B 39 70 70 40 00   ; 10340 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8350  .byte C0 E0 FF 61 62 F4 78 20 BF DF C0 9E BC 08 20 00   ; 10350 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8360  .byte 7A 5A DD 4D 26 16 0B 05 8C BC 3E 3E 1F 0F 07 03   ; 10360 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8370  .byte 00 03 07 0D 1A 3A B4 E8 00 00 02 06 0C 1C 18 30   ; 10370 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8380  .byte 6D B2 5A 2C 24 18 00 00 F6 7C 3C 18 18 00 00 00   ; 10380 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8390  .byte 00 0D 0A 00 60 1C 04 08 E0 FD 9A 60 9E E0 98 00   ; 10390 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  83A0  .byte 00 00 00 40 40 40 00 00 00 00 00 80 00 00 00 00   ; 103A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  83B0  .byte 03 0F 1E 3C 7E 7C F8 EC 00 03 0F 1F 3F 3F 7F 73   ; 103B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  83C0  .byte 80 F8 3E 05 CB 3F 02 04 00 80 F8 E4 20 C0 FC F8   ; 103C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  83D0  .byte FF FF E3 E0 7F 20 2E 5E 42 2F 1F 5F 00 1F 1F 3F   ; 103D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  83E0  .byte B1 FA FC 34 C4 38 1E 5F 4E B4 F8 F8 38 C0 F8 FE   ; 103E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  83F0  .byte 05 07 07 1F 3F 7F 7B F3 03 03 03 03 19 3A 3C 7C   ; 103F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8400  .byte EB C8 D1 9F 29 CB CE DD F7 F7 EE E0 C7 07 07 8E   ; 10400 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8410  .byte 7E 0E 1F FE 32 64 C8 B0 F8 F0 EA 00 FC F8 F0 C0   ; 10410 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8420  .byte 3D 7A 74 68 6C BF 40 3F 1E 3C 38 30 30 7C 3F 00   ; 10420 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8430  .byte D7 0E 0D 0A 05 04 83 00 03 07 06 07 03 03 00 00   ; 10430 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8440  .byte 74 E8 D0 AC 5E 41 3E 00 38 70 60 70 3C 3E 00 00   ; 10440 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8450  .byte 00 00 00 00 00 0D 1A 00 00 00 00 00 E0 3D 0A 00   ; 10450 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8460  .byte 00 00 18 10 20 20 40 40 00 00 60 E0 C0 C0 00 00   ; 10460 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8470  .byte 00 07 0F 10 3F 7F 5F CF 00 00 07 0F 1C 3F 3F 3E   ; 10470 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8480  .byte 00 00 F0 7C 0A 96 FF FF 00 00 00 F0 C8 40 80 E6   ; 10480 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8490  .byte 05 05 05 02 01 00 61 F3 02 02 02 01 00 00 00 61   ; 10490 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  84A0  .byte 9F CE DC BF 58 D0 31 F0 71 B5 D3 60 B7 3F FE FF   ; 104A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  84B0  .byte FD 0D 22 D4 28 40 F4 7E FE FE DC 28 C0 80 00 F4   ; 104B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  84C0  .byte 0F 0F 1D 3A 7B E4 98 E0 06 07 0F 1D 3C 78 E0 00   ; 104C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  84D0  .byte FF FF DE 5E 3C B1 7A 3C 1F DF FF EF CF 5E 04 10   ; 104D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  84E0  .byte 1F 1F 47 9B EB 09 05 02 FC FD B8 67 07 07 03 01   ; 104E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  84F0  .byte C0 80 80 43 47 4F BD BA 00 00 00 80 82 86 CE CC   ; 104F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8500  .byte AD 7A 74 28 10 00 00 00 7E 3C 38 10 00 00 00 00   ; 10500 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8510  .byte 00 0D 0A 00 63 18 88 60 40 FD 9A E0 1C 60 70 00   ; 10510 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8520  .byte 00 00 00 00 20 20 40 00 00 00 00 00 C0 40 00 00   ; 10520 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8530  .byte 00 00 00 00 00 18 7F F3 00 00 00 00 00 00 18 7F   ; 10530 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8540  .byte 00 00 00 00 00 C0 FC 9F 00 00 00 00 00 00 C0 FC   ; 10540 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8550  .byte 1C 3F 7C 7D 79 7A FF FF 0F 1F 3F 3E 3E 05 0E BF   ; 10550 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8560  .byte 1F DF 3F 02 0E 0A 3A FC E4 20 C0 FC F0 F4 C4 30   ; 10560 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8570  .byte 39 18 0F 08 10 77 FF FF 07 07 00 07 0F 0F 67 77   ; 10570 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8580  .byte FE 05 FA 0C 08 10 90 90 FC FE 1C F0 F0 E0 E0 E0   ; 10580 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8590  .byte 1B 19 1A 3B 34 74 64 38 0F 0F 0D 1C 18 38 38 00   ; 10590 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  85A0  .byte F2 FA 79 3F FF FF E2 E4 7C BC BE C0 05 70 7C 78   ; 105A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  85B0  .byte 74 64 68 68 6F FF 80 7F 38 38 30 30 30 7F 7F 00   ; 105B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  85C0  .byte 80 80 00 18 E6 F9 06 F8 00 00 00 00 18 FE F8 00   ; 105C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  85D0  .byte 0D 0A 40 30 0F 05 46 38 7D CA 30 4E 70 FA 38 40   ; 105D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  85E0  .byte 08 08 00 10 20 20 40 00 30 10 00 00 00 40 00 00   ; 105E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  85F0  .byte 00 00 00 00 00 00 0F FF 00 00 00 00 00 00 00 0F   ; 105F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8600  .byte 00 00 00 00 00 00 FA FF 00 00 00 00 00 00 00 FA   ; 10600 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8610  .byte 0F 1F 3F 7E FC FF 4F 2F 07 0F 1F 07 53 18 3E 1E   ; 10610 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8620  .byte 82 35 0F 00 80 00 81 82 FF CA F0 FF 7F FF FE FD   ; 10620 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8630  .byte 14 AE 7E 02 02 01 0A 12 F8 54 80 FC FC FE F4 EC   ; 10630 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8640  .byte 09 06 06 1F 3F 7F FF F8 07 01 01 06 1F 3F 4F 17   ; 10640 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8650  .byte E2 F2 6D 15 EE CF 0F 0F 9D ED F3 EB 1D FE FF FF   ; 10650 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8660  .byte 89 CB B6 55 B9 3E 3E 3E 76 B6 CC AE 76 F8 FC FC   ; 10660 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8670  .byte FF E4 E4 74 74 34 34 1A 00 78 78 38 38 18 18 0C   ; 10670 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8680  .byte 1F 8F 6F 7F F6 F4 F4 E8 FE 7D 30 24 78 78 78 70   ; 10680 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8690  .byte 3F 73 CC F3 4C 00 00 00 00 3F 7F 4C 00 00 00 00   ; 10690 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  86A0  .byte D7 26 C6 0B 08 07 00 00 E3 C3 03 07 07 00 00 00   ; 106A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  86B0  .byte 40 80 80 78 FE 67 C8 37 80 00 00 80 F8 FE 37 00   ; 106B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  86C0  .byte 00 0D 0A 00 60 1E 0A 8A 00 7D 9A E0 1F E0 F4 74   ; 106C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  86D0  .byte 3E 04 28 18 10 10 10 10 40 78 10 60 20 20 20 00   ; 106D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  86E0  .byte 00 00 00 00 00 00 00 7A 00 00 00 00 00 00 00 00   ; 106E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  86F0  .byte 01 07 1F 3F 7F FC 74 73 00 01 07 0F 17 43 3B 3C   ; 106F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8700  .byte DF F0 EC C3 B0 20 40 80 0F DF F3 FC DF DF BF 7F   ; 10700 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8710  .byte F8 14 2C FC 04 02 03 07 D0 F8 D0 00 F8 FC FE FC   ; 10710 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8720  .byte 34 74 FA 64 38 01 01 02 18 38 7C 38 00 00 00 01   ; 10720 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8730  .byte A0 A0 51 41 B3 72 73 E1 7F 7F 3E 3E 7E FF FF FF   ; 10730 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8740  .byte 3F 7D BA BA 9A 75 BD DA E2 9E 1C 1C 0C 9E DE E4   ; 10740 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8750  .byte 7C 78 F9 F2 FC FC FB FB 3F 3F 1E 8C 20 08 7C 7C   ; 10750 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8760  .byte 1D 8F 67 7F F7 E6 D8 A0 FE 7E 18 25 78 78 E0 C0   ; 10760 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8770  .byte 03 03 03 01 01 3F F6 C9 01 01 01 00 00 01 1F FE   ; 10770 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8780  .byte D7 B3 AC A3 A0 90 20 C0 EF CF C3 C0 C0 E0 C0 00   ; 10780 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8790  .byte F0 7C 9E 23 DE 00 00 00 00 F0 FC DE 00 00 00 00   ; 10790 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  87A0  .byte 01 00 00 1F 7B E4 59 26 00 00 00 00 1F 7F 26 00   ; 107A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  87B0  .byte 00 06 25 12 08 04 06 9C 38 2E 55 EA F4 FA F8 60   ; 107B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  87C0  .byte 42 41 41 27 1C 58 20 20 3D 3E 3E 18 60 20 40 00   ; 107C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  87D0  .byte 3F 3F 7F 77 F5 F0 EE 6B 10 07 03 3B 7B 7F 78 37   ; 107D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  87E0  .byte 00 80 F0 FC C6 51 0A 05 00 00 80 F0 FC EE F5 FA   ; 107E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  87F0  .byte 18 46 2B 16 0E 02 02 0E F0 B8 D6 E8 F0 FC FC F0   ; 107F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8800  .byte 1A 7A ED DD FE 59 17 2F 0D 1D 7E F2 51 07 0F 1F   ; 10800 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8810  .byte 80 80 00 40 81 82 93 8B FF FF FF FF FD F8 FC FD   ; 10810 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8820  .byte 2C 8E FB F2 7F FE E0 C0 F0 74 3E FC BE 00 40 00   ; 10820 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8830  .byte 5F FC F8 FF 7E 79 39 3A 3F 0F 47 10 0C 3E 1E 1C   ; 10830 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8840  .byte 2C 47 BF 3B 7B 72 E4 E8 FF BC 02 18 3C 3C 78 70   ; 10840 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8850  .byte 01 01 03 3F 7B C4 7B 0C 00 00 00 03 3F 7F 0C 00   ; 10850 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8860  .byte AD B5 92 DF 21 C0 00 00 C6 CE 6F E1 C0 00 00 00   ; 10860 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8870  .byte 00 F0 3C CE FF 6E 00 00 00 00 F0 FC 6E 00 00 00   ; 10870 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8880  .byte 00 0C 09 42 20 1C 28 20 00 7C D9 26 18 20 10 00   ; 10880 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8890  .byte 00 01 02 05 0A 1A 62 9E 00 00 01 03 07 05 1D 7D   ; 10890 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  88A0  .byte 3F FF 70 C4 D3 C8 C8 C8 00 3F FF FB EC F7 F7 F7   ; 108A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  88B0  .byte F0 FC 06 4D 33 8E 87 8A 00 F0 FC B6 CC 70 7A 74   ; 108B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  88C0  .byte 5F FE F8 FC 79 79 39 3A 3F 0F A7 03 3E 3E 1E 1C   ; 108C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  88D0  .byte BA FF 79 ED 75 6A 67 6E 45 09 A6 1E 2E 37 3B 33   ; 108D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  88E0  .byte F4 94 6A FD FB F9 5F 4A 38 78 1C 3E C6 A6 8A 80   ; 108E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  88F0  .byte 03 03 01 7F F9 E6 FF 0C 01 01 00 01 7F FF 0C 00   ; 108F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8900  .byte 5A 7B BE BF 43 80 00 00 8C 9E DF C3 80 00 00 00   ; 10900 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8910  .byte DC E8 F8 3E CF FF 06 00 78 30 C0 F8 FC 06 00 00   ; 10910 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8920  .byte 0D 0A 00 30 0F 05 4A 34 7D 4A 70 CF F0 FA 34 08   ; 10920 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8930  .byte 08 28 08 10 10 00 00 00 30 10 10 00 00 00 00 00   ; 10930 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8940  .byte 00 00 00 00 00 00 70 D8 00 00 00 00 00 00 00 70   ; 10940 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8950  .byte 1E 37 35 7A F4 74 FA BA 00 1E 1E 1C 78 18 1C DC   ; 10950 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8960  .byte 3B 1F 0F 19 37 76 71 FF 1E 0E 07 0E 18 39 3F 3B   ; 10960 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8970  .byte 00 81 C3 99 FF 02 B5 8F 00 00 81 00 18 FF CA F0   ; 10970 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8980  .byte 79 FD 3F 3F 27 4E F0 00 9E 22 D8 D8 DA B0 00 00   ; 10980 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8990  .byte 7E FC 79 1E 02 01 06 09 03 57 0E 01 01 00 01 07   ; 10990 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  89A0  .byte 00 80 00 40 E1 62 63 F0 FF 7F FF FF FE FC FC FF   ; 109A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  89B0  .byte 60 18 E4 7E 1E 3F FE E4 80 E0 F8 F8 F0 CA 60 F8   ; 109B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  89C0  .byte 2F 5F 7C FC 7F 79 3C 1C 1F 3F 07 4B 00 3E 1F 0F   ; 109C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  89D0  .byte CE 07 11 73 8F 1E B8 F3 FF FF EF 8C 06 0F 1F 3C   ; 109D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  89E0  .byte 10 60 80 F8 7C 8A FD 66 E0 80 00 00 F8 FC 66 00   ; 109E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  89F0  .byte 01 00 07 3F 79 E6 7D 0E 00 00 00 07 3F 7F 0E 00   ; 109F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A00  .byte DC DF EE CF B1 40 80 00 E7 6E 77 F1 C0 80 00 00   ; 10A00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A10  .byte 00 00 00 00 02 1C 00 0A 00 00 00 00 04 02 3E F4   ; 10A10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A20  .byte 14 68 08 10 A0 20 20 20 E8 10 70 60 40 40 00 00   ; 10A20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A30  .byte 00 00 00 00 00 0C 1E 3B 00 00 00 00 00 00 0C 1E   ; 10A30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A40  .byte 00 07 1F 3F 7E 77 73 A2 00 00 01 15 39 3A 3C 7D   ; 10A40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A50  .byte FF FA FB CF 37 CE 09 0C 0E FC FC F7 C0 3B F6 F3   ; 10A50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A60  .byte C8 9C DE FB DD BA 64 38 80 08 0C CE 2E DC B8 C0   ; 10A60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A70  .byte B8 58 5C 2C 2C 28 2C 5C 7F 3F 3F 1F 1F 1F 1F 3F   ; 10A70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A80  .byte 0F 1E 20 20 40 80 40 20 F4 E0 C0 C0 80 00 80 C0   ; 10A80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8A90  .byte 0B 0F 0F 3E 7E FF E7 CE 07 07 07 07 31 74 78 70   ; 10A90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8AA0  .byte 8A 0D 07 67 9F AF 59 B6 FC FE FE 98 02 18 3E 78   ; 10AA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8AB0  .byte 6C F0 F8 EF F7 79 3F 07 30 60 70 78 7F 3E 07 00   ; 10AB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8AC0  .byte 2A 34 38 7F F9 7E 8F 01 1C 18 30 38 7F 0F 01 00   ; 10AC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8AD0  .byte 40 80 00 F8 3E CF FE 30 80 00 00 00 F8 FE 30 00   ; 10AD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8AE0  .byte 00 00 1A 14 00 41 3E 02 00 00 1A 35 C1 BE C0 FC   ; 10AE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8AF0  .byte 4A 34 08 18 10 10 00 00 34 08 30 20 20 20 00 00   ; 10AF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B00  .byte 00 70 D8 D8 EE 7F 76 E8 00 00 70 70 78 3E 38 70   ; 10B00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B10  .byte 14 3E 35 32 7A F4 74 32 00 14 1E 1C 1C 78 18 1C   ; 10B10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B20  .byte 3A 7A 72 7F FF 7F 11 0D 1C 3C 3C 02 57 0F 0F 03   ; 10B20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B30  .byte 01 3F E5 CA 3E 00 00 01 00 00 3E B5 C1 FF FF FE   ; 10B30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B40  .byte 3A FA BF 5F DF 06 04 38 1C 1C C0 BA 38 F8 F8 C0   ; 10B40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B50  .byte B0 B8 58 58 79 79 59 5E 7F 7F 3F 3F 3E 3E 3E 3F   ; 10B50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B60  .byte 81 C2 C4 C4 C8 C8 C8 F4 FE FC F8 F8 F0 F0 F0 F8   ; 10B60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B70  .byte 09 0C 0E 13 39 3A 74 E8 07 03 01 0C 1E 1C 38 70   ; 10B70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B80  .byte E8 7C 3E 9F FE 74 F4 E8 F0 F0 E0 6A 00 38 78 70   ; 10B80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8B90  .byte F8 6F 67 53 4F 31 00 00 70 38 3F 3F 30 00 00 00   ; 10B90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8BA0  .byte E8 D0 D0 DF 7F 04 FF 07 70 60 60 60 FF FF 07 00   ; 10BA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8BB0  .byte 80 00 00 F8 FE 4D FE 70 00 00 00 00 F8 FE 70 00   ; 10BB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8BC0  .byte 00 1A 14 00 60 1E 0A 96 00 7A 94 61 9E E0 F4 68   ; 10BC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8BD0  .byte 6C 08 50 10 20 20 00 00 10 70 20 60 40 00 00 00   ; 10BD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8BE0  .byte 3C 6C 7F 3F 3D 36 74 E4 00 38 38 1E 1E 18 38 78   ; 10BE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8BF0  .byte 14 3E 35 ED FA F4 68 64 00 14 1E 3E 7C 38 30 38   ; 10BF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C00  .byte 73 7F FD 7E 27 13 09 0B 3C 01 52 07 1F 0F 07 07   ; 10C00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C10  .byte FF 85 6B 9E 00 00 00 01 18 FE 95 60 FF FF FF FE   ; 10C10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C20  .byte F9 B9 7D DF 1F 06 04 38 1E DE A2 30 FA F8 F8 C0   ; 10C20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C30  .byte 58 58 28 28 59 59 BA 99 3F 3F 1F 1F 3F 3F 7D 7D   ; 10C30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C40  .byte C1 C2 44 44 CC CA D5 D5 FE FC F8 F8 F8 FC EE EE   ; 10C40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C50  .byte BA 9A 4F 3F 7F F3 F6 EE 7D 7D 3C 00 31 7C 79 77   ; 10C50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C60  .byte 54 5E FE FF FE 64 C8 D0 B8 B8 80 0A 20 98 30 E0   ; 10C60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C70  .byte 66 6E 6F FF E7 78 1F 06 3B 33 37 70 7F 1F 06 00   ; 10C70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C80  .byte 80 E0 3E CF F6 7B E8 30 00 00 E0 7E BB E0 30 00   ; 10C80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8C90  .byte 0D 0A 00 21 1F 01 4A 34 2D 5A 60 5E E0 FE 34 08   ; 10C90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8CA0  .byte 08 28 10 10 10 10 00 00 30 10 20 20 00 00 00 00   ; 10CA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8CB0  .byte 20 70 D8 D8 6E 7F 76 E8 00 20 70 70 38 3E 38 70   ; 10CB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8CC0  .byte 14 3E 37 35 6A F4 74 3A 00 14 1E 1E 3C 78 18 1C   ; 10CC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8CD0  .byte 5A 72 73 7F FB 61 22 1E 3C 3C 3C 03 47 1F 1F 07   ; 10CD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8CE0  .byte 01 FF E5 4B 3F 01 00 00 00 00 FF B5 C1 FF FF FF   ; 10CE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8CF0  .byte 3A FA BA 7E F7 26 0C 10 1C 1C E2 B0 3A F8 F0 E0   ; 10CF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D00  .byte B0 B8 58 28 29 58 59 B1 7F 7F 3F 1F 1E 3F 3F 7F   ; 10D00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D10  .byte 03 84 88 88 90 8C 92 9D FC F8 F0 F0 E0 F0 FC FE   ; 10D10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D20  .byte 05 07 07 0F 1F 39 79 F6 03 03 03 04 0D 1E 1E 78   ; 10D20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D30  .byte 87 93 9B E7 EE CE 8E 0E FF EE E4 02 07 87 07 07   ; 10D30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D40  .byte 74 3E BF 7E E4 E4 E8 E8 F8 E0 4A 20 78 78 70 70   ; 10D40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D50  .byte E8 E8 7F 77 AC 53 3F 03 70 70 38 3F 7F 3F 03 00   ; 10D50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D60  .byte 06 06 CF FE 4F E3 C0 80 03 03 06 CF 83 C0 80 00   ; 10D60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D70  .byte 80 80 80 F8 3C CE BB 76 00 00 00 80 F8 FC 66 00   ; 10D70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D80  .byte 20 1E 09 00 95 E3 01 12 40 E0 F6 FF 6A 1C 3E 0D   ; 10D80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8D90  .byte 10 B0 68 24 4C C2 02 01 E0 40 90 D8 B0 3C 00 00   ; 10D90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8DA0  .byte 00 00 39 67 C0 40 C0 C0 00 00 00 21 40 00 40 40   ; 10DA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8DB0  .byte 7F FF E3 D1 0F 09 10 10 28 4F DF EF 70 30 00 00   ; 10DB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8DC0  .byte EC FA 7F 2E F8 38 10 1D 00 EC FE F0 10 10 00 00   ; 10DC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8DD0  .byte 40 60 E8 F5 E4 E7 F8 F4 00 30 70 79 FB 78 80 38   ; 10DD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8DE0  .byte 0B 04 03 43 E0 30 B9 D9 00 03 07 43 FB FD 7E 3E   ; 10DE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8DF0  .byte 1C FE FE 1D 37 53 89 05 E8 E0 E8 E6 CE 8F 07 03   ; 10DF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E00  .byte 00 82 9F FD F2 3C F8 00 00 00 02 1E FC F8 00 00   ; 10E00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E10  .byte 77 97 6A 1D 1B 1B 0A 04 F9 7E 1C 0E 0E 04 00 00   ; 10E10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E20  .byte B9 5F 2F 3F 2D 2D 1D 15 7E 38 15 00 1E 1E 0E 0E   ; 10E20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E30  .byte 05 04 83 00 00 00 00 00 03 03 00 00 00 00 00 00   ; 10E30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E40  .byte D0 D0 DC BA A5 56 2B 10 60 60 60 7C 7E 3B 10 00   ; 10E40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E50  .byte 02 08 10 D4 70 28 20 60 01 04 0C 08 88 50 58 98   ; 10E50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E60  .byte 1D 4F 02 02 06 06 02 00 00 30 F5 45 69 29 35 1C   ; 10E60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E70  .byte 00 00 00 00 00 00 02 0F 00 00 00 00 00 00 00 02   ; 10E70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E80  .byte 00 00 00 30 7E 69 FD 6F 00 00 00 00 30 1E 7E 1E   ; 10E80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8E90  .byte 1C 3E 5F 7F BD F0 E7 C6 08 00 32 3B 7B 7F 78 78   ; 10E90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8EA0  .byte 36 36 3B B7 F7 FE BD 7A 1C 1C 1E 1C 9D C7 5E 3C   ; 10EA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8EB0  .byte 0C FE F4 E4 1A ED 17 0A 00 0C 78 F8 FC 1E 0A 00   ; 10EB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8EC0  .byte 3F 19 1E 11 60 84 DC C8 19 06 01 0E 1F 7B 63 77   ; 10EC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8ED0  .byte C0 8F 1F 18 38 33 25 2B BF 7F FF FF FF FC F8 F1   ; 10ED0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8EE0  .byte FD F2 FC 7C 38 F0 30 F8 1E 8C 90 80 D0 00 00 30   ; 10EE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8EF0  .byte D0 C8 63 3F 10 0C 03 00 6F 77 3F 1F 0F 03 00 00   ; 10EF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F00  .byte 53 2F FE FC 79 0D 9E 7C E1 C3 EF EF F6 F2 60 08   ; 10F00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F10  .byte 73 FE CC 90 20 A0 C0 80 3E 7C F0 E0 C0 40 00 00   ; 10F10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F20  .byte 00 01 00 1C 6C 06 06 0E 00 02 07 03 13 F9 79 30   ; 10F20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F30  .byte 00 C0 40 48 E2 2C 30 20 00 00 A0 B1 1C D0 C0 00   ; 10F30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F40  .byte 00 00 00 00 0C 7E FE FF 00 00 00 00 00 04 70 F4   ; 10F40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F50  .byte 01 06 0E 30 40 80 C0 E0 00 01 07 0F 3F 7F 7F 7F   ; 10F50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F60  .byte 3C C3 C1 00 00 00 00 1D 00 3C FF FF FF FF FF E3   ; 10F60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F70  .byte 3E FC E1 62 1F 3F FF 87 1F 3F FE FD FE FF FF FF   ; 10F70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F80  .byte D0 90 20 20 FC FE FF FF 20 60 C0 C0 00 04 BE BE   ; 10F80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8F90  .byte 00 C0 FE FF F3 CE FF 66 00 00 C0 FE 7E 7C 66 00   ; 10F90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8FA0  .byte 73 31 08 0A 15 08 00 00 3F 0F 07 05 08 00 00 00   ; 10FA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8FB0  .byte 62 39 1F 4F A9 1C 07 00 FD FE F9 B3 17 03 00 00   ; 10FB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8FC0  .byte 30 CC 7F F6 9F 2A D7 0E CF 03 88 F8 FE DC 0E 00   ; 10FC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8FD0  .byte E1 EE F0 00 00 00 00 00 5E 10 40 00 00 00 00 00   ; 10FD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8FE0  .byte 02 08 00 02 5C 21 05 05 03 2C C3 DC 23 5E 7A 7A   ; 10FE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  8FF0  .byte 6A 12 02 09 01 01 01 00 14 0C 0C 06 02 00 00 00   ; 10FF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9000  .byte 00 00 00 00 00 0C 3E F9 00 00 00 00 00 00 0C 36   ; 11000 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9010  .byte 01 07 0F 1F 3E 78 FC 73 00 01 07 0F 1F 0F 53 0E   ; 11010 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9020  .byte D3 3C 20 00 00 80 80 81 EC C3 DF FF FF 7F 7F FE   ; 11020 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9030  .byte 60 10 C8 7C 3A 3A DA 2D 80 E0 F0 E0 CC DC 3C 1E   ; 11030 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9040  .byte E5 E6 EF 7F 56 2A 1D 0F FB 79 72 3E 3D 1D 0D 03   ; 11040 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9050  .byte 84 C6 42 71 F2 E2 C3 8B F8 FC FC FE FF FF FF F7   ; 11050 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9060  .byte 7A 7D 7D 27 82 40 20 A0 1C 2E 26 02 00 80 C0 C0   ; 11060 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9070  .byte F1 FE FC E4 E4 74 74 74 1E A0 00 78 78 38 38 38   ; 11070 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9080  .byte 9E 4F 7E EE E4 E8 D0 D0 7C 32 08 70 78 70 60 60   ; 11080 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9090  .byte 01 01 01 0F 7E F1 6E 63 00 00 00 01 0F 7F 63 00   ; 11090 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  90A0  .byte A6 AE D7 D5 A2 41 80 00 C3 C7 63 E3 C1 80 00 00   ; 110A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  90B0  .byte 80 80 E0 FE 5D B2 6C 00 00 00 00 E0 FE 6C 00 00   ; 110B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  90C0  .byte 00 04 06 01 20 1C 02 93 30 3C 66 E3 DD E2 FD 6C   ; 110C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  90D0  .byte 49 36 14 08 08 08 08 08 36 48 28 10 10 00 00 00   ; 110D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  90E0  .byte 20 7E 7D EE E5 F5 75 74 00 20 06 73 7B 7B 3B 3B   ; 110E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  90F0  .byte 00 F0 E8 74 2A A9 AD A5 00 00 30 98 DC DE DE DE   ; 110F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9100  .byte 3A 39 69 69 E2 5C 30 14 1D 1E 3E 3E 7D 33 0F 0F   ; 11100 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9110  .byte A0 20 18 04 32 39 05 03 C0 C0 E0 F8 CC C6 FA FD   ; 11110 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9120  .byte 90 5D 3F 0F 0F 07 44 BF 60 A0 DD F9 FB FB BB 00   ; 11120 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9130  .byte 00 10 FE FF F5 95 62 9C 00 00 10 FE FE FE 9C 00   ; 11130 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9140  .byte 80 A0 A0 40 50 29 29 58 7F 7F 7F 3F 3F 1E 1E 3F   ; 11140 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9150  .byte C0 E0 F0 70 18 F4 F8 90 80 C0 E0 E0 E0 00 80 E0   ; 11150 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9160  .byte 00 00 01 01 03 0C 53 EE 00 00 00 00 00 03 0F 5F   ; 11160 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9170  .byte B8 B8 70 70 67 CA FC FD 7F 7F FF FF F8 71 03 13   ; 11170 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9180  .byte D0 A0 40 80 FE 7F 87 7B E0 C0 80 00 80 FE 7B 00   ; 11180 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9190  .byte 78 EF EC DE CB 7A 2F 06 3F 70 70 7C 7E 2C 06 00   ; 11190 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  91A0  .byte 1A F5 05 0B 08 07 00 00 F1 03 03 07 07 00 00 00   ; 111A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  91B0  .byte 0D 0A 00 01 3E 01 89 09 3D 6A 40 3E 40 7E 76 16   ; 111B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  91C0  .byte 00 00 00 03 0F 3F 5E BC 00 00 00 00 03 0F 3F 7F   ; 111C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  91D0  .byte 00 00 78 FE 85 2B 7F 80 00 00 00 78 FE D4 81 7F   ; 111D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  91E0  .byte 10 FE FF FF E0 20 1F E0 00 10 CE DF DF DF E0 00   ; 111E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  91F0  .byte 3C 7E F7 E7 37 C2 3C 00 00 3C 7E FE FE 3C 00 00   ; 111F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9200  .byte 1F 3E 7E FF 77 13 08 07 0F 0F 07 50 0F 0F 07 00   ; 11200 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9210  .byte 20 20 40 B8 EC E7 7F 9C DF DF BF 47 BB FC FC 7B   ; 11210 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9220  .byte 1C 04 03 3C 40 80 00 80 FB FB FC C0 80 00 00 00   ; 11220 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9230  .byte 00 01 01 01 07 09 7F FC 00 00 00 00 00 06 0E 7F   ; 11230 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9240  .byte A2 19 C4 E7 EF EF F7 FF 5B E7 FB F8 F3 33 43 17   ; 11240 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9250  .byte 38 7C 3E FF FE E4 C8 D0 F0 F8 F0 0A C0 F8 F0 E0   ; 11250 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9260  .byte F0 EF E8 DE EF 73 3F 19 7F 70 70 78 7E 3F 19 00   ; 11260 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9270  .byte 3E C6 0E 1F 8F C0 C0 80 C7 03 07 0F 00 80 80 00   ; 11270 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9280  .byte 40 80 FE 9F EF FF 18 00 80 00 00 FE F3 18 00 00   ; 11280 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9290  .byte 00 00 1B 26 77 77 E0 EE 00 00 00 1B 3F 3F 7F 7F   ; 11290 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  92A0  .byte 00 00 80 78 B4 32 7D FC 00 00 00 80 F8 FC FE FF   ; 112A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  92B0  .byte F4 F2 B9 19 3A 32 64 68 F8 FC FE FE FC FC F8 F0   ; 112B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  92C0  .byte 73 B3 AC 4C 20 20 21 13 3F 7F 7F 3F 1F 1F 1F 0F   ; 112C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  92D0  .byte EB E1 63 63 66 E6 E3 C3 FF FF FF FF FF FF FE FE   ; 112D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  92E0  .byte 00 00 00 00 00 00 00 37 00 00 00 00 00 00 00 00   ; 112E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  92F0  .byte 0B 08 0A 17 2F 5F BE FE 07 07 07 0F 1F 3F 7F 1F   ; 112F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9300  .byte E1 E1 02 04 38 20 20 40 FE FE FC F8 C0 C0 C0 80   ; 11300 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9310  .byte 01 03 0F 1E 2F 4F 4F CF 00 01 03 0F 1F 3F 3F 3F   ; 11310 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9320  .byte F0 E7 9F 7F FF F8 80 F3 DF FF FF FF FF FF FF 3C   ; 11320 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9330  .byte F1 E2 F2 F4 78 78 78 B0 1E 9C AC A8 80 B0 90 00   ; 11330 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9340  .byte 7B AD 79 13 17 2F 2E 3C 07 03 07 0F 0F 1F 1F 1F   ; 11340 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9350  .byte EF E4 C8 90 20 50 90 88 F0 FC F0 E0 C0 A0 60 70   ; 11350 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9360  .byte 01 03 07 0F 0F 1E 59 F6 00 00 03 07 07 0F 0E 58   ; 11360 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9370  .byte C8 99 F3 FF 71 74 AD 29 F7 67 0C 29 8E 8F 1E 1E   ; 11370 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9380  .byte 46 CE 9F FE 8E A4 68 48 BC 3C 62 48 70 78 F0 F0   ; 11380 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9390  .byte 00 00 00 00 0F 3F 5E B0 00 00 00 00 00 0F 3F 7F   ; 11390 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  93A0  .byte 00 00 00 00 C0 FF 3F 17 00 00 00 00 00 C0 DF EF   ; 113A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  93B0  .byte 00 04 1E 2B DF FB E9 02 00 00 04 1E 3E FE FE FC   ; 113B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  93C0  .byte 17 36 37 6B FB 7B 37 2F 0F 0F 07 17 47 07 0F 1F   ; 113C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  93D0  .byte FF FF 01 C1 FF F0 E0 D0 FE FE FE 3E C0 E0 C0 A0   ; 113D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  93E0  .byte 80 8B 94 E0 80 00 00 00 7F 74 60 80 00 00 00 00   ; 113E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  93F0  .byte 00 01 01 01 01 0F 1F FF 00 00 00 00 00 00 0E 1F   ; 113F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9400  .byte BA 7A 7A 72 67 EF F7 F7 7D FD FD FD F8 73 03 43   ; 11400 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9410  .byte 88 94 B4 9E FF FE E4 E8 70 78 78 70 0A E0 F8 F0   ; 11410 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9420  .byte F0 EF D0 FE DF 6A 3F 06 7F 70 60 70 7E 3C 06 00   ; 11420 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9430  .byte 3B F7 06 0A 11 0F 00 00 D1 03 03 07 0F 00 00 00   ; 11430 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9440  .byte A0 40 80 FE FF 39 DF 30 C0 80 00 00 FE E7 30 00   ; 11440 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9450  .byte 00 00 00 00 07 19 7B F7 00 00 00 00 00 07 1F 7F   ; 11450 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9460  .byte 00 00 00 F8 06 81 E1 C0 00 00 00 00 F8 FE FE FF   ; 11460 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9470  .byte 00 00 00 00 00 3E C1 7E 00 00 00 00 00 00 3E BF   ; 11470 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9480  .byte 00 06 1F 2D 53 AF BC 7F 00 00 06 1F 3F 7F 7F FF   ; 11480 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9490  .byte 00 B0 F8 76 E9 DD 3D EA 00 00 B0 F8 FE FE FE FC   ; 11490 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  94A0  .byte 7C F8 7C 3E 19 05 0B 0B 0F 47 13 01 07 03 07 07   ; 114A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  94B0  .byte E7 FF FF F8 E4 EF CE D8 FF FF FF FF FF FE F0 E0   ; 114B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  94C0  .byte FF FF 9F 1C 3C FF 38 10 F3 F3 EB EB C3 18 10 00   ; 114C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  94D0  .byte FF FD C3 07 38 C4 03 00 FF FF FF FF C7 03 00 00   ; 114D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  94E0  .byte E5 E5 C5 12 6C 80 00 00 FE FE FE EC 80 00 00 00   ; 114E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  94F0  .byte 00 00 03 0F 7F FC 60 DF 00 00 00 03 0F 7F FF E0   ; 114F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9500  .byte 5E 5C 58 B9 F3 FE FA 7E 3F 3F 3F 7E 3C 01 20 84   ; 11500 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9510  .byte 94 22 26 4F FF 9F 8E AC E8 DC DC BE 00 6A 70 70   ; 11510 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9520  .byte 2C 7B F4 EA EA 75 29 06 1F 3C 78 7C 7C 2E 06 00   ; 11520 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9530  .byte FD 05 0A 13 09 06 01 00 03 03 07 0E 07 01 00 00   ; 11530 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9540  .byte A0 40 B0 C8 FE 0D FE 60 C0 80 00 30 F0 FE 60 00   ; 11540 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9550  .byte 00 00 00 00 0D 0A 00 42 00 00 00 00 3D CA C0 3C   ; 11550 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9560  .byte 3F 01 12 20 00 00 00 00 40 7E 6C 40 00 00 00 00   ; 11560 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9570  .byte 00 00 03 0C 13 2C 5C B8 00 00 00 03 0F 1F 3F 7F   ; 11570 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9580  .byte 00 00 C8 3E 81 6B 7F 02 00 00 00 C8 FE 94 80 FC   ; 11580 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9590  .byte B9 B9 B1 BF FF DF 61 38 7E 7E 7E 40 0F 5F 1F 07   ; 11590 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  95A0  .byte 01 01 03 3E EC E6 FD 3B FE FE FC C1 3B FD FE FC   ; 115A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  95B0  .byte 40 5C FE BB 25 9D 79 C6 80 80 1C 7E FE 7E 86 00   ; 115B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  95C0  .byte 04 04 05 02 02 06 5F FF 03 03 03 01 01 01 06 5F   ; 115C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  95D0  .byte 7C 0F 84 E4 C4 CB CB FF 83 FC FB FB FB F1 71 03   ; 115D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  95E0  .byte F0 38 7C 1E 3E FF CE 0C 00 F0 F8 F8 C0 EA F0 F0   ; 115E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  95F0  .byte F0 EC FB DF 4F E7 78 23 7F 73 60 78 FF 7F 23 00   ; 115F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9600  .byte 7F 3F F6 13 8F 40 40 80 A1 D3 0F 0F 00 80 80 00   ; 11600 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9610  .byte 38 FE FF 0E E7 F8 30 00 C0 00 FE FF F8 30 00 00   ; 11610 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9620  .byte 0D 0A 00 40 38 90 A0 40 7D DA 40 38 C0 60 40 00   ; 11620 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9630  .byte 00 00 1F 20 5F 60 FF FF 00 00 00 1F 20 3F 7F 7F   ; 11630 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9640  .byte 00 00 80 60 98 66 11 90 00 00 00 80 60 98 EE EF   ; 11640 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9650  .byte 7F 7E 7C 28 10 0F 01 81 3F 3F 3F 1F 0F 00 00 00   ; 11650 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9660  .byte F2 7A 7B 7B 7B FB FB E3 FD FD FC FC FC 7C 7C 7E   ; 11660 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9670  .byte 10 90 78 18 86 E1 99 87 E0 60 80 E0 F8 FE 7E 7E   ; 11670 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9680  .byte 0F 5F FF FF 78 FC E5 E6 00 0F 4F 57 07 73 7A 79   ; 11680 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9690  .byte FF C1 92 1F 03 82 84 89 00 FF ED E0 FC 7D FB F7   ; 11690 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  96A0  .byte E7 7F E7 E7 E7 E7 E2 F3 81 A7 5F DF 1F 5F 1F 84   ; 116A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  96B0  .byte B7 6F 6F 9F DF 0C 18 E7 FC FE FF FF FF FF E7 00   ; 116B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  96C0  .byte E1 D9 E7 B2 9C 30 40 80 3E 3E 9E CC E0 C0 80 00   ; 116C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  96D0  .byte 7B F4 F4 B4 E9 51 01 00 1C 78 78 78 50 00 00 00   ; 116D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  96E0  .byte 95 5B 57 AF 3F 7E 38 80 7B 37 3F 7F FF FF FF 7F   ; 116E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  96F0  .byte E7 CF 8E 18 11 31 49 B7 F8 F0 F1 E7 EE CE 86 4F   ; 116F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9700  .byte 86 78 30 0F 0B 08 0A 0E 79 07 0F 00 04 07 07 07   ; 11700 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9710  .byte 6D 32 DC F0 F8 F0 20 40 9E CC 20 00 50 00 C0 80   ; 11710 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9720  .byte 00 06 05 22 10 0A 16 12 30 66 65 DA EC F4 E8 EC   ; 11720 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9730  .byte 08 05 8B 89 72 04 58 20 F6 FA 74 76 8C F8 20 00   ; 11730 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9740  .byte 01 07 0F 07 07 33 7B E5 00 00 04 00 01 01 01 18   ; 11740 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9750  .byte E3 FC FF FF A3 80 D0 D2 3C 1F 9F 1F DF FF EF EF   ; 11750 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9760  .byte 60 F8 CE 99 1A 05 03 01 00 60 F8 E6 E5 FA FC FF   ; 11760 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9770  .byte 00 00 01 03 87 86 8F 5F 00 00 00 01 03 03 03 8F   ; 11770 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9780  .byte 3A 33 7D FD F6 E8 C8 90 1C 1E 1E 7E F8 F0 F0 60   ; 11780 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9790  .byte 1E 3E 3E 3D 7B 77 F5 F5 07 07 0F 0E 1D 1B 3B 3B   ; 11790 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  97A0  .byte 7B 7D 79 FE 5E A9 D7 F7 9C 9E BE 1D 81 C7 EF EF   ; 117A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  97B0  .byte 40 40 40 40 61 D6 D2 D5 FF FF FF FF FE E8 EC EE   ; 117B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  97C0  .byte 37 3F 5F 8E 4E 3F 0E 02 DB DB B3 75 31 04 04 00   ; 117C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  97D0  .byte FD CD F0 FC 78 31 1E 00 3E 3E 3F 3F 1F 1E 00 00   ; 117D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  97E0  .byte 77 3F BF FF FE F8 7B 1C EF EF 4F 0F 4F 67 1C 08   ; 117E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  97F0  .byte D3 D7 93 31 4B 87 0F 0E EF EF EF CE 84 02 07 07   ; 117F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9800  .byte 68 F4 7C 3E 7F FE E8 C8 F0 F8 E0 D4 96 40 F0 F0   ; 11800 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9810  .byte 64 64 C8 DE FF 43 3F 0E 38 38 70 60 7E 3E 0E 00   ; 11810 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9820  .byte 0D 0A 00 30 0F 05 05 4A 7D CA 70 4F F0 FA 7A 34   ; 11820 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9830  .byte 0C 13 7F FF 7C 74 F6 E6 03 0F 0F 57 03 3B 79 79   ; 11830 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9840  .byte FE 01 9A 87 00 00 00 C0 00 FE E5 F8 FF FF FF FF   ; 11840 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9850  .byte F4 0A D6 3F 02 01 01 01 00 F4 28 C0 FC FE FE FE   ; 11850 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9860  .byte 52 B4 FA 64 39 01 01 00 3C 78 7C 38 00 00 00 00   ; 11860 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9870  .byte 50 20 58 87 7F FF 7E 80 3F 1F 3F 7F FF FF FF 7F   ; 11870 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9880  .byte 08 18 0F 1F FF DE 17 D3 F0 E0 F8 E3 E0 E7 EF 2F   ; 11880 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9890  .byte 00 00 00 80 01 83 43 A7 00 00 00 00 00 01 83 C3   ; 11890 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  98A0  .byte 9C EE EE CF DD BD 62 9C 08 9C DC FE FE FE FC E0   ; 118A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  98B0  .byte FF 60 10 09 07 09 0B 0A 00 1F 0F 06 00 06 07 07   ; 118B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  98C0  .byte 63 39 76 F1 F8 F0 20 40 9F C7 E1 00 50 00 C0 80   ; 118C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  98D0  .byte CF AE FD 7A BD BA 54 48 87 C7 CF EF 7E 7C 38 30   ; 118D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  98E0  .byte 32 64 68 EF 9F 62 1D 03 1C 38 30 70 7F 1F 03 00   ; 118E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  98F0  .byte 40 80 00 F8 FC 46 BB 66 80 00 00 00 F8 FC 66 00   ; 118F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9900  .byte 0D 0A 40 31 0E 12 EC 10 FD CA B0 CE F0 EC 10 E0   ; 11900 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9910  .byte 18 87 89 76 88 70 A0 40 E7 78 76 88 70 00 40 80   ; 11910 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9920  .byte 1F 7C FF 77 70 7A 3B 3B 00 13 43 1B 3F 3D 1C 1C   ; 11920 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9930  .byte C0 38 C6 FF 30 03 80 60 00 C0 F8 FE FF FC 7F 9F   ; 11930 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9940  .byte 00 00 B0 FC 0A D5 1D 06 00 00 00 B0 FC 2A C2 FC   ; 11940 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9950  .byte 06 0D 1D 1E 3A 3D 6D ED 00 06 0E 0F 1F 1B 3B 7B   ; 11950 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9960  .byte 3B 3D 79 BE 8E 45 AB D7 1C 1E 3E 0D 01 83 C7 EF   ; 11960 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9970  .byte 00 00 40 C0 E3 C5 C4 E2 FF FF FF FF FC F8 F8 FC   ; 11970 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9980  .byte 0E 0E 1F 3E DE 46 3D BD FC FC E2 F8 3C 3C 1E 1E   ; 11980 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9990  .byte EB EB 73 6C 28 10 00 00 7E 5E 3C 30 10 00 00 00   ; 11990 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  99A0  .byte 77 7F 7F FE F0 79 3E 38 EF CF 8F 0F 6F 26 18 10   ; 119A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  99B0  .byte D2 93 11 31 4F 8F 0F 0E FF EF EF CE 80 06 07 07   ; 119B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  99C0  .byte A9 F6 78 78 FC F8 D0 90 C6 E0 E0 80 28 80 E0 E0   ; 119C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  99D0  .byte 3A 74 74 6F F9 7E 3F 01 1C 38 38 30 7F 3F 01 00   ; 119D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  99E0  .byte 40 80 80 F8 3C CE FF 36 80 00 00 00 F8 FC 36 00   ; 119E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  99F0  .byte 00 00 00 18 34 6A F7 BB 00 00 00 00 18 3C 7E 7E   ; 119F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A00  .byte 00 00 00 00 05 1F 2F DC 00 00 00 00 00 05 1C 3B   ; 11A00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A10  .byte 02 04 05 0B B6 CC BE 7F 01 03 03 07 0F B3 79 F8   ; 11A10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A20  .byte 4B 92 B4 64 C8 88 D0 E0 3E 7C 78 F8 F0 70 20 00   ; 11A20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A30  .byte 0A 15 25 25 7D FD 7B 17 05 0B 1B 1B 03 53 07 0F   ; 11A30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A40  .byte DF FE E0 F1 EE C4 88 90 FF FF DF EE F0 F8 F0 E0   ; 11A40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A50  .byte F7 C6 08 30 C0 80 00 00 FA F8 F0 C0 00 00 00 00   ; 11A50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A60  .byte 01 02 02 02 0F 1F 3F FB 00 01 01 01 01 0C 1C 3D   ; 11A60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A70  .byte 72 F4 E5 C9 8F 1F EE FC FD FB FB F7 F0 E6 07 4F   ; 11A70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A80  .byte 28 44 5E 9E FF FE E4 C8 D0 B8 BC 78 02 68 78 F0   ; 11A80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9A90  .byte 7C 71 6E DE D3 ED 7F 36 3F 3E 30 70 7E 7F 36 00   ; 11A90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9AA0  .byte 76 EE 0D 1D 1E 8F 01 00 83 07 06 0E 0F 01 00 00   ; 11AA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9AB0  .byte 40 80 00 F8 7E 8F FE 60 80 00 00 00 F8 FE 60 00   ; 11AB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9AC0  .byte 00 00 A0 20 13 12 B1 6C 0C 16 52 D2 EB EA 49 90   ; 11AC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9AD0  .byte 22 22 16 0D 5F 30 40 80 1D 1D 29 72 20 40 00 00   ; 11AD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9AE0  .byte 00 00 00 00 04 3E 6F DF 00 00 00 00 00 04 30 60   ; 11AE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9AF0  .byte 3F 7F FC 4B FA 5C 08 00 01 3F 7F 3C 4C 08 00 00   ; 11AF0
  9B00  .byte A7 2F 4F CF 4E 45 A1 81 DE DE BE 3F 3F 3E 7E 7E   ; 11B00
  9B10  .byte 70 F0 F8 FC E6 52 1B 1B E0 E0 E0 F8 FC EC E6 E6   ; 11B10
  9B20  .byte 05 05 0D 12 2C 5C B8 B8 03 03 03 0F 1F 3F 7F 7F   ; 11B20
  9B30  .byte 02 02 03 00 00 21 3E 38 FD FD FC FF FF DE C0 C0   ; 11B30
  9B40  .byte 12 16 1B 06 04 08 F0 C0 EC E8 E6 FC F8 F0 00 00   ; 11B40
  9B50  .byte 07 07 0B 17 17 2D 68 93 03 03 05 0C 0D 1E 1F 7C   ; 11B50
  9B60  .byte C1 D3 93 2B F7 E7 EC 49 FF EF EF C4 09 5C 1F 3E   ; 11B60
  9B70  .byte 0A 9E 9E 5E BF 3E 64 48 FC 7C 78 20 4A E0 F8 F0   ; 11B70
  9B80  .byte 2C 3B 74 77 EF E4 7F 37 1F 1C 38 38 7F 7F 37 00   ; 11B80
  9B90  .byte 8B 0A 0B 97 EF 9F C1 80 07 07 06 0E 8F 01 80 00   ; 11B90
  9BA0  .byte 40 80 3C FE 07 ED F3 00 80 00 00 3C FE F3 00 00   ; 11BA0
  9BB0  .byte 0D 0A 00 20 1E 02 48 3C 7D DA 61 1E 60 7C 34 00   ; 11BB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9BC0  .byte 04 0C 04 00 00 00 00 00 18 00 08 00 00 00 00 00   ; 11BC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9BD0  .byte 10 10 10 18 1C 3E 7E 7B 10 10 10 10 08 1C 3E 3E   ; 11BD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9BE0  .byte 00 03 0D 17 3E 7C B8 FD 00 00 03 0F 1F 1F 07 02   ; 11BE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9BF0  .byte E1 FE 83 25 1F 01 81 80 00 E0 FE DA E1 FF 7F 7F   ; 11BF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C00  .byte 6C BC 7A 7A FB 77 7F 3E 38 08 8C 8C 4C CA C0 C4   ; 11C00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C10  .byte EF EB 6C 6B 37 3D 39 3F 73 77 33 30 18 1E 1E 0C   ; 11C10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C20  .byte 05 87 C6 40 40 69 75 7B FA F8 F9 FF FF F6 FA FC   ; 11C20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C30  .byte FC F6 3F 76 E6 CC 90 A0 00 10 F2 F8 78 F0 E0 C0   ; 11C30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C40  .byte 7D 60 60 C0 C0 80 00 00 00 00 00 00 00 00 00 00   ; 11C40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C50  .byte C6 E3 73 3B 1D 13 16 16 FD 7E 3E 1C 02 0C 0F 0F   ; 11C50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C60  .byte 40 70 FC DA DD F9 B6 80 80 80 70 7C BE 36 00 00   ; 11C60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C70  .byte E8 D0 D3 5F 7C 5F 4F 30 70 60 60 23 3F 3F 30 00   ; 11C70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C80  .byte 00 6E 9D F9 1E E0 C0 00 00 00 6E FE E0 C0 00 00   ; 11C80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9C90  .byte 0D 0A 00 60 1C 0A 0A 74 6D 9A E0 1E 20 34 74 08   ; 11C90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9CA0  .byte 00 0C 04 04 00 00 00 00 38 10 08 00 00 00 00 00   ; 11CA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9CB0  .byte 20 20 20 20 20 30 28 74 20 20 20 20 20 20 10 38   ; 11CB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9CC0  .byte 07 07 02 01 01 01 31 FF 03 03 01 00 00 00 00 30   ; 11CC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9CD0  .byte F4 D8 A8 74 74 7A 7A F3 F8 F0 50 18 18 1C 1C 1C   ; 11CD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9CE0  .byte 0F 1E 2E 2F 5E 7C F9 7E 03 0F 1F 1F 3F 0F 56 01   ; 11CE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9CF0  .byte 26 CB 3E 02 86 87 06 06 FD 64 C1 FD 79 78 F8 F8   ; 11CF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D00  .byte 67 BF EF 26 68 70 60 60 D8 40 12 D8 90 80 80 80   ; 11D00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D10  .byte F9 7D 1F 0F 03 02 07 07 1E 1E 0E 03 01 01 00 00   ; 11D10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D20  .byte 0E C7 64 D3 98 34 FA 3B F0 38 DB EF E7 DB 3D FC   ; 11D20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D30  .byte 7C 9E 77 B2 64 68 C8 D0 00 60 CA BC F8 F0 70 E0   ; 11D30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D40  .byte E9 C4 C3 83 07 07 07 07 07 03 00 00 03 03 03 03   ; 11D40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D50  .byte DB DA FD FF FF 93 A0 A0 EC EC 0C 57 83 E0 C0 C0   ; 11D50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D60  .byte C0 80 F0 FC CE FD 36 00 00 00 00 F0 FC 36 00 00   ; 11D60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D70  .byte 64 68 68 6F BF 9C 7F 03 70 30 30 30 7F 7F 03 00   ; 11D70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D80  .byte 00 00 00 E0 FE 1D F9 E6 00 00 00 00 E0 FE E6 00   ; 11D80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9D90  .byte 34 28 00 00 62 18 0C 8C 34 68 00 70 1C 60 F0 70   ; 11D90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9DA0  .byte 58 78 10 18 28 00 10 00 20 00 60 60 10 30 00 00   ; 11DA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9DB0  .byte 00 00 00 00 00 00 30 68 00 00 00 00 00 00 00 30   ; 11DB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9DC0  .byte ED FA 7E 39 1D 0C 0E 0E 72 7D 39 0E 0E 07 07 07   ; 11DC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9DD0  .byte 00 C0 F0 78 3C FC FE 6B 00 00 C0 E0 C0 00 0C FE   ; 11DD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9DE0  .byte 74 7F BC B0 B0 B0 B0 B8 3B 04 63 7F 7F 7F 7F 7F   ; 11DE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9DF0  .byte 96 FE 8E 01 06 02 02 04 68 80 70 FE F8 FC FC F8   ; 11DF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E00  .byte B8 58 28 2C 2C 2C 5D 59 7F 3F 1F 1F 1F 1F 3E 3E   ; 11E00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E10  .byte 10 20 10 10 30 0C 5E 4F E0 C0 E0 E0 C0 F0 BC BE   ; 11E10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E20  .byte 0B 0E 1E 3F 7F 7B 73 EC 07 07 07 18 3A 3D 3C 70   ; 11E20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E30  .byte 23 23 67 59 96 94 15 1D DE DC 99 86 0F 0F 0E 0E   ; 11E30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E40  .byte 1E 1F 3E CE B4 A4 A8 E8 F0 E2 C8 30 78 78 70 70   ; 11E40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E50  .byte E8 D0 EF DF E8 67 3D 03 70 60 70 7F 7F 3F 03 00   ; 11E50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E60  .byte 0D 0D 1D 9F CF 87 C0 80 06 06 0E 0F 87 00 80 00   ; 11E60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E70  .byte 00 00 F8 F4 3A CD FE 60 00 00 00 F8 FC FE 60 00   ; 11E70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E80  .byte 00 00 00 1A 14 00 00 00 00 00 00 1A 14 00 00 00   ; 11E80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9E90  .byte 00 00 00 40 20 40 00 00 00 00 00 00 40 80 80 80   ; 11E90
  9EA0  .byte 00 00 0F 3F 77 F9 BE 9F 00 00 00 0F 38 7E 7F 7E   ; 11EA0
  9EB0  .byte 00 18 FE E5 EB 3F CF FF 00 00 18 FE 15 C0 F0 CF   ; 11EB0
  9EC0  .byte C0 D8 BC FE FD 12 44 B8 80 00 18 B8 F6 FC B8 00   ; 11EC0
  9ED0  .byte 08 0A 09 04 1A 27 5F BF 07 05 06 03 07 1F 3F 7F   ; 11ED0
  9EE0  .byte FF 7E E0 F7 3A 90 10 18 9F 9F 5F 08 C0 E0 E0 F0   ; 11EE0
  9EF0  .byte 18 1C 1E 0F FF 3F 7E F0 F0 F8 FC F8 00 E2 F0 E0   ; 11EF0
  9F00  .byte 3F 7F FC 7F 3C 3C 3D 1D 0F 07 53 00 07 1F 1E 0E   ; 11F00
  9F10  .byte C1 01 30 CF 93 A7 2F 2E FF FF CF 00 0E 1F 1E 1C   ; 11F10
  9F20  .byte 03 01 01 3F 7E F3 FF 6E 01 00 00 00 3F 7F 6E 00   ; 11F20
  9F30  .byte A5 AB D7 CF F1 C0 80 00 C3 C6 EF F1 C0 80 00 00   ; 11F30
  9F40  .byte 80 F8 F4 9A E7 7E 30 00 00 00 F8 FC 7E 30 00 00   ; 11F40
  9F50  .byte 00 00 00 18 12 44 20 10 00 00 00 78 52 24 10 08   ; 11F50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9F60  .byte 00 00 01 03 06 1E 7E FF 00 00 00 01 03 03 1D 7E   ; 11F60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9F70  .byte 0C FF FF F8 EA E9 74 3A 00 0C FF FF F5 F6 FB FD   ; 11F70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9F80  .byte C0 F8 FC 86 AD 9B 4E A2 00 C0 F8 FC 56 64 B0 DC   ; 11F80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9F90  .byte 7F FE F8 FC F3 72 7A 3A 3F 0F A7 03 7C 3C 3C 1C   ; 11F90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9FA0  .byte A7 27 1F 7F C7 81 F2 EC DC D9 E2 81 38 7E 7C 70   ; 11FA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9FB0  .byte C8 BC D6 D6 EA FF 37 37 30 40 EC EC F4 3E 19 19   ; 11FB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9FC0  .byte 03 03 01 3F FF FC 73 0C 01 01 00 01 3F 7F 0C 00   ; 11FC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9FD0  .byte 4D 5B BF 9E 27 C1 00 00 86 8C CF E7 C1 00 00 00   ; 11FD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9FE0  .byte 01 00 E0 7C 9E FD 6E 00 00 00 00 E0 FC 6E 00 00   ; 11FE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  9FF0  .byte 1F 0E 00 C0 E0 D0 E0 00 0E 00 00 00 C0 E0 00 00   ; 11FF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A000  .byte 04 02 02 02 06 0C 11 00 08 1C BC BC F9 73 0E 1F   ; 12000 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A010  .byte 32 61 89 05 86 46 3A 04 CC 9E 76 FA 78 38 44 08   ; 12010 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A020  .byte 00 00 00 0C 1F 3C 78 D0 00 00 00 00 00 03 47 6F   ; 12020 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A030  .byte 00 00 00 60 F8 E4 C2 83 00 00 00 00 00 18 3C 7C   ; 12030 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A040  .byte 68 60 70 3C 78 F0 E2 FC 37 3F 3F 1F 3F 7F 7D 03   ; 12040 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A050  .byte 0C 02 01 01 00 07 07 07 F0 FC FE FE FF F8 F9 FB   ; 12050 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A060  .byte 30 08 04 04 02 1F 1F 1D C0 F0 F8 F8 FC E0 E4 EE   ; 12060 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A070  .byte FF 6F 21 1E 03 05 0B 17 4E 1F 1F 01 00 03 07 0F   ; 12070 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A080  .byte FC FB 33 DF 66 B8 78 F2 C3 FC FE 3E 19 67 FF FD   ; 12080 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A090  .byte E8 D0 A0 20 D0 E8 7E 1F 70 E0 C0 C0 20 F0 F0 EA   ; 12090 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A0A0  .byte F8 E1 FE E4 E4 74 34 34 3F 1E A0 18 78 38 18 18   ; 120A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A0B0  .byte 3E F2 72 74 74 69 6F 79 C0 3C 3C 38 38 30 31 3F   ; 120B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A0C0  .byte D0 A7 BE E7 F8 3F 07 03 E0 C0 C7 FF 3F 06 03 00   ; 120C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A0D0  .byte 00 70 EC 7A 8D FE 78 30 00 00 70 FC FE 60 30 00   ; 120D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A0E0  .byte 0D 3E 7D EA CC DC E8 40 06 07 3E 7C 78 68 40 00   ; 120E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A0F0  .byte 00 08 30 30 9C 9E 72 5C 0E 37 4C CE 63 61 0C 20   ; 120F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A100  .byte 00 34 0A 00 10 8E 80 00 80 F4 0A 80 CE 40 20 10   ; 12100
  A110  .byte 00 01 03 3F 7E 64 DB 7A 00 00 01 03 3F 3F 6C 0C   ; 12110
  A120  .byte 78 F8 FD DF 5F 4C A2 52 10 40 98 BC BF BF 1D 3D   ; 12120
  A130  .byte 00 80 E0 F0 1F 02 3D 1F 00 00 80 00 F0 FF C2 E0   ; 12130
  A140  .byte 7C 0A F5 7E 3C B8 D8 A8 C0 FC 0A 80 C0 40 20 10   ; 12140
  A150  .byte E2 42 01 01 02 05 0F 1F 41 01 00 00 01 03 07 0F   ; 12150
  A160  .byte C8 CF 79 6F FE CA 9D 2E B7 B0 C6 D0 C0 F4 EE DF   ; 12160
  A170  .byte F8 F1 F6 FA 73 75 75 36 7F 1E A8 04 3C 38 38 19   ; 12170
  A180  .byte 1A 8F 7F 9F 24 68 50 A0 FC 78 05 60 F8 F0 E0 C0   ; 12180
  A190  .byte 06 07 1F 3A 75 6A F4 68 03 03 07 1F 3E 3C 68 00   ; 12190
  A1A0  .byte D8 5F 7F 9C 07 03 00 00 30 B0 9F 07 03 00 00 00   ; 121A0
  A1B0  .byte 00 F0 FC 8E FF 6E 00 00 00 00 F0 FC 6E 00 00 00   ; 121B0
  A1C0  .byte 1A 14 00 20 1E 86 9C 78 7A 94 E0 1C E0 78 60 00   ; 121C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A1D0  .byte 08 18 08 00 00 00 00 00 70 20 00 00 00 00 00 00   ; 121D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A1E0  .byte 68 F4 7A FA 7C 7A 7A 7D 10 78 3C 5C 18 1C 0C 0E   ; 121E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A1F0  .byte 01 0E 11 2E 5E 5C B8 F2 00 01 0F 1F 3F 3F 7F 0D   ; 121F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A200  .byte 9F 7A 00 D7 3D 80 01 03 07 87 FF 28 C2 FF FE FC   ; 12200 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A210  .byte 40 61 E1 F0 E0 A0 F8 7C 80 80 00 A0 00 00 20 88   ; 12210 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A220  .byte F1 F7 97 D7 77 77 7A 3A 20 B9 F9 7B 3B 3B 31 11   ; 12220 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A230  .byte 90 78 74 76 75 75 AA AA 00 90 98 BC BE BE 1C 1C   ; 12230 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A240  .byte FD 7A 5D 27 1B 05 02 02 42 1D 3E 1E 07 03 01 01   ; 12240 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A250  .byte 03 07 06 C7 F7 5F FF 3F FC F9 FB 38 CB B7 EF DF   ; 12250 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A260  .byte 3F 39 FF FF FF F3 F0 2F D6 C7 20 8F AF CF CF C0   ; 12260 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A270  .byte 9D FB FB FF FE 06 F9 06 08 8C FD 03 FF FF 06 00   ; 12270 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A280  .byte ED DD DA FA F4 34 C8 30 46 66 EC 1C F8 F8 30 00   ; 12280 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A290  .byte 7F 40 E0 DF C0 00 00 00 0F 3F 1F 00 00 00 00 00   ; 12290 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A2A0  .byte F1 02 0C F0 00 00 00 00 FE FC F0 00 00 00 00 00   ; 122A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A2B0  .byte 1A 14 00 00 26 02 00 00 FA 94 60 1C 00 00 00 00   ; 122B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A2C0  .byte 00 30 78 FC 4C FA 7A 3A 00 00 30 78 38 4C 0C 0C   ; 122C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A2D0  .byte 00 00 03 0F 10 2D 5E BC 00 00 00 03 0F 1E 3F 7F   ; 122D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A2E0  .byte 1D 1E 7E FE 17 AF 7F 8F 06 07 07 77 F8 51 80 70   ; 122E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A2F0  .byte 00 80 40 C0 E3 C6 9F F9 00 00 80 00 40 03 03 1F   ; 122F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A300  .byte 00 00 00 00 18 34 FA C9 00 00 00 00 00 18 1C FE   ; 12300 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A310  .byte 3E 78 FD 72 7D 26 1B 07 1F 07 52 0D 1E 1F 07 01   ; 12310 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A320  .byte 59 FD FF FF AF AF 67 57 A6 0A 21 1C 5E 5E 9F AF   ; 12320 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A330  .byte 9F F7 D5 D7 D7 F7 FF 7F 6B 7D BE FD 7D BD 7B 9B   ; 12330 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A340  .byte EB EA AA FC F4 F4 E8 E8 7E BC DC B8 B8 B8 70 70   ; 12340 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A350  .byte 0F 1F 1D 1C 1E 31 60 A0 02 0A 0B 0B 01 00 00 00   ; 12350 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A360  .byte 4D B2 CF 09 11 EE 00 00 BE CF 71 F6 EE 00 00 00   ; 12360 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A370  .byte 6D AD FA 48 70 80 00 00 B6 F2 70 B0 80 00 00 00   ; 12370 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A380  .byte 00 00 00 00 00 0D 0A 80 00 00 00 00 18 FD 9A 60   ; 12380 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A390  .byte 30 8E 8A 74 38 08 20 00 CF 70 74 08 00 30 00 00   ; 12390 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A3A0  .byte 01 03 07 0F 0F 1F 7D F3 00 01 00 05 06 0E 1E 7C   ; 123A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A3B0  .byte 00 C0 B0 CF F0 F8 79 30 00 00 40 70 7F 7F FE FF   ; 123B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A3C0  .byte 00 00 00 60 9C 02 97 7F 00 00 00 00 60 F8 68 81   ; 123C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A3D0  .byte 00 00 0C 1E 3F B3 FA FE 00 00 00 0C 1E 1E 3C 7C   ; 123D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A3E0  .byte F6 72 44 38 00 00 30 78 78 3C 38 00 00 00 00 30   ; 123E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A3F0  .byte 04 7C 24 2E 16 16 2C 2B 7F 07 1F 1F 0F 0F 1F 1F   ; 123F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A400  .byte 02 04 04 09 1F 1F 7E FF FD FB FB F6 E1 E4 E0 E8   ; 12400 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A410  .byte 5B 92 94 38 F0 E0 C0 E0 AC 6C 68 C0 20 80 00 00   ; 12410 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A420  .byte 06 0D 19 36 32 7A 74 C8 00 06 0E 1C 1C 3C 38 70   ; 12420 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A430  .byte 01 03 1E 3C 79 E2 94 68 00 01 03 1F 3E 7C 68 00   ; 12430 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A440  .byte FF 1F E3 97 0F 03 03 00 F0 FE 1C 08 02 00 02 00   ; 12440 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A450  .byte BF 9F 80 40 3F 0C F0 00 7F 7F 7F BF C0 F0 00 00   ; 12450 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A460  .byte FF 3F 23 C0 3F 00 00 00 C6 CF DF 3F 00 00 00 00   ; 12460 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A470  .byte 87 E6 FD 3D CA 22 14 08 03 83 E6 FE 3C 1C 08 00   ; 12470 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A480  .byte 0D 0A 80 60 1E 92 54 68 FD 5A 60 9E E0 6C 28 10   ; 12480
  A490  .byte 00 00 00 00 30 78 E8 76 00 00 00 00 00 30 70 38   ; 12490
  A4A0  .byte 14 3E 3D 6D FA 74 34 3A 00 14 1E 1E 7C 38 18 1C   ; 124A0
  A4B0  .byte 1F 1C 3B 3A 7A 72 77 FF 0F 0F 1C 1C 3C 3C 1A 43   ; 124B0
  A4C0  .byte C7 83 01 01 39 C7 00 A5 83 01 00 00 00 38 FF DA   ; 124C0
  A4D0  .byte 3A FA 1E BF F7 06 0C 30 1C 1C E0 52 18 F8 F0 C0   ; 124D0
  A4E0  .byte FE 5C 20 16 13 09 05 05 0F 3F 1F 0F 0F 07 03 03   ; 124E0
  A4F0  .byte 3F 00 00 03 04 08 08 90 C1 FF FF FC F8 F0 F0 E0   ; 124F0
  A500  .byte 00 18 3C 3F 37 33 79 EC 00 00 18 18 1F 1F 37 73   ; 12500
  A510  .byte 2F 5C BF 8F 80 C0 FF C1 1C 33 7F 7F 7F BF 80 3E   ; 12510
  A520  .byte E0 38 FC F8 74 F4 BA 9C 00 C0 C8 A0 88 38 7C 7C   ; 12520
  A530  .byte 00 00 00 02 07 1D 3E 7A 00 00 00 00 02 06 18 3C   ; 12530
  A540  .byte 75 E4 D8 60 00 00 00 00 3C 78 60 00 00 00 00 00   ; 12540
  A550  .byte B8 7B 3C 10 00 00 00 00 57 04 10 00 00 00 00 00   ; 12550
  A560  .byte 93 09 04 03 00 00 00 00 0F 07 03 00 00 00 00 00   ; 12560
  A570  .byte DD FA F4 74 A8 88 90 60 8E 9C D8 F8 70 70 60 00   ; 12570
  A580  .byte 00 00 C0 30 EC 13 10 20 00 00 00 C0 10 EC E8 C0   ; 12580
  A590  .byte 01 02 1C 63 80 03 84 44 00 01 03 1C 7F 3C D8 60   ; 12590
  A5A0  .byte 03 0F 1E 37 20 20 40 F0 00 03 0F 18 1F 1F 3F 4F   ; 125A0
  A5B0  .byte F9 F6 8C 03 00 00 01 04 00 C9 73 FC FF FF FF FF   ; 125B0
  A5C0  .byte 80 40 FE FF FB 3D FF 7F 00 80 00 FE 06 FA FC FF   ; 125C0
  A5D0  .byte 00 00 E4 FE BE DE FE FF 00 00 00 E4 60 A8 C0 F2   ; 125D0
  A5E0  .byte C8 65 1F 0F 01 01 01 00 77 3B 0F 01 00 00 00 00   ; 125E0
  A5F0  .byte E5 E6 C4 DC 7F FF C0 E3 FA F8 F8 E0 9C 3F 3F 1C   ; 125F0
  A600  .byte 01 83 7C B4 6A CA 11 E1 FE 7C 03 63 F1 F1 E0 00   ; 12600
  A610  .byte D0 D0 90 98 9F 8F A1 AE A0 20 E0 F0 F8 FF DF C1   ; 12610
  A620  .byte 00 00 00 00 F8 E4 3A CF 00 00 00 00 00 F8 FC 3E   ; 12620
  A630  .byte D0 EF 9F 66 19 06 01 00 60 70 7F 1F 07 01 00 00   ; 12630
  A640  .byte 31 CE E0 90 78 84 78 00 0E 00 C0 E0 F0 78 00 00   ; 12640
  A650  .byte 18 64 0F 32 02 06 00 00 00 18 F0 4D 3D 18 00 00   ; 12650 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A660  .byte 80 40 FF 24 20 60 00 00 00 80 00 D8 D8 80 00 00   ; 12660 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A670  .byte 00 00 00 00 00 10 38 7C 00 00 00 00 00 00 10 00   ; 12670 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A680  .byte 7E F2 E5 76 34 3B 19 1F 00 7C 78 39 1B 1C 0E 08   ; 12680 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A690  .byte 00 60 9C 1B 66 83 00 80 00 00 60 E4 99 7E FF 7F   ; 12690 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A6A0  .byte 0B 19 13 77 EF FE 0E 3C 05 0E 0C 1B 57 0F FF FF   ; 126A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A6B0  .byte C0 E0 D0 D0 D0 D3 DF EC 00 80 20 20 60 60 E3 77   ; 126B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A6C0  .byte 00 00 00 00 36 FD F9 06 00 00 00 00 00 36 FE F8   ; 126C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A6D0  .byte 7F FE FF 73 39 1C 04 03 00 13 47 2F 17 03 03 00   ; 126D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A6E0  .byte 01 84 7C BB F4 08 30 C0 FF 7F BF FC F8 F0 C0 00   ; 126E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A6F0  .byte F3 E3 45 08 F0 00 00 00 FC FC F8 F0 00 00 00 00   ; 126F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A700  .byte AF B0 D3 EF BF 8E 71 00 D0 C0 E0 73 7F 71 00 00   ; 12700 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A710  .byte E0 00 F8 E6 FF 8F 76 00 00 00 00 F8 FE 76 00 00   ; 12710 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A720  .byte 04 0A 11 11 17 2F 3F C0 00 02 0E 0E 08 10 40 00   ; 12720 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A730  .byte 00 00 00 80 C0 D2 16 10 00 00 00 00 00 0A 0E 00   ; 12730 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A740  .byte 00 18 3F 7F E4 DF 6E DC 00 00 18 3F 7F 64 04 08   ; 12740 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  A750  .byte 7F EF DF 98 1C DD 5B 6B 0A 71 E0 FF FF 3E 3D 3D   ; 12750
  A760  .byte 0F 9F 7F BF FF F1 EF DF 00 0B 1B 01 38 CE 70 A0   ; 12760
  A770  .byte F8 E8 F2 FA FD FD 7B 79 00 D8 BC 7C 7E 62 9C BE   ; 12770
  A780  .byte 06 38 7F FF C3 BD D3 06 01 07 30 3F 7C 50 01 03   ; 12780
  A790  .byte 7C 83 F9 0B DE B9 77 CF C0 7C 06 F4 61 C7 8F 3F   ; 12790
  A7A0  .byte BB 73 63 61 40 40 80 00 7D FD FD FE FF FF FF FF   ; 127A0
  A7B0  .byte ED DB EF 7F 9F 61 3F 00 D2 A4 70 EE 6E 9E C0 FF   ; 127B0
  A7C0  .byte 79 F9 FA D4 08 38 F4 F4 BE 5E EC E8 F0 C0 18 B8   ; 127C0
  A7D0  .byte 1A 31 7B FF F6 F0 FF 53 0D 1F 07 6F 0F 4F 50 00   ; 127D0
  A7E0  .byte 5C F8 E3 8E 34 C8 F0 E0 FF FF FC F0 C8 30 00 40   ; 127E0
  A7F0  .byte 01 7F B3 75 6B 6A 34 38 FE 80 1C 38 3C 2C 18 00   ; 127F0
  A800  .byte C1 FF 2F 1D 6F 89 4B 3F 7E 2E C0 E0 90 77 37 00   ; 12800
  A810  .byte 7D FD FF 7A FA 74 D8 F0 BE A2 1C 3C 3C D8 E0 00   ; 12810
  A820  .byte 00 00 00 00 0D 3A EC D0 00 00 00 00 0D 3A EC D0   ; 12820
  A830  .byte 00 00 00 00 00 07 0B B3 00 00 00 00 00 00 07 0F   ; 12830
  A840  .byte 00 00 00 1E 7F FE FC F8 00 00 00 00 1A 74 C8 A0   ; 12840
  A850  .byte 02 0D 33 4F 7E F8 F9 F7 01 03 0F 3F 1F 27 86 38   ; 12850
  A860  .byte FF FF FF 7F FF FF FF 7F 3F 7C 71 A1 61 61 61 A1   ; 12860
  A870  .byte C0 B8 87 EF FF 9D 95 F5 80 C0 78 75 70 6E 6E 0E   ; 12870
  A880  .byte B5 5A 5F B7 D6 FC 50 00 78 3C 3E 7A 7C 50 00 00   ; 12880
  A890  .byte 7F FF 7F 7F BF 9F 9F 5F A0 30 10 10 50 68 68 28   ; 12890
  A8A0  .byte CD D7 FE FF FD E7 F1 FC 86 8E 9F 93 87 81 40 50   ; 128A0
  A8B0  .byte BF 9F 5F 7F 3F 2F 2F 17 50 68 28 08 04 14 1A 0A   ; 128B0
  A8C0  .byte FC FC F8 FB F4 FB F7 FF 88 A0 80 50 43 47 2E 2D   ; 128C0
  A8D0  .byte C0 8E B1 4D B2 7E FD F9 00 00 0E 32 7C E0 DE 66   ; 128D0
  A8E0  .byte BF 5F 3F 2F 2E 21 12 0C 68 28 15 1A 1D 1E 0C 00   ; 128E0
  A8F0  .byte FC F3 9C 60 80 00 00 00 B3 8C 60 80 00 00 00 00   ; 128F0
  A900  .byte 44 C6 EE 6E 7C 6C 00 00 44 C6 EE 6E 7C 6C 00 00   ; 12900
  A910  .byte 07 0F 0F 07 07 1B FC 3F 02 06 07 03 03 07 0F D8   ; 12910
  A920  .byte 78 78 F8 F8 F8 6C 9F FE 20 30 70 70 E0 F0 F8 1D   ; 12920
  A930  .byte 08 17 2F 7A 7C FA 69 2A 07 0F 1F 07 13 4D 1E 1C   ; 12930
  A940  .byte FF FF 7F 7F 7F FF FF 7F 40 40 A0 A0 A0 20 20 10   ; 12940
  A950  .byte F6 F7 E7 E1 E8 EE D1 E1 2F 2F 5F 5F 57 51 A0 80   ; 12950
  A960  .byte 60 90 E8 FC 7E 3F 92 54 80 E0 F0 F0 E8 C2 7C 38   ; 12960
  A970  .byte 52 3D 6F AE BC 68 01 01 3C 1E 3A 78 68 00 00 00   ; 12970
  A980  .byte FF 7F 7F FF FF FF 7F 7F 21 21 21 21 21 21 A1 A1   ; 12980
  A990  .byte C7 C6 C7 C3 C1 A0 A0 A0 03 03 02 00 00 40 40 40   ; 12990
  A9A0  .byte 54 E8 DC F6 75 3E 14 00 38 70 78 5C 1E 14 00 00   ; 129A0
  A9B0  .byte 7F FF 7F 5F 5F 3F 3F 3F 08 48 08 28 28 08 08 10   ; 129B0
  A9C0  .byte FE FF FE FA FC FC FC FC 10 12 10 14 10 10 10 08   ; 129C0
  A9D0  .byte 01 0D 1E 2E 61 B6 99 70 00 00 0D 1F 3F 79 70 00   ; 129D0
  A9E0  .byte FE FD FD 79 B6 DF 9C 60 84 7A 87 CF FF FC 60 00   ; 129E0
  A9F0  .byte B8 74 62 45 B2 C4 00 00 00 B8 FC FE C4 00 00 00   ; 129F0
  AA00  .byte 00 00 00 3C 7E C1 DD DD 00 00 00 00 3C 7E 66 66   ; 12A00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA10  .byte 02 0C 11 23 43 87 8F 8F 01 03 0F 1F 3F 7F 7F 7F   ; 12A10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA20  .byte 35 82 C1 80 81 00 00 00 FA FD FE FF FE FF FF FF   ; 12A20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA30  .byte 40 B0 48 34 5A 2D 1D 0D 80 40 B0 C8 A4 D2 E2 F2   ; 12A30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA40  .byte 43 47 47 87 87 87 8F 8F 3F 3F 3F 7F 7F 7F 7F 7F   ; 12A40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA50  .byte C0 C0 C0 C0 C0 C0 80 80 FF FF FF FF FF FF FF FF   ; 12A50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA60  .byte 16 0E 16 0B 17 0B 17 2F E9 F1 E9 F4 E8 F4 E8 D0   ; 12A60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA70  .byte 5A 3A 5A 2D 5D 2D 5D AD A4 C4 A4 D2 A2 D2 A2 42   ; 12A70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA80  .byte 1F 8F D7 7F 3F 1F 07 00 FF 7F 2F 00 00 00 00 00   ; 12A80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AA90  .byte 00 01 02 55 FF FE 81 7E FF FE FD AA 00 01 7E 00   ; 12A90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AAA0  .byte 2E 5D BD FA E4 18 E0 00 D1 A2 42 04 18 E0 00 00   ; 12AA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AAB0  .byte 10 0E 02 00 00 00 00 00 10 2E 0A 46 43 43 04 08   ; 12AB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AAC0  .byte 00 00 06 08 10 10 10 20 08 08 70 40 60 60 20 40   ; 12AC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AAD0  .byte 00 08 54 B4 D4 94 D4 68 00 00 08 58 78 78 78 30   ; 12AD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AAE0  .byte 68 F4 F4 74 74 FC B4 B2 30 78 78 38 38 00 78 7C   ; 12AE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AAF0  .byte B2 AE 52 7D B9 BC BC 7B 6C 50 2C 02 47 43 43 04   ; 12AF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AB00  .byte 00 00 00 DF E0 FF FF 59 00 00 00 00 9F 2F 07 E7   ; 12B00
  AB10  .byte 75 F4 F6 C9 B7 8F 8E 8D 0B 0B 09 36 4F FF FF FE   ; 12B10
  AB20  .byte C0 B0 CC F3 7F 1F 19 F9 00 40 F0 FC F9 F0 EE 1E   ; 12B20
  AB30  .byte 68 B4 B3 52 5A 2C 2C 1A F7 7B 7C 38 38 18 18 0C   ; 12B30
  AB40  .byte 1A 3A 39 D9 59 59 59 3F FC FC FE 3E 3E 3E 3E 00   ; 12B40
  AB50  .byte 79 99 1A 3A 74 7A 7A 34 9E 0E 0C 1C 38 3C 3C 08   ; 12B50
  AB60  .byte 3F 7F 70 EB D4 98 60 00 00 3F 3F 7C 78 60 00 00   ; 12B60
  AB70  .byte D1 D1 13 F1 00 00 00 00 60 E0 E1 00 00 00 00 00   ; 12B70
  AB80  .byte F4 E4 DA FA 3A 0D 0E 0D 08 58 3C 3C 0C 06 07 06   ; 12B80
  AB90  .byte 1A 3A 74 D4 54 58 78 30 0C 1C 38 78 38 30 30 00   ; 12B90
  ABA0  .byte 00 00 00 07 01 C1 81 10 00 00 00 00 0E CE 8E 0F   ; 12BA0
  ABB0  .byte 2A 11 01 09 06 4A 72 04 C4 EE 3E 76 78 34 0C 00   ; 12BB0
  ABC0  .byte 30 30 28 54 6A FA 7A 3A 00 00 10 38 3C 5C 0C 0C   ; 12BC0
  ABD0  .byte 0C 1E 3F 3C 58 F8 D8 40 00 00 00 03 27 67 67 3F   ; 12BD0
  ABE0  .byte 03 03 83 4F 73 07 07 03 00 00 00 80 8C FC FC FC   ; 12BE0
  ABF0  .byte 74 74 7A FA 7F FF FF 67 18 18 1C 1C 80 9A 98 9A   ; 12BF0
  AC00  .byte 4F 5A 52 A2 9E FB FF E3 3E 3D 3D 7D 63 0D 9E 1F   ; 12C00
  AC10  .byte 03 03 03 03 07 EF 9D FA FC FC FC FC F9 16 EE ED   ; 12C10
  AC20  .byte 30 C0 E0 F0 FC 9E 5F DE C0 00 00 A0 00 60 EA E0   ; 12C20
  AC30  .byte F9 06 0F 0E 06 01 00 00 07 01 00 01 01 00 00 00   ; 12C30
  AC40  .byte B5 77 AE 6D 5D AA 55 55 CB 8B 57 D6 EE 5D 1A 1A   ; 12C40
  AC50  .byte 51 D2 A4 48 50 A0 40 60 EE EC D8 B0 A0 40 80 80   ; 12C50
  AC60  .byte 9F 65 1A 09 0F 08 04 03 7E 1F 07 06 00 07 03 00   ; 12C60
  AC70  .byte F8 2C DC 47 7A 46 24 18 F0 F8 3C 36 04 38 18 00   ; 12C70
  AC80  .byte 0D 0A 00 00 00 00 48 58 0D 3A 60 43 B8 C4 B2 A0   ; 12C80
  AC90  .byte 00 00 00 12 96 78 08 10 50 EE F1 EC 68 00 70 28   ; 12C90
  ACA0  .byte 00 00 00 00 00 00 38 64 00 00 00 00 00 00 00 38   ; 12CA0
  ACB0  .byte F4 74 BA 7A 3A 3A 39 79 78 38 0C 0C 0C 0C 0E 0E   ; 12CB0
  ACC0  .byte 03 0C 13 2E 58 52 F2 FC 00 03 0F 1F 3F 3D 0D 23   ; 12CC0
  ACD0  .byte E2 07 CF 5E 23 1D 02 03 1F FD B0 A1 DC E2 FD FC   ; 12CD0
  ACE0  .byte 2F 7A FC E4 3C D8 28 32 FA D4 00 18 C0 20 D0 C0   ; 12CE0
  ACF0  .byte F2 6D 27 19 06 01 03 03 4D 1E 1F 07 01 00 00 00   ; 12CF0
  AD00  .byte 06 07 C7 E0 71 B9 36 FB F8 F8 3B DF 8E C6 C9 1D   ; 12D00
  AD10  .byte 3E CF FF 5F B2 A4 68 D0 08 32 C4 B8 7C 78 F0 E0   ; 12D10
  AD20  .byte 3D 9F 4F 27 1F 17 16 15 DE 7E 3E 18 02 0C 0F 0E   ; 12D20
  AD30  .byte 40 E0 FC 9E A5 B9 D6 20 80 00 E0 7C 7E 66 20 00   ; 12D30
  AD40  .byte A8 B8 7B 5D 5F 20 27 18 70 70 30 33 3F 1F 18 00   ; 12D40
  AD50  .byte 00 76 FF 81 EE 08 F0 00 00 00 76 FE F0 F0 00 00   ; 12D50
  AD60  .byte 0D 0A 00 31 2E 04 18 00 0D 0A 30 0E 10 18 00 08   ; 12D60
  AD70  .byte 06 07 00 03 01 00 80 C0 00 06 03 03 00 01 00 C0   ; 12D70
  AD80  .byte E0 DC B6 FD 3F 06 0E 1A 00 E0 7C 2A C0 F8 F4 6C   ; 12D80
  AD90  .byte 2E 50 40 BE B8 90 44 38 1E 3E 3E 7E 7E 7C 38 00   ; 12D90
  ADA0  .byte 2A 55 71 50 48 E8 90 60 5C 2E 4E E0 F0 F0 60 00   ; 12DA0
  ADB0  .byte 38 6C 6A DA 4B 34 09 04 00 38 3C 7C 3C 0F 07 03   ; 12DB0
  ADC0  .byte 80 E0 18 66 3F 8F 5F 3F 00 00 E0 F8 FA 70 24 00   ; 12DC0
  ADD0  .byte 00 0D 0A 00 31 1C 04 08 00 0D 0A 30 0E 00 18 00   ; 12DD0
  ADE0  .byte 00 1F 21 4F BF B7 B2 B2 00 00 1F 3F 7F 7A 7C 7C   ; 12DE0
  ADF0  .byte F0 CC B6 FF 3F 03 8F 8D 80 F0 7C 2A 00 00 00 02   ; 12DF0
  AE00  .byte 15 25 4F 5F B8 A0 40 00 0D 1A 3C 3A 78 60 00 00   ; 12E00
  AE10  .byte F1 D1 EA 15 0B 19 1D 1D 00 A0 71 1A 0C 1E 0E 0E   ; 12E10
  AE20  .byte A2 59 BD 96 D0 D0 D0 60 1C AE C6 E0 E0 E0 60 00   ; 12E20
  AE30  .byte 30 3C 7F FF E3 E0 5F 00 00 00 0C 5F 1F 5F 00 00   ; 12E30
  AE40  .byte 00 8C FE EB 32 D5 26 18 00 00 8C FE FC 3E 18 00   ; 12E40
  AE50  .byte 00 00 34 28 00 46 3C 20 00 00 34 28 06 38 40 40   ; 12E50
  AE60  .byte 00 00 00 00 00 00 18 7E 00 00 00 00 00 00 00 18   ; 12E60
  AE70  .byte 1F 3F 7F 7F 7F 7F 7F BF 0F 1F 3E 3E 3F 3F 10 00   ; 12E70
  AE80  .byte F0 FC C2 D6 F9 81 82 9F C0 F0 FC 28 06 7E 7C 60   ; 12E80
  AE90  .byte 2F 58 5F BF 9D 83 C0 BD 1A 3F 3F 7E 7E 7C 3F 43   ; 12E90
  AEA0  .byte FF FF FF 77 D6 BA BA 4B 11 18 28 8E 6F C7 C7 B4   ; 12EA0
  AEB0  .byte F6 DD E6 D9 A6 A4 A0 C0 78 3E 1F 86 C0 C0 C0 00   ; 12EB0
  AEC0  .byte D7 EF 6F 78 BF 80 9F 69 38 B0 B0 BF 7F 7F 60 96   ; 12EC0
  AED0  .byte 7F FF FD 6E F7 19 E7 D8 80 00 7E F1 8E F6 18 27   ; 12ED0
  AEE0  .byte 00 00 00 00 3A 34 00 00 00 00 00 00 1A 54 80 80   ; 12EE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AEF0  .byte 00 0D 3F 7F BF 40 3F 07 00 00 0D 2C 7F 3F 00 00   ; 12EF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF00  .byte 00 A0 F0 BC EF 7A E6 CC 00 00 A0 70 9C E7 7B F3   ; 12F00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF10  .byte F5 CC 99 6E D9 36 FF E1 CE F7 E6 90 26 CF FE FE   ; 12F10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF20  .byte 00 83 3F 4F BE B9 71 73 00 00 03 3F 7F 7F FF FE   ; 12F20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF30  .byte 00 E0 DC 82 25 FD F9 F3 00 00 E0 FC DA 86 8E 1C   ; 12F30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF40  .byte 06 19 27 7E 7F F8 7C 0B 01 07 18 01 1B 47 03 00   ; 12F40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF50  .byte 26 DD A3 1F FE 00 03 FC F9 E2 5C FF FF FF FC 00   ; 12F50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF60  .byte 16 16 F7 3F 1E 1C 1F 08 EF EF 08 01 05 03 08 00   ; 12F60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF70  .byte 7F 7F FE FF 1E 6A 91 0E A2 A1 DD E0 FF 9F 0E 00   ; 12F70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF80  .byte 20 7E FD 95 EA 94 80 80 C0 80 7E FE 14 00 00 00   ; 12F80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AF90  .byte 00 00 00 00 00 0F 70 FE 00 00 00 00 00 00 0F 5F   ; 12F90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AFA0  .byte 00 00 00 00 00 F0 08 E7 00 00 00 00 00 00 F0 F8   ; 12FA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AFB0  .byte 7F 6F 6F 6E 6E 6D 75 F5 37 37 36 35 35 33 3B 7B   ; 12FB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AFC0  .byte D2 E9 79 FD F9 DA DA 9A EC FE F6 E2 F6 FC FC EC   ; 12FC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AFD0  .byte 36 66 66 E6 D5 55 ED D7 19 39 39 79 7B 3B 73 63   ; 12FD0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  AFE0  .byte E7 E7 CB 9A BA 35 22 6C FB FA F6 E7 D7 DA DC B0   ; 12FE0
  AFF0  .byte 9D 9D 2D 69 EA D4 88 B0 EE EA DA 9E 5C 68 70 C0   ; 12FF0
  B000  .byte CC 1D 3B 3D 79 27 19 00 07 0E 1C 0E 3E 19 00 00   ; 13000
  B010  .byte CA DA BA DD 9D 7A 94 08 74 EC CC EE E6 9C 08 00   ; 13010
  B020  .byte 00 00 00 00 00 70 20 60 00 00 00 00 00 70 20 60   ; 13020
  B030  .byte 40 20 20 20 20 30 30 10 40 20 20 20 20 30 30 10   ; 13030
  B040  .byte 10 10 10 18 24 26 19 29 10 10 10 18 24 26 19 29   ; 13040
  B050  .byte 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 60   ; 13050
  B060  .byte 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00 18   ; 13060
  B070  .byte 44 4C 48 3A 01 34 03 E8 44 4C 48 3A 01 34 03 E8   ; 13070
  B080  .byte C0 F2 0E 16 E4 44 84 04 C0 F2 0E 16 E4 44 84 04   ; 13080
  B090  .byte 3F 20 20 10 10 08 08 04 3F 20 20 10 10 08 08 04   ; 13090
  B0A0  .byte 6E 7C 2C 18 08 04 04 02 6E 7C 2C 18 08 04 04 02   ; 130A0
  B0B0  .byte 10 10 08 08 00 00 00 00 10 10 08 08 00 00 00 00   ; 130B0
  B0C0  .byte 00 00 00 07 18 10 00 00 00 00 00 07 18 10 00 00   ; 130C0
  B0D0  .byte 80 C0 C0 00 00 00 00 00 80 C0 C0 00 00 00 00 00   ; 130D0
  B0E0  .byte 60 60 10 08 04 02 02 04 60 60 10 08 04 02 02 04   ; 130E0
  B0F0  .byte 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 130F0
  B100  .byte 08 10 10 10 10 00 00 00 08 10 10 10 10 00 00 00   ; 13100
  B110  .byte 00 1A 14 00 C0 20 40 00 00 1A 94 60 3F C0 00 00   ; 13110
  B120  .byte C0 C0 C0 C0 C0 C0 C0 C0 80 40 80 40 80 40 80 40   ; 13120
  B130  .byte 0E 1F 1C 36 73 7F F5 69 00 08 0F 0F 2F 01 5E 1E   ; 13130
  B140  .byte F9 C6 DF E7 C0 46 A9 D7 36 FF 65 78 7F B9 D7 EF   ; 13140
  B150  .byte 30 D8 F4 FC 06 CD 39 E1 C0 F0 A8 00 FC 3E FE FE   ; 13150
  B160  .byte 01 07 38 7F 7F FE 67 13 00 00 07 23 00 4F 1F 0F   ; 13160
  B170  .byte D5 35 EB E7 67 E7 61 60 EE CE 15 98 9A 1D 9F 9F   ; 13170
  B180  .byte 01 82 9C E0 A0 D0 D0 68 FE 7C 60 80 C0 E0 E0 F0   ; 13180
  B190  .byte 9B 4F 27 17 1E 39 35 55 7C 3C 1D 0B 07 1E 1E 3E   ; 13190
  B1A0  .byte FF FF FF 01 E1 1E 00 00 00 3C FE FE 1E 00 00 00   ; 131A0
  B1B0  .byte FC FE FE 0F 0E F0 00 00 00 E4 F0 F2 F0 00 00 00   ; 131B0
  B1C0  .byte AD B5 56 3A 0A 0B 0B 0E 7E 7E 3F 0F 07 06 06 00   ; 131C0
  B1D0  .byte 00 00 1A 14 00 40 B0 9D 00 00 1A 94 C0 30 4E 62   ; 131D0
  B1E0  .byte 89 4E 42 44 08 10 20 40 76 30 3C 38 30 20 40 00   ; 131E0
  B1F0  .byte C0 C0 C0 C0 C0 C0 C0 C0 80 40 80 40 80 40 80 40   ; 131F0
  B200  .byte 18 18 1F 1C 7F FE F8 E9 10 08 10 1F 07 47 07 36   ; 13200
  B210  .byte 0C F3 09 BF 9F 47 00 80 00 0C FF CA E0 F8 FF FF   ; 13210
  B220  .byte 00 C0 60 D0 C8 D4 3A 1D 00 00 C0 A0 30 38 FC FE   ; 13220
  B230  .byte 0A 2C 7F 7F 77 EF 67 13 07 07 20 00 0C 5C 1C 0C   ; 13230
  B240  .byte F0 D8 E8 D8 3C 88 C1 C1 3F 3F 1F FF FF 7F BF BF   ; 13240
  B250  .byte 07 07 11 2B 47 C1 A0 A0 FF FF EE C4 80 00 C0 C0   ; 13250
  B260  .byte E0 90 EE 3F 0B E3 1D 0E 00 60 F0 FE FE 1E 0E 00   ; 13260
  B270  .byte BE 77 37 3F 38 7F BC AC 4D 0C 08 07 0F 18 58 78   ; 13270
  B280  .byte 1D 8D FF FF 3F C3 3F 00 FE 7E 20 F9 FC 3D 00 00   ; 13280
  B290  .byte 96 BB AB 6B 2D 3D 1E 1C 7C 7E 7E 3F 17 06 04 00   ; 13290
  B2A0  .byte 1A 14 00 40 38 00 02 22 1A 74 C1 BE 40 FE FC DC   ; 132A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B2B0  .byte 92 EE 62 28 10 08 08 04 6C 10 1C 14 0C 04 04 00   ; 132B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B2C0  .byte 0F 14 29 28 5C 50 A0 A0 01 0F 1E 1F 3F 3F 7F 7F   ; 132C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B2D0  .byte 08 5F F4 0F 1F 00 08 07 F0 A0 0B F7 EF FF E7 F8   ; 132D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B2E0  .byte 00 00 D0 38 F8 E6 83 4E 00 00 00 C0 00 78 7E F0   ; 132E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B2F0  .byte 37 5D EC 48 3F 00 01 02 01 36 7F 3F 00 00 00 01   ; 132F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B300  .byte 01 01 80 C2 A2 D3 33 F1 FF FF 7F 3F 5F 3F FF FF   ; 13300 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B310  .byte 2F 47 82 80 60 1C E3 FF C4 82 00 00 80 E0 FC FC   ; 13310 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B320  .byte 3E 7C FF 7C 2C 16 0A 07 0F 07 48 07 1F 0F 07 01   ; 13320 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B330  .byte 01 18 E7 81 80 80 40 40 FF E7 00 00 00 00 80 80   ; 13330 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B340  .byte FF 3E F2 F2 64 64 68 68 EA C0 3C 7C 38 38 30 30   ; 13340 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B350  .byte 01 00 1F 3F 64 DB 74 08 00 00 00 1F 3F 6C 08 00   ; 13350 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B360  .byte A0 D0 E9 10 E0 00 00 00 C0 60 F0 E0 00 00 00 00   ; 13360 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B370  .byte D1 EF 7C 83 7C 03 00 00 60 70 FF 7F 03 00 00 00   ; 13370 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B380  .byte 30 F8 9E 67 9E 78 10 00 00 30 F8 FE 78 10 00 00   ; 13380 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B390  .byte 00 0D 0A 00 20 1E 04 AC 00 7D 4A 70 DE E0 F8 50   ; 13390 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B3A0  .byte 5E 48 90 10 30 20 40 00 20 30 60 60 40 40 00 00   ; 133A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B3B0  .byte 01 02 03 04 0A 0E 74 FB 00 00 00 03 07 07 0F 7C   ; 133B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B3C0  .byte C3 DF FF C1 40 70 C0 4C 3D 3F 7F 7F BF 8F 3F 3F   ; 133C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B3D0  .byte FE 01 6B 1E 03 01 05 05 F0 FE 94 E1 FC FE FA FA   ; 133D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B3E0  .byte CE 7F 3F 1F 3F 7F 39 08 7E 32 05 01 08 23 07 07   ; 133E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B3F0  .byte F2 12 0C FC 98 C0 F0 FF 0F EF F3 FF 7F FF EF F0   ; 133F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B400  .byte 07 1F 10 1F 1F 03 1F F3 F8 E7 EF F1 FB FC E1 01   ; 13400 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B410  .byte F8 B6 47 BA FC E4 C8 90 00 F8 FE DC A0 78 F0 E0   ; 13410 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B420  .byte 61 1E 3F 7F EA 9D 72 0C 1F 01 0C 3F 77 6E 0C 00   ; 13420 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B430  .byte E0 D0 D1 A0 C0 00 00 00 80 E0 E0 C0 00 00 00 00   ; 13430 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B440  .byte 75 AE 7F 8C 7F 03 00 00 38 71 FF 7F 03 00 00 00   ; 13440 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B450  .byte B0 CC F2 8F F5 7E 18 00 00 30 FC FE 7A 18 00 00   ; 13450 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B460  .byte 1A 14 00 00 40 23 15 18 1A 74 C0 40 A2 D4 EA E6   ; 13460 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B470  .byte F7 61 2C 20 18 10 00 00 08 1E 10 18 00 00 00 00   ; 13470 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B480  .byte 00 00 00 00 00 00 1A E5 00 00 00 00 00 00 00 1A   ; 13480 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B490  .byte 00 00 00 00 00 39 7E E1 00 00 00 00 00 00 39 7F   ; 13490 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B4A0  .byte 01 06 09 17 2C E8 58 8E 00 01 07 0F 1F 1F E7 F1   ; 134A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B4B0  .byte 61 8B 3F 3E 1C 08 00 00 FF F5 C1 C1 E3 F7 FF FF   ; 134B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B4C0  .byte E0 9E E7 FF 78 17 90 7F 00 60 FA F1 E7 EF 6F 81   ; 134C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B4D0  .byte 00 00 80 46 3F 7A 87 FE 00 00 00 80 C6 FC FE 00   ; 134D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B4E0  .byte EC 1E 0F 0F 1E 3F 1F 03 1F 01 00 02 01 13 03 00   ; 134E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B4F0  .byte 3C 1C E0 FE 46 20 8C E7 C3 E5 FF 7F BF DF F3 F8   ; 134F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B500  .byte 01 00 0F 0F 07 00 07 F9 FE FF FF FF FF FF F8 00   ; 13500 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B510  .byte F3 1E FF FE F2 E4 E8 D0 00 E0 D2 80 BC 78 F0 E0   ; 13510 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B520  .byte 0F 1F 21 5F E2 FB 74 08 01 00 1E 3F 7F 6C 08 00   ; 13520 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B530  .byte 90 E8 E8 90 E0 00 00 00 E0 70 70 E0 00 00 00 00   ; 13530 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B540  .byte 2A 5C BF 9E 7D 03 00 00 1C 38 78 7F 03 00 00 00   ; 13540 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B550  .byte 80 38 F4 9A 65 CD 36 00 00 00 38 FC FE 36 00 00   ; 13550 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B560  .byte 00 0D 0A 40 00 A0 12 1D 00 3D 6A 20 31 51 EC E2   ; 13560 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B570  .byte 11 EF 86 58 28 30 20 00 EE 10 78 20 10 00 00 00   ; 13570 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B580  .byte 00 00 00 00 00 1B 26 D8 00 00 00 00 00 00 1B 3F   ; 13580 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B590  .byte 00 00 00 00 00 B4 6E 8B 00 00 00 00 00 00 B4 FE   ; 13590 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B5A0  .byte 38 7F C8 66 1C 03 07 0F 00 38 7F 1F 03 00 00 00   ; 135A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B5B0  .byte 19 E6 3C D0 30 3C FC 36 07 1F DF EF EF C3 03 C9   ; 135B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B5C0  .byte 2B 3E 1C 1C 01 01 01 01 D4 C1 E3 E3 FF FF FE FE   ; 135C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B5D0  .byte D0 88 24 32 71 79 79 7D 20 70 F8 FC FE FE AE 92   ; 135D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B5E0  .byte 7F FF 6C 37 09 06 07 0F 09 40 1F 0F 07 01 00 07   ; 135E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B5F0  .byte F0 F8 7C 20 B0 ED F2 F2 FF 7F BF DF CF F2 1C 9C   ; 135F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B600  .byte 07 0C 2B 36 14 29 EA 54 F8 F3 F7 EF EF DE 1C 38   ; 13600 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B610  .byte FF 9E 6F CE 92 2C 5E 9D 08 60 F6 F0 EC D8 88 0E   ; 13610 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B620  .byte 47 B8 FB 74 08 00 00 00 3F 7F 6C 08 00 00 00 00   ; 13620 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B630  .byte D2 62 81 00 00 00 00 00 E1 81 00 00 00 00 00 00   ; 13630 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B640  .byte A6 FF B7 4B 34 35 19 06 C3 C3 78 3E 1F 1E 06 00   ; 13640 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B650  .byte 35 F5 BA 5C A4 A8 C8 30 1E 36 C4 F0 F8 F0 30 00   ; 13650 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  B660  .byte 0D 0A 00 01 02 44 44 28 ED BA CF 40 40 20 20 50   ; 13660
  B670  .byte 00 00 00 00 70 C8 E4 F4 00 00 00 00 00 70 78 78   ; 13670
  B680  .byte 67 67 6B 51 AC D6 A7 37 07 03 07 2F 77 7B 7B 39   ; 13680
  B690  .byte 40 B8 A4 92 D9 69 6D AD 80 C0 D8 FC FE FE FE FE   ; 13690
  B6A0  .byte 01 03 07 07 1F 27 52 52 00 01 03 03 03 1B 3F 3F   ; 136A0
  B6B0  .byte 30 68 E4 E4 E4 E4 42 49 00 30 78 78 78 78 FC FE   ; 136B0
  B6C0  .byte 00 00 00 00 1F 25 4A 99 00 00 00 00 00 1F 3D 7E   ; 136C0
  B6D0  .byte 3A 3A 3D 35 F8 95 2F 87 0C 0C 0E 0E 07 EA D0 7A   ; 136D0
  B6E0  .byte CA 62 32 34 99 C9 AB C7 7F 3F 1F 1F 0F 07 07 03   ; 136E0
  B6F0  .byte 55 55 55 55 4D 4D 4C 2C 8F 8F 8F 8F 87 87 87 C7   ; 136F0
  B700  .byte 40 59 59 59 52 52 34 24 FE FE FE FE FC FC F8 F8   ; 13700
  B710  .byte 26 4C 78 FD 7E EF 47 33 1F 3F 0F 42 0D 5E 3E 0F   ; 13710
  B720  .byte 3E BD 9A 9B 02 1E 65 D6 C1 42 65 E4 FD E1 9A 69   ; 13720
  B730  .byte F8 7E 9D 1A 39 7E F9 7E 40 90 62 E7 C7 91 46 AF   ; 13730
  B740  .byte E5 E5 75 F5 73 B3 73 C4 78 78 38 38 BD FD FD 3B   ; 13740
  B750  .byte 65 65 6A 6A C4 C4 D4 28 3E 3E 3C 3C 78 78 78 F0   ; 13750
  B760  .byte 00 1A 14 00 00 00 40 40 00 1A F4 C0 C0 62 A2 A2   ; 13760
  B770  .byte 21 1E 2C 38 08 30 20 00 DC 60 10 00 10 00 00 00   ; 13770
  B780  .byte C0 C0 C0 C0 C0 C0 C0 C0 80 40 80 40 80 40 80 40   ; 13780
  B790  .byte 18 1B 1C 3B 7F FF 7C DA 00 00 03 07 27 67 03 7D   ; 13790
  B7A0  .byte 73 80 05 9F 9F 0E 0E 8E 0C 7F FA E0 E0 F1 F1 71   ; 137A0
  B7B0  .byte 00 80 40 30 68 B7 BA 9F 00 00 80 C0 F0 78 7D 7D   ; 137B0
  B7C0  .byte 00 06 09 36 4F BF 7C 7D 00 00 06 0F 3F 7F FF FE   ; 137C0
  B7D0  .byte 00 00 FC 3A C5 F3 73 93 00 00 00 C4 FA FC FC 7C   ; 137D0
  B7E0  .byte 0B 18 3F 3F 7B FB 63 13 07 07 10 00 04 4C 1C 0C   ; 137E0
  B7F0  .byte 70 68 34 CC 7C 98 40 24 9F 9F CF FF FF 7F BF DF   ; 137F0
  B800  .byte 2B 13 38 45 43 A0 D0 E8 D7 EF C7 82 80 C0 E0 F0   ; 13800
  B810  .byte FF FF DE E0 19 E6 10 0C BF 7F 7F FF E6 19 0F 03   ; 13810
  B820  .byte 98 18 2C 63 9E 9C 40 3F E7 E7 DB 9C 61 7F BF C0   ; 13820
  B830  .byte C5 C5 65 19 F6 E4 04 F8 3A 3A DA E6 08 F8 F8 00   ; 13830
  B840  .byte B3 71 3B 3E 3C 2D 6D 55 4C 0E 05 03 07 1E 3E 3E   ; 13840
  B850  .byte C6 4F FF 01 E1 1F 00 00 3F 30 7C FE 1E 00 00 00   ; 13850
  B860  .byte 34 7C FE 0E 0F FE 00 00 F8 80 E4 F0 F2 00 00 00   ; 13860
  B870  .byte AD AD AD ED 75 6A 6A 64 FE FE FE 3E 2E 04 04 00   ; 13870
  B880  .byte 34 28 00 00 82 7C 03 01 34 6A FD 82 7C 02 FC FE   ; 13880
  B890  .byte 91 92 EE 42 34 58 28 20 6E 6C 10 3C 08 20 10 10   ; 13890
  B8A0  .byte 00 00 00 00 07 38 42 90 00 00 00 00 00 07 3D 7F   ; 138A0
  B8B0  .byte 00 00 00 00 78 84 2A 05 00 00 00 00 00 78 A4 FA   ; 138B0
  B8C0  .byte 02 04 09 13 27 47 F0 48 01 03 07 0F 1F 3F 0F 37   ; 138C0
  B8D0  .byte 5F 40 E0 80 00 40 40 C0 E0 FF FF FF FF BF BF 7F   ; 138D0
  B8E0  .byte 40 20 50 2C 3A 3C 4A 4B 80 C0 A0 D0 C0 C0 BC BC   ; 138E0
  B8F0  .byte 13 17 17 16 6E 8D 6C 3D 0F 0F 0E 0D 1F 7E 3C 00   ; 138F0
  B900  .byte 7C F2 F2 CC C9 B3 67 A7 E3 E1 C1 93 E7 CF 9F 1F   ; 13900
  B910  .byte 81 C2 87 C4 87 83 80 43 FE FC F8 FF FF FF FF DC   ; 13910
  B920  .byte B2 6D F6 74 B8 FC F8 D0 7C 3E 2C 80 C0 88 00 60   ; 13920
  B930  .byte 13 13 3C 1F 0C 11 11 13 0F 07 13 04 03 0F 0F 0F   ; 13930
  B940  .byte DE A4 45 84 4B 57 50 8F E1 C3 83 03 86 8F 8F 00   ; 13940
  B950  .byte 68 D6 AF D1 CE 04 F8 00 F0 E0 D6 3E FC F8 00 00   ; 13950
  B960  .byte 17 16 16 16 16 15 35 DE 0E 0C 0C 0C 0C 0E 0E 3C   ; 13960
  B970  .byte 4B B6 EA D4 88 70 00 00 3E 7C 7C 78 70 00 00 00   ; 13970
  B980  .byte 0D 0A 20 11 0E 42 FE 88 3D 2A D0 EE F0 BC 00 70   ; 13980
  B990  .byte 00 00 20 3E 7F E3 7C 2F 00 00 00 10 3E 7F 2F 04   ; 13990
  B9A0  .byte 01 06 09 73 AF D8 70 90 00 01 07 0F 5F EF EF 6F   ; 139A0
  B9B0  .byte C0 30 CC 02 57 3F 00 07 00 C0 F0 FC AA C0 FF FF   ; 139B0
  B9C0  .byte 00 00 00 80 C0 F0 08 E7 00 00 00 00 80 00 F0 F8   ; 139C0
  B9D0  .byte 8E 05 5F E0 FF 67 F0 78 01 00 00 5F 1F 1F 4F 07   ; 139D0
  B9E0  .byte 00 01 83 C7 C6 C6 6F 07 FF FF 7F BF FF FF FF FF   ; 139E0
  B9F0  .byte 7F 0F 8C 3B 4D 43 37 CB F8 F0 77 87 83 80 C3 F0   ; 139F0
  BA00  .byte E0 E0 20 90 DE FF E2 87 40 00 C0 E0 E0 7E FC 7E   ; 13A00
  BA10  .byte 7F 9F E7 5F 21 1F 00 00 00 67 79 3E 1F 00 00 00   ; 13A10
  BA20  .byte 83 79 94 D3 E8 08 F0 00 7F 87 E3 60 F0 F0 00 00   ; 13A20
  BA30  .byte F4 FA 7D 1F FF 5B 59 52 F8 FC FE F0 02 3C 3E 3C   ; 13A30
  BA40  .byte 3F 80 40 E0 F0 E0 40 80 00 00 80 00 A0 00 80 00   ; 13A40
  BA50  .byte 2A 54 54 A8 A8 56 29 1C 1C 38 38 70 70 38 1E 0F   ; 13A50
  BA60  .byte 4C E2 55 6A 35 3D 16 00 F0 7C 3E 3C 1E 16 00 00   ; 13A60
  BA70  .byte 0D 0A 00 41 3E 81 01 11 0D 3A 40 3E 40 7E FE EE   ; 13A70
  BA80  .byte 88 77 22 24 12 0C 04 02 77 08 1C 18 0C 00 00 04   ; 13A80
  BA90  .byte 02 05 1A 26 DE FC F4 94 01 03 07 1F 3F 9B CB EB   ; 13A90
  BAA0  .byte BC 42 17 FC 03 03 00 00 00 BC E8 03 FF FF FF FF   ; 13AA0
  BAB0  .byte C8 34 BE E9 7F 40 C6 3B 00 C0 C0 D6 9F BF 39 00   ; 13AB0
  BAC0  .byte 00 1D 3F 67 BD 6A 04 00 00 00 1D 3E 66 04 00 00   ; 13AC0
  BAD0  .byte 00 B8 7C C8 FC 38 C0 00 00 00 B8 F0 F8 C0 00 00   ; 13AD0
  BAE0  .byte 14 FC 02 02 03 04 0B 17 EB 03 01 01 00 03 07 0F   ; 13AE0
  BAF0  .byte 00 01 06 0A 12 09 9E 87 FF FE FC FC FC FE FF FF   ; 13AF0
  BB00  .byte 7F FC 7F 20 2C 14 0A 07 07 53 00 1F 1F 0F 07 03   ; 13B00
  BB10  .byte 80 10 1C E3 80 80 80 80 FF EF E3 00 00 00 00 00   ; 13B10
  BB20  .byte F8 CE EF 1E 7A C2 51 39 00 F0 F2 E8 84 3C 3E 1E   ; 13B20
  BB30  .byte 00 1F 3F 78 E6 9D 7A 0C 00 00 1F 3F 7F 66 0C 00   ; 13B30
  BB40  .byte 3A 1A ED FD 1A DC A0 40 1C 0C 06 EE FC E0 C0 80   ; 13B40
  BB50  .byte C8 A8 64 34 2B 2F 10 0F 70 70 38 18 1C 1F 0F 00   ; 13B50
  BB60  .byte 00 F8 FE FF 05 FA 00 00 00 00 F8 FE FA 00 00 00   ; 13B60
  BB70  .byte 0D 0A 00 01 81 42 22 32 0D 3A 4E 40 40 A0 D0 CC   ; 13B70
  BB80  .byte FE 82 54 24 24 18 18 00 00 7C 28 18 18 00 00 08   ; 13B80
  BB90  .byte 3C 7E FF FF FF FF 7E 3C 3C 7E FF FE FE FC 78 20   ; 13B90
  BBA0  .byte 00 01 02 0D 11 26 EC 1C 00 00 01 03 0F 1F 1F EF   ; 13BA0
  BBB0  .byte F6 E9 EB E2 FF 7F 38 18 00 F6 F4 9D 83 83 C7 E7   ; 13BB0
  BBC0  .byte 00 00 80 78 06 F9 FE 1F 00 00 00 80 F8 F6 EF EF   ; 13BC0
  BBD0  .byte 00 08 74 BB CF 7E 31 0E 00 00 08 6C 7F 3F 0E 00   ; 13BD0
  BBE0  .byte EC 08 C8 3F 03 01 06 09 F7 F7 37 03 00 00 01 07   ; 13BE0
  BBF0  .byte 00 01 01 03 82 81 4F C1 FF FE FE FC FD 7F FF FF   ; 13BF0
  BC00  .byte F0 0F 03 F5 0E FE EE 9D 0F 00 01 00 F4 F0 F4 E2   ; 13C00
  BC10  .byte 00 CA 3F FE 33 C6 B8 C0 00 00 CA FC FE 78 C0 00   ; 13C10
  BC20  .byte 7E F0 7C 31 28 14 0A 05 0F 4F 13 0E 1F 0F 07 03   ; 13C20
  BC30  .byte 00 01 3E C0 80 80 80 80 FF FE C0 00 00 00 00 00   ; 13C30
  BC40  .byte 65 CD 26 13 0D 02 01 01 9E 3E 1F 0F 02 01 00 00   ; 13C40
  BC50  .byte 80 40 42 BD 7F 61 FE 00 00 80 80 C2 FE FE 00 00   ; 13C50
  BC60  .byte 34 1A 0D 7F B1 8E 70 00 18 0C 06 0E 7E 70 00 00   ; 13C60
  BC70  .byte 00 00 00 1E 04 00 00 00 00 00 00 26 44 00 00 00   ; 13C70
  BC80  .byte 00 00 00 07 1A 26 6D F5 00 00 00 00 05 1D 1B 5B   ; 13C80
  BC90  .byte 00 1C E3 3F FF F1 FE FF 00 00 1C FF F1 FE FF FF   ; 13C90
  BCA0  .byte 00 00 00 80 C0 E6 19 DF 00 00 00 00 00 00 E6 E7   ; 13CA0
  BCB0  .byte 08 1E 99 6F FD 03 FC 00 00 08 0E 9E FE FC 00 00   ; 13CB0
  BCC0  .byte 65 75 FD 7B 17 27 2F 6E 1B 0B 43 0B 0F 1F 1F 1F   ; 13CC0
  BCD0  .byte CF C3 E0 9E BF 38 50 50 FF FF DF E1 F8 C0 A0 A0   ; 13CD0
  BCE0  .byte DF D8 39 3E E0 00 00 00 E7 E7 C6 C0 00 00 00 00   ; 13CE0
  BCF0  .byte 00 00 03 3F 66 B9 86 78 00 00 00 03 3F 7E 78 00   ; 13CF0
  BD00  .byte 60 98 77 68 97 09 04 02 00 60 F8 9F 0F 07 03 01   ; 13D00
  BD10  .byte A7 6F 6E 60 31 3E FC 3C 1F 9F 9F 9F CE C0 20 08   ; 13D10
  BD20  .byte AA 2A 4D CF BF 87 94 A8 DC DC BE 30 45 78 78 70   ; 13D20
  BD30  .byte 95 2A 2C 5F 47 38 07 00 0E 1C 18 38 3F 07 00 00   ; 13D30
  BD40  .byte 40 80 00 F8 E7 3D C9 3E 80 00 00 00 F8 FE 3E 00   ; 13D40
  BD50  .byte 00 00 0E F6 DE E0 00 00 00 00 06 64 40 00 00 00   ; 13D50
  BD60  .byte 00 00 00 00 00 07 09 F7 00 00 00 00 00 00 07 0F   ; 13D60
  BD70  .byte 00 01 02 05 1B F0 91 99 00 00 01 03 07 1F F3 93   ; 13D70
  BD80  .byte 0D 93 6F 9C 63 DC B3 8C 00 0D 9F FF FF FF FC F0   ; 13D80
  BD90  .byte D8 3E FD C1 3A C4 38 C0 00 D8 FE FE FC F8 C0 00   ; 13D90
  BDA0  .byte 08 16 38 49 77 AC 53 2C 07 0F 1F 3F 3F 7F 2C 00   ; 13DA0
  BDB0  .byte 01 7F 08 87 78 80 00 00 FC FF FF F8 80 00 00 00   ; 13DB0
  BDC0  .byte B3 4C B0 00 00 00 00 00 FC B0 00 00 00 00 00 00   ; 13DC0
  BDD0  .byte 00 00 00 E7 DB 7E 00 00 00 00 00 66 42 00 00 00   ; 13DD0
  BDE0  .byte 0F 17 3B 7C E0 9F 30 1F 00 0F 07 3F 7F 7F 1F 00   ; 13DE0
  BDF0  .byte 38 C6 9D CC 39 06 F9 07 00 38 FE FF FE FF 06 00   ; 13DF0
  BE00  .byte 0F 30 FE CC 22 CC 80 7F 00 0F 3F FF DF FF 7F 00   ; 13E00
  BE10  .byte 38 FC 1E E1 1F C7 39 C6 00 38 FC FE FE FE C6 00   ; 13E10
  BE20  .byte 00 64 28 00 00 00 00 00 00 34 48 02 04 48 30 00   ; 13E20 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE30  .byte 00 00 00 00 00 00 7C FF 00 00 00 00 00 00 00 7C   ; 13E30 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE40  .byte 00 00 00 03 0C 33 FF FF 00 00 00 00 03 0F 0F 93   ; 13E40 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE50  .byte 3B 79 D9 DC 4E C7 A3 13 1F 3E 7E 7F BF BE DC EC   ; 13E50 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE60  .byte 0C F6 FE FF FE FE FF FF F0 3C A8 0E 08 08 B2 00   ; 13E60 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE70  .byte FE 7F 59 59 29 2A 12 12 01 00 3E 3E 1E 1C 0C 0C   ; 13E70 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE80  .byte 17 3F E7 22 31 36 44 AF F9 C2 18 1D 1E 18 38 70   ; 13E80 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BE90  .byte E5 F3 3B 1C 07 C3 39 05 3A 7C FC FF FF 3F 07 03   ; 13E90 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BEA0  .byte 3C 7A F3 77 E6 DA BD 5E 18 3C 3C BB DB E7 D2 BD   ; 13EA0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BEB0  .byte F0 E8 CC DE 99 6B F5 79 60 F0 F0 EC 6E 9C 4A F6   ; 13EB0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BEC0  .byte 00 3F 78 C4 7B 34 18 00 00 00 3F 7F 1C 18 00 00   ; 13EC0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BED0  .byte 13 F2 04 98 60 80 00 00 0C 1C F8 E0 80 00 00 00   ; 13ED0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BEE0  .byte 61 F3 3C 0F 03 01 00 00 FE 3F 0F 03 01 00 00 00   ; 13EE0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BEF0  .byte 8A 75 94 75 ED 85 02 01 03 8E EF EE 86 03 01 00   ; 13EF0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BF00  .byte 8D F1 FE 62 34 CC 24 F8 7E 8E 70 9C E8 30 D8 00   ; 13F00 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BF10  .byte 74 68 00 00 00 00 00 00 34 A8 80 00 00 00 00 00   ; 13F10 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  BF20  .byte 00 00 00 00 00 00 78 86 00 00 00 00 00 00 00 78   ; 13F20
  BF30  .byte 00 00 00 00 00 58 B4 F4 00 00 00 00 00 00 58 58   ; 13F30
  BF40  .byte 2F 5F 5F 71 FE FF BF 58 1F 3E 38 3E 7F 7F 7F 3F   ; 13F40
  BF50  .byte 61 D0 E3 E5 1B EE FC 0F C0 A0 00 03 E7 F7 F3 F4   ; 13F50
  BF60  .byte 6D 36 E4 58 D0 A0 20 C0 3E 18 38 E0 E0 C0 C0 00   ; 13F60
  BF70  .byte B0 BF 59 29 29 4C 4F 47 6F 70 3E 1E 1E 3F 3F 3F   ; 13F70
  BF80  .byte 1C FC 08 00 C0 30 CA F7 E0 08 00 00 00 C0 F0 FA   ; 13F80
  BF90  .byte C0 3C 1F 0D 03 0F 1E 3E 3F 03 00 00 01 01 03 03   ; 13F90
  BFA0  .byte FF 1E E7 CE 90 20 40 86 F2 E0 18 F0 E0 C0 80 00   ; 13FA0
  BFB0  .byte B7 4F 32 0C 03 00 00 00 78 3F 0F 03 00 00 00 00   ; 13FB0
  BFC0  .byte FE C1 86 3B D9 2E 24 18 0C FE F8 C6 36 18 18 00   ; 13FC0
  BFD0  .byte 00 00 3A 34 00 00 00 00 00 00 1A 54 80 00 00 00   ; 13FD0
  BFE0  .byte 00 00 00 00 0C 33 7E FF 00 00 00 00 00 0C 3F 7D   ; 13FE0
  BFF0  .byte 00 00 00 00 01 83 C3 C3 00 00 00 00 00 01 81 01   ; 13FF0
  C000  .byte 00 00 00 18 74 EA D7 F6 00 00 00 00 18 5C 7E 78   ; 14000
  C010  .byte 7F 61 CC FE F3 78 7C 3F 30 3E 7F 7F 7F 3F 3B 1C   ; 14010
  C020  .byte F1 E3 F7 0E F8 EC 0F CF E0 01 03 F7 F7 F3 F2 3A   ; 14020
  C030  .byte 1D 3A 74 E4 88 C8 F8 7C 0E 1C 38 78 70 30 20 A8   ; 14030
  C040  .byte FF FF 5F 5F 5E 4C 21 13 7D 7B 3F 3F 3F 3F 1E 0C   ; 14040
  C050  .byte FF DF 9A 32 64 C8 D0 A0 14 E0 EC DC B8 70 E0 C0   ; 14050
  C060  .byte F6 29 24 18 07 00 00 00 18 1E 1F 07 00 00 00 00   ; 14060
  C070  .byte 1C F6 1A 63 BD 5A 48 30 00 1C FC FE 7A 30 30 00   ; 14070
  C080  .byte 00 00 3C 48 87 06 06 01 00 00 CC 88 03 02 00 00   ; 14080
  C090  .byte 00 00 00 00 00 00 0C 08 72 38 1C 0C 0C 0C 0C 08   ; 14090
  C0A0  .byte 06 09 16 2F 2E 5C 59 B9 00 06 0F 1F 1F 3F 3E 7E   ; 140A0
  C0B0  .byte F8 07 BF 7F 7E FE FE FF 00 F8 FF F2 E1 C1 81 80   ; 140B0
  C0C0  .byte C0 38 FC FE F7 F7 F2 FD 00 C0 F8 90 0E 0C 0C 02   ; 140C0
  C0D0  .byte B1 53 5F 78 33 38 5F A0 7E 3D 20 17 0F 17 20 7F   ; 140D0
  C0E0  .byte FF 9F EF 67 8F 7F FF 5F 1C EE 77 BB F3 8B 03 A2   ; 140E0
  C0F0  .byte FD 7E BE 9E 3E FE FE 7C 72 B8 DC EC CC 2C 0C 88   ; 140F0
  C100  .byte 05 05 02 02 02 03 0C D2 03 03 01 01 01 00 03 0F   ; 14100
  C110  .byte 91 D1 CA CA CA 4B 8B CB EE EE F7 F7 F7 F6 76 36   ; 14110
  C120  .byte 3F 24 50 50 50 60 60 60 C4 C0 E0 E0 E0 C0 C0 C0   ; 14120
  C130  .byte 1F 1C 19 32 6D F2 63 1D 0D 0F 0E 1C 3E 7F 1D 00   ; 14130
  C140  .byte EF 07 87 F9 F4 76 6E 91 F0 FA 79 0E 1F BF 91 00   ; 14140
  C150  .byte FE 7F 7E 9C 4A 61 EE 10 00 AA 90 E0 FC FE 10 00   ; 14150
  C160  .byte 00 00 1C 27 3F 71 6E C9 00 00 00 1C 1F 3F 31 70   ; 14160
  C170  .byte 00 00 1C FE FF CF 1F FF 00 00 00 1C FE F0 EE 1E   ; 14170
  C180  .byte 0E 1C 7A E5 92 6C 00 00 03 0F 1F 7E 6C 00 00 00   ; 14180
  C190  .byte 47 BF FC 73 34 3A 3A 15 81 07 3F 3C 18 1C 1C 0E   ; 14190
  C1A0  .byte F9 F2 8C 70 80 40 40 A0 3E FC F0 80 00 80 80 C0   ; 141A0
  C1B0  .byte A8 AC A4 A4 A4 48 48 30 70 78 78 78 78 30 30 00   ; 141B0
  C1C0  .byte 06 09 1E 1F 39 3E 65 D4 00 06 0F 0F 1F 1B 38 78   ; 141C0
  C1D0  .byte 80 40 A0 F8 7E 9F 4F 21 00 80 C0 E0 F8 FE 3E 1E   ; 141D0
  C1E0  .byte 75 EA 9A 64 98 61 03 03 3E 7C 7C 38 60 00 01 01   ; 141E0
  C1F0  .byte 11 0E 00 02 0F FF F9 81 0E 00 00 00 02 0E FE FE   ; 141F0
  C200  .byte AF A8 E8 74 74 6A 6A 6A 70 70 70 38 38 3C 3C 3C   ; 14200
  C210  .byte E4 A4 68 50 20 00 00 00 78 78 30 20 00 00 00 00   ; 14210
  C220  .byte 00 00 78 45 9D BD B9 72 00 00 78 45 9D BD B9 72   ; 14220 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C230  .byte 38 36 C1 01 00 40 50 50 38 36 C1 01 00 40 50 50   ; 14230 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C240  .byte C3 B4 08 08 00 00 80 80 C3 B4 08 08 00 00 80 80   ; 14240 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C250  .byte 0C 31 76 41 42 C0 C0 20 0C 31 76 41 42 C0 C0 20   ; 14250 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C260  .byte A0 07 BB 9E 3C 68 38 10 A0 87 BB 9E 3C 68 38 10   ; 14260 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C270  .byte 30 F0 08 08 04 04 02 02 30 F0 08 08 04 04 02 02   ; 14270 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C280  .byte 00 00 00 00 01 8E B8 44 00 00 00 00 01 8E B8 44   ; 14280 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C290  .byte 90 60 20 20 20 00 00 00 90 60 20 20 20 00 00 00   ; 14290 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C2A0  .byte 84 02 03 03 01 01 01 01 84 02 03 03 01 01 01 01   ; 142A0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C2B0  .byte 40 40 38 2C 20 00 00 00 40 40 38 2C 20 00 00 00   ; 142B0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C2C0  .byte 6C 44 01 00 C2 3C C3 BF EC D4 7C 82 3C 00 00 40   ; 142C0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C2D0  .byte 18 3C 7C 7A 74 68 A8 A8 00 18 20 2C 38 30 70 70   ; 142D0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C2E0  .byte 05 04 07 04 1D 22 5F BF 03 03 00 03 02 0E 3F 7A   ; 142E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C2F0  .byte 29 21 3F 27 ED 13 FD FD 1E 1E 00 18 12 EC FE D6   ; 142F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C300  .byte 17 2F 2F 2F 2F 5F B9 B9 09 1E 1F 1C 1F 3F 7F 7F   ; 14300 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C310  .byte FF FE FE FE FF FF FF FF FA 04 FC F8 86 FE FE FE   ; 14310 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C320  .byte 2E 28 3C 7F 78 FE 77 19 1F 1F 03 00 17 4F 0F 07   ; 14320
  C330  .byte 7F 7F BE 9F AC CD 44 F4 BF BE 5C 60 7F 3F BF 8F   ; 14330
  C340  .byte 00 00 F0 07 CF DF BF 22 00 00 00 F8 F1 E4 C0 DC   ; 14340
  C350  .byte D9 2F 14 11 0F 0B 08 07 3E 1E 0F 0E 01 07 07 00   ; 14350
  C360  .byte 0A 7C BC 2D 29 3A F7 DF F7 8F 4F C6 C6 CC 0C 0F   ; 14360
  C370  .byte 90 20 60 40 40 80 FE FF E0 C0 80 80 80 00 00 FE   ; 14370
  C380  .byte 4D 72 72 74 68 68 A8 A8 30 3C 3C 38 30 30 70 70   ; 14380
  C390  .byte 84 79 06 01 00 00 00 00 7F 07 01 00 00 00 00 00   ; 14390
  C3A0  .byte 46 93 65 1A 00 00 00 00 FC 7E 1A 00 00 00 00 00   ; 143A0
  C3B0  .byte A8 54 2A 2D 16 17 09 06 70 38 1C 1E 0C 0E 06 00   ; 143B0
  C3C0  .byte 00 00 00 00 00 18 10 3A 00 00 00 00 00 38 74 C0   ; 143C0
  C3D0  .byte 11 11 11 11 49 C9 2A 2C 20 20 20 20 10 10 C0 C0   ; 143D0
  C3E0  .byte 00 00 00 00 03 0D 33 C7 00 00 00 00 00 03 0F 3F   ; 143E0
  C3F0  .byte 00 00 00 41 EE 13 55 EE 00 00 00 00 41 EC AE D7   ; 143F0
  C400  .byte 17 6F 9D 62 DC 10 A0 C0 0E 18 7E FC E0 E0 40 00   ; 14400
  C410  .byte 0C 13 7F FC 7E 42 59 59 03 0F 07 4B 01 3D 3E 3E   ; 14410
  C420  .byte 77 D3 8B 0B 15 25 C3 03 EE EE F6 F7 EB DB 3D FD   ; 14420
  C430  .byte DC D9 D2 D4 D8 D0 A0 C0 2F 2E 2C 28 20 20 40 80   ; 14430
  C440  .byte 2A 2A 1A 1D 35 7A 54 BD 1D 1D 0D 0E 1E 1D 2B 76   ; 14440
  C450  .byte 41 C3 8C 84 32 39 0C 07 FE FC F0 F8 FC FE FF FC   ; 14450
  C460  .byte 03 04 0A 3E 58 A7 E8 D0 00 03 07 0F 3F 78 70 60   ; 14460
  C470  .byte A3 C4 FB F5 7A B5 0E 0F 7C 38 40 43 97 0E 04 06   ; 14470
  C480  .byte FF 87 63 86 38 C0 00 00 02 78 FC F8 C0 00 00 00   ; 14480
  C490  .byte 38 38 58 58 B4 68 50 20 18 18 38 38 78 30 20 00   ; 14490
  C4A0  .byte B0 C8 54 6A 4C 34 08 00 60 70 38 3C 38 08 00 00   ; 144A0
  C4B0  .byte 00 00 00 00 00 18 10 04 00 00 00 00 00 38 30 78   ; 144B0
  C4C0  .byte 00 00 00 00 00 00 1E 20 00 00 00 00 00 00 00 5C   ; 144C0
  C4D0  .byte 00 00 00 00 07 1B 27 DF 00 00 00 00 00 07 1E 3F   ; 144D0
  C4E0  .byte 00 00 00 00 00 83 8C FF 00 00 00 00 00 00 03 80   ; 144E0
  C4F0  .byte 00 00 00 00 1C EE 7B F5 00 00 00 00 00 14 8E 7A   ; 144F0
  C500  .byte 00 00 00 01 0E 10 67 9F 00 00 00 00 01 0F 1F 7F   ; 14500
  C510  .byte 49 BE FF 70 F0 E6 CF 1F 3E 7F 7F FF FF F9 FE FE   ; 14510
  C520  .byte E5 16 F6 F7 07 0F F1 00 1B F9 F9 FA FC F1 00 00   ; 14520
  C530  .byte E3 87 19 20 C0 80 00 00 FD F9 E0 C0 00 00 00 00   ; 14530
  C540  .byte 01 46 BF 7F C0 BC 43 80 00 01 47 FF FF C3 80 00   ; 14540
  C550  .byte AF 6F BF B0 78 7F F0 20 1F 9F CF CF 87 90 20 00   ; 14550
  C560  .byte C7 98 20 40 80 00 00 00 F8 E0 C0 80 00 00 00 00   ; 14560
  C570  .byte 03 07 1D 6A B5 6A 94 68 01 03 07 1F 7E 3C 68 00   ; 14570
  C580  .byte 6C 45 01 01 02 04 8A 46 EE 46 00 82 84 48 30 81   ; 14580
  C590  .byte 1E 10 EE 04 08 08 10 10 E1 EF 10 78 30 30 00 00   ; 14590
  C5A0  .byte 3F 3F 7B 2D 16 18 7F F3 16 0E 37 1F 0F 07 18 7C   ; 145A0
  C5B0  .byte E1 A1 A0 40 B1 CA 9F BB 40 40 C0 80 00 31 FB D5   ; 145B0
  C5C0  .byte 8F DF 7F B3 AD B2 CC FB 06 8D DA 7D 7E 7C 30 0C   ; 145C0
  C5D0  .byte EB 4B 97 E6 E1 59 05 03 F5 F5 6C 9F 5F 07 03 01   ; 145D0
  C5E0  .byte 7F FF FF FF FF FF FF FF 80 C1 43 A6 DD E3 FF FF   ; 145E0
  C5F0  .byte 79 7B 7B D3 0F 0E B4 C0 BE 9D AC 6D F0 F4 C0 80   ; 145F0
  C600  .byte 0F 07 05 0B 16 2E 5C B8 07 03 03 07 0F 1F 3F 7F   ; 14600
  C610  .byte F8 F0 D0 E8 F4 BA 9D 8F F0 E0 E0 F0 F8 FC FE 7E   ; 14610
  C620  .byte 7C 7C FF 7C 20 16 0D 03 0F 03 50 03 1F 0F 03 01   ; 14620
  C630  .byte 8A 91 E1 91 0B CB AB 7B F1 60 00 60 F1 F1 71 31   ; 14630
  C640  .byte 3F FE 04 C8 90 A0 A0 40 EA 00 F8 F0 E0 C0 C0 80   ; 14640
  C650  .byte 05 05 1A 6B B5 6D D2 6C 03 03 07 1E 7E 3E 6C 00   ; 14650
  C660  .byte 55 54 AB B0 50 D0 20 C0 3B 3B 70 E0 E0 E0 C0 00   ; 14660
  C670  .byte 60 BC 5A AE 55 26 18 00 80 E0 FC 7C 3E 18 00 00   ; 14670
  C680  .byte 0D 0A 80 80 40 60 5E 94 0D 6A 7F 40 21 1E 20 68   ; 14680
  C690  .byte 00 00 00 00 01 06 18 67 00 00 00 00 00 01 07 1F   ; 14690
  C6A0  .byte 00 00 00 00 F8 4C 7C FD 00 00 00 00 00 F8 D0 FE   ; 146A0
  C6B0  .byte 00 00 00 00 07 09 75 EB 00 00 00 00 00 06 0E 1C   ; 146B0
  C6C0  .byte 00 07 09 76 8E 77 4F 05 00 00 06 09 75 F8 F4 FE   ; 146C0
  C6D0  .byte EF 97 77 E7 C7 0F 3F FF 1F 7F FB FB FB F7 CF 38   ; 146D0
  C6E0  .byte FD FD FD FA FA F4 F8 98 02 86 FE FC F4 E8 80 60   ; 146E0
  C6F0  .byte 78 87 77 2B 72 46 39 06 07 7E 3E 1E 3E 3B 06 00   ; 146F0
  C700  .byte 98 FB 1C 9E A5 C0 00 00 E7 17 E7 65 40 00 00 00   ; 14700
  C710  .byte 07 B8 C0 C0 80 00 00 00 F8 C0 80 80 00 00 00 00   ; 14710
  C720  .byte E1 6E 26 1A 04 00 00 00 1E 38 1C 04 00 00 00 00   ; 14720
  C730  .byte 1A F4 01 80 40 72 1C 00 1A 14 FE 40 30 0C 00 00   ; 14730
  C740  .byte 00 00 00 00 00 01 2E 57 00 00 00 00 00 00 01 2F   ; 14740
  C750  .byte 00 00 00 00 00 F8 6C FC 00 00 00 00 00 00 FC D0   ; 14750
  C760  .byte 00 01 1A 34 64 F4 5F BC 00 00 01 1B 3B 0B B0 7F   ; 14760
  C770  .byte 0A 93 73 83 F3 59 A9 4C 07 0F 8F FF EF E7 77 B3   ; 14770
  C780  .byte 7F BF 5F BF DF AF 6E D9 FF 70 BC DF E7 D8 9F 3E   ; 14780
  C790  .byte A0 90 94 7E FF 8F 67 F6 C0 60 60 84 7A FC 9C 68   ; 14790
  C7A0  .byte 37 4B B3 65 2D 5B 3B 16 0E 3E 7E 1F 1F 3F 16 00   ; 147A0
  C7B0  .byte 37 9B C5 B1 8F 83 00 00 F8 7C 3E 0E 00 00 00 00   ; 147B0
  C7C0  .byte 7C DF FD C8 E0 C0 00 00 93 00 48 00 40 00 00 00   ; 147C0
  C7D0  .byte 7E F0 C0 80 00 00 00 00 90 40 80 00 00 00 00 00   ; 147D0
  C7E0  .byte 00 04 26 12 22 33 04 00 00 08 28 14 24 34 03 00   ; 147E0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C7F0  .byte 03 04 07 06 07 3E 46 B3 00 03 03 03 03 03 3B 5D   ; 147F0 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C800  .byte 30 48 74 68 74 E8 68 3F 00 30 38 30 38 30 B0 D0   ; 14800 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C810  .byte 4D 5F 9F CF EF F3 71 3C 36 23 60 70 7C 7F 3E 3F   ; 14810 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C820  .byte D2 FD F9 FD FA F4 F4 32 6C 8E 2E 2E 2C D8 38 FC   ; 14820 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C830  .byte 0B 0B 04 13 2A 45 75 DE 07 07 03 00 11 3B 3B 61   ; 14830 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C840  .byte CC FE FF 07 FF 8C 88 88 F7 F1 F2 F9 00 F0 F0 F0   ; 14840 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C850  .byte 32 FA FE 1F FE 30 20 20 DC C4 C8 E6 00 C0 C0 C0   ; 14850 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C860  .byte 3A 69 FD 5E F6 F7 76 F6 15 36 6E 2F 5B 59 39 79   ; 14860 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C870  .byte 72 BA D9 59 59 A9 49 69 9C 5C 3E BE BE DE FE DE   ; 14870 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C880  .byte F5 75 74 28 10 00 00 00 78 18 38 10 00 00 00 00   ; 14880 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C890  .byte B9 BA 5F 5E 3E 1E 04 00 4E 44 28 28 00 04 00 00   ; 14890 data, read by ram:0795 ram:079b ram:07a1 ram:07a7 (+12)
  C8A0  .byte 14 13 13 12 11 11 10 10 0F 0E 0E 0D 0D 0C 0B 0B   ; 148A0 data, read by ram:0795 14999 1497c ram:079b (+14)
  C8B0  .byte 0A 0A 09 09 08 08 07 07 07 06 06 05 05 05 04 04   ; 148B0 data, read by ram:0795 14999 1497c ram:079b (+14)
  C8C0  .byte 04 03 03 03 02 02 02 02 02 01 01 01 01 01 01 00   ; 148C0 data, read by ram:0795 14999 1497c ram:079b (+14)
  C8D0  .byte 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ; 148D0 data, read by ram:0795 14999 1497c ram:079b (+14)
  C8E0  .byte 00 01 01 01 01 01 01 02 02 02 02 02 03 03 03 04   ; 148E0 data, read by 14999 1497c
  C8F0  .byte 04 04 05 05 05 06 06 07 07 07 08 08 09 09 0A 0A   ; 148F0 data, read by 14999 1497c
  C900  .byte 0B 0B 0C 0D 0D 0E 0E 0F 10 10 11 11 12 13 13 14   ; 14900 data, read by 14999 1497c
  C910  .byte 15 16 16 17 18 19 19 1A 1B 1C 1D 1D 1E 1F 20 21   ; 14910 data, read by 14999 1497c
  C920  .byte 22 23 23 24 25 26 27 28 29 2A 2B 2C 2D 2E 2F 30   ; 14920 data, read by 14999 1497c
  C930  .byte 31 32 33 34 35 36 37 38 39 3A 3B 3C 3D 3E 3F 40   ; 14930 data, read by 14999 1497c
  C940  .byte 41 42 43 45 46 47 48 49 4A 4B 4C 4D 4F 50 51 52   ; 14940 data, read by 14999 1497c
  C950  .byte 53 54 55 56 57 59 5A 5B                           ; 14950 data, read by 14999 1497c

loc_B2_C958:                    ; from 10018
  C958  A6 82     LDX $82                       ; 14958 ×8770
  C95A  BD A2 04  LDA $04A2,X                   ; 1495A ×8770
  C95D  29 BF     AND #$BF                      ; 1495D ×8770
  C95F  9D A2 04  STA $04A2,X                   ; 1495F ×8770
  C962  BD FD 03  LDA $03FD,X                   ; 14962 ×8770
  C965  38        SEC                           ; 14965 ×8770
  C966  E5 BC     SBC $BC                       ; 14966 ×8770
  C968  A8        TAY                           ; 14968 ×8770
  C969  BD EE 03  LDA $03EE,X                   ; 14969 ×8770
  C96C  29 01     AND #$01                      ; 1496C ×8770
  C96E  9D EE 03  STA $03EE,X                   ; 1496E ×8770
  C971  E5 BD     SBC $BD                       ; 14971 ×8770
  C973  6A        ROR A                         ; 14973 ×8770
  C974  98        TYA                           ; 14974 ×8770
  C975  B0 19     BCS loc_B2_C990               ; 14975 ×8770
  C977  E9 49     SBC #$49                      ; 14977 ×3535
  C979  90 08     BCC loc_B2_C983               ; 14979 ×3535
  C97B  A8        TAY                           ; 1497B ×3209
  C97C  B9 A0 C8  LDA $C8A0,Y                   ; 1497C ×3209
  C97F  69 25     ADC #$25                      ; 1497F ×3209
  C981  D0 19     BNE loc_B2_C99C               ; 14981 ×3209

loc_B2_C983:                    ; from 14994 14979
  C983  A0 40     LDY #$40                      ; 14983 ×1470
  C985  BD A2 04  LDA $04A2,X                   ; 14985 ×1470
  C988  29 80     AND #$80                      ; 14988 ×1470
  C98A  F0 10     BEQ loc_B2_C99C               ; 1498A ×1470
  C98C  A9 FF     LDA #$FF                      ; 1498C ×6
  C98E  D0 0C     BNE loc_B2_C99C               ; 1498E ×6

loc_B2_C990:                    ; from 14975
  C990  49 FF     EOR #$FF                      ; 14990 ×5235
  C992  E9 48     SBC #$48                      ; 14992 ×5235
  C994  90 ED     BCC loc_B2_C983               ; 14994 ×5235
  C996  A8        TAY                           ; 14996 ×4091
  C997  A9 DB     LDA #$DB                      ; 14997 ×4091
  C999  F9 A0 C8  SBC $C8A0,Y                   ; 14999 ×4091

loc_B2_C99C:                    ; from 14981 1498a 1498e
  C99C  9D 84 04  STA $0484,X                   ; 1499C ×8770
  C99F  84 15     STY $15                       ; 1499F ×8770
  C9A1  60        RTS                           ; 149A1 ×8770

loc_B2_C9A2:                    ; from 10021
  C9A2  A6 82     LDX $82                       ; 149A2 ×2017
  C9A4  A9 00     LDA #$00                      ; 149A4 ×2017
  C9A6  9D DE 04  STA $04DE,X                   ; 149A6 ×2017
  C9A9  A8        TAY                           ; 149A9 ×2017
  C9AA  BD 83 05  LDA $0583,X                   ; 149AA ×2017
  C9AD  38        SEC                           ; 149AD ×2017
  C9AE  FD FD 03  SBC $03FD,X                   ; 149AE ×2017
  C9B1  85 1F     STA $1F                       ; 149B1 ×2017
  C9B3  F0 0D     BEQ loc_B2_C9C2               ; 149B3 ×2017
  C9B5  DE 83 05  DEC $0583,X                   ; 149B5 ×1897
  C9B8  B0 08     BCS loc_B2_C9C2               ; 149B8 ×1897
  C9BA  A0 F0     LDY #$F0                      ; 149BA ×941
  C9BC  FE 83 05  INC $0583,X                   ; 149BC ×941
  C9BF  FE 83 05  INC $0583,X                   ; 149BF ×941

loc_B2_C9C2:                    ; from 149b8 149b3
  C9C2  A5 1F     LDA $1F                       ; 149C2 ×2017
  C9C4  4A        LSR A                         ; 149C4 ×2017
  C9C5  7E DE 04  ROR $04DE,X                   ; 149C5 ×2017
  C9C8  4A        LSR A                         ; 149C8 ×2017
  C9C9  7E DE 04  ROR $04DE,X                   ; 149C9 ×2017
  C9CC  4A        LSR A                         ; 149CC ×2017
  C9CD  7E DE 04  ROR $04DE,X                   ; 149CD ×2017
  C9D0  4A        LSR A                         ; 149D0 ×2017
  C9D1  7E DE 04  ROR $04DE,X                   ; 149D1 ×2017
  C9D4  9D DF 03  STA $03DF,X                   ; 149D4 ×2017
  C9D7  18        CLC                           ; 149D7 ×2017
  C9D8  98        TYA                           ; 149D8 ×2017
  C9D9  7D DF 03  ADC $03DF,X                   ; 149D9 ×2017
  C9DC  9D DF 03  STA $03DF,X                   ; 149DC ×2017
  C9DF  C9 10     CMP #$10                      ; 149DF ×2017
  C9E1  90 04     BCC loc_B2_C9E7               ; 149E1 ×2017
  C9E3  49 FF     EOR #$FF                      ; 149E3 ×941
  C9E5  69 00     ADC #$00                      ; 149E5 ×941

loc_B2_C9E7:                    ; from 149e1
  C9E7  A8        TAY                           ; 149E7 ×2017
  C9E8  B9 EF C9  LDA $C9EF,Y                   ; 149E8 ×2017
  C9EB  9D ED 04  STA $04ED,X                   ; 149EB ×2017
  C9EE  60        RTS                           ; 149EE ×2017
  C9EF  .byte 27 27 28 28 29 29 29 29 29                        ; 149EF data, read by 149e8
  C9F8  .byte 29 29 29 29 29 29 29 29 D0 D0 D1 D2 D4 D4 D4 D4   ; 149F8
  CA08  .byte D4                                                ; 14A08

loc_B2_CA09:                    ; from 14a3c
  CA09  A9 00     LDA #$00                      ; 14A09 ×6
  CA0B  85 00     STA $00                       ; 14A0B ×6
  CA0D  60        RTS                           ; 14A0D ×6

loc_B2_CA0E:                    ; from 10006
  CA0E  A6 15     LDX $15                       ; 14A0E ×6
  CA10  A9 01     LDA #$01                      ; 14A10 ×6
  CA12  85 00     STA $00                       ; 14A12 ×6
  CA14  AD 02 20  LDA $2002                     ; 14A14 ×6
  CA17  BD DA CA  LDA $CADA,X                   ; 14A17 ×6
  CA1A  85 01     STA $01                       ; 14A1A ×6
  CA1C  BD DB CA  LDA $CADB,X                   ; 14A1C ×6
  CA1F  85 02     STA $02                       ; 14A1F ×6
  CA21  A0 00     LDY #$00                      ; 14A21 ×6
  CA23  B1 01     LDA ($01),Y                   ; 14A23 ×6
  CA25  85 03     STA $03                       ; 14A25 ×6
  CA27  C8        INY                           ; 14A27 ×6
  CA28  B1 01     LDA ($01),Y                   ; 14A28 ×6
  CA2A  85 04     STA $04                       ; 14A2A ×6
  CA2C  98        TYA                           ; 14A2C ×6
  CA2D  38        SEC                           ; 14A2D ×6
  CA2E  65 01     ADC $01                       ; 14A2E ×6
  CA30  85 01     STA $01                       ; 14A30 ×6
  CA32  A5 02     LDA $02                       ; 14A32 ×6
  CA34  69 00     ADC #$00                      ; 14A34 ×6
  CA36  85 02     STA $02                       ; 14A36 ×6

loc_B2_CA38:                    ; from 14ab7
  CA38  A0 00     LDY #$00                      ; 14A38 ×15
  CA3A  B1 01     LDA ($01),Y                   ; 14A3A ×15
  CA3C  F0 CB     BEQ loc_B2_CA09               ; 14A3C ×15
  CA3E  85 05     STA $05                       ; 14A3E ×9
  CA40  C8        INY                           ; 14A40 ×9
  CA41  B1 01     LDA ($01),Y                   ; 14A41 ×9
  CA43  85 08     STA $08                       ; 14A43 ×9
  CA45  C8        INY                           ; 14A45 ×9
  CA46  B1 01     LDA ($01),Y                   ; 14A46 ×9
  CA48  85 06     STA $06                       ; 14A48 ×9
  CA4A  C8        INY                           ; 14A4A ×9
  CA4B  B1 01     LDA ($01),Y                   ; 14A4B ×9
  CA4D  85 07     STA $07                       ; 14A4D ×9
  CA4F  98        TYA                           ; 14A4F ×9
  CA50  38        SEC                           ; 14A50 ×9
  CA51  65 01     ADC $01                       ; 14A51 ×9
  CA53  85 01     STA $01                       ; 14A53 ×9
  CA55  A5 02     LDA $02                       ; 14A55 ×9
  CA57  69 00     ADC #$00                      ; 14A57 ×9
  CA59  85 02     STA $02                       ; 14A59 ×9
  CA5B  A0 00     LDY #$00                      ; 14A5B ×9
  CA5D  B1 06     LDA ($06),Y                   ; 14A5D ×9
  CA5F  85 1B     STA $1B                       ; 14A5F ×9
  CA61  C8        INY                           ; 14A61 ×9
  CA62  B1 06     LDA ($06),Y                   ; 14A62 ×9
  CA64  85 1C     STA $1C                       ; 14A64 ×9
  CA66  C8        INY                           ; 14A66 ×9
  CA67  A5 04     LDA $04                       ; 14A67 ×9
  CA69  8D 06 20  STA $2006                     ; 14A69 ×9
  CA6C  A5 03     LDA $03                       ; 14A6C ×9
  CA6E  8D 06 20  STA $2006                     ; 14A6E ×9
  CA71  A9 00     LDA #$00                      ; 14A71 ×9
  CA73  85 1A     STA $1A                       ; 14A73 ×9
  CA75  A5 05     LDA $05                       ; 14A75 ×9
  CA77  0A        ASL A                         ; 14A77 ×9
  CA78  26 1A     ROL $1A                       ; 14A78 ×9
  CA7A  0A        ASL A                         ; 14A7A ×9
  CA7B  26 1A     ROL $1A                       ; 14A7B ×9
  CA7D  0A        ASL A                         ; 14A7D ×9
  CA7E  26 1A     ROL $1A                       ; 14A7E ×9
  CA80  0A        ASL A                         ; 14A80 ×9
  CA81  26 1A     ROL $1A                       ; 14A81 ×9
  CA83  85 19     STA $19                       ; 14A83 ×9
  CA85  18        CLC                           ; 14A85 ×9
  CA86  65 03     ADC $03                       ; 14A86 ×9
  CA88  85 03     STA $03                       ; 14A88 ×9
  CA8A  A5 1A     LDA $1A                       ; 14A8A ×9
  CA8C  65 04     ADC $04                       ; 14A8C ×9
  CA8E  85 04     STA $04                       ; 14A8E ×9
  CA90  A9 00     LDA #$00                      ; 14A90 ×9
  CA92  38        SEC                           ; 14A92 ×9
  CA93  E5 19     SBC $19                       ; 14A93 ×9
  CA95  85 19     STA $19                       ; 14A95 ×9
  CA97  A9 00     LDA #$00                      ; 14A97 ×9
  CA99  E5 1A     SBC $1A                       ; 14A99 ×9
  CA9B  85 1A     STA $1A                       ; 14A9B ×9

loc_B2_CA9D:                    ; from 14ab1 14ad8 14ab5
  CA9D  B1 06     LDA ($06),Y                   ; 14A9D ×2430
  CA9F  C8        INY                           ; 14A9F ×2430
  CAA0  D0 02     BNE loc_B2_CAA4               ; 14AA0 ×2430
  CAA2  E6 07     INC $07                       ; 14AA2 ×6

loc_B2_CAA4:                    ; from 14aa0
  CAA4  C5 1B     CMP $1B                       ; 14AA4 ×2430
  CAA6  F0 16     BEQ loc_B2_CABE               ; 14AA6 ×2430
  CAA8  C5 1C     CMP $1C                       ; 14AA8 ×2376
  CAAA  F0 0E     BEQ loc_B2_CABA               ; 14AAA ×2376
  CAAC  8D 07 20  STA $2007                     ; 14AAC ×2349
  CAAF  E6 19     INC $19                       ; 14AAF ×2349
  CAB1  D0 EA     BNE loc_B2_CA9D               ; 14AB1 ×2349
  CAB3  E6 1A     INC $1A                       ; 14AB3 ×12
  CAB5  D0 E6     BNE loc_B2_CA9D               ; 14AB5 ×12

loc_B2_CAB7:                    ; from 14ad2
  CAB7  4C 38 CA  JMP loc_B2_CA38               ; 14AB7 ×9

loc_B2_CABA:                    ; from 14aaa
  CABA  A2 FF     LDX #$FF                      ; 14ABA ×27
  CABC  D0 02     BNE loc_B2_CAC0               ; 14ABC ×27

loc_B2_CABE:                    ; from 14aa6
  CABE  A2 00     LDX #$00                      ; 14ABE ×54

loc_B2_CAC0:                    ; from 14abc
  CAC0  B1 06     LDA ($06),Y                   ; 14AC0 ×81
  CAC2  85 05     STA $05                       ; 14AC2 ×81
  CAC4  C8        INY                           ; 14AC4 ×81
  CAC5  D0 02     BNE loc_B2_CAC9               ; 14AC5 ×81
  CAC7  E6 07     INC $07                       ; 14AC7 inferred, not run

loc_B2_CAC9:                    ; from 14ad6 14ac5
  CAC9  8E 07 20  STX $2007                     ; 14AC9 ×243
  CACC  E6 19     INC $19                       ; 14ACC ×243
  CACE  D0 04     BNE loc_B2_CAD4               ; 14ACE ×243
  CAD0  E6 1A     INC $1A                       ; 14AD0 ×3
  CAD2  F0 E3     BEQ loc_B2_CAB7               ; 14AD2 ×3

loc_B2_CAD4:                    ; from 14ace
  CAD4  C6 05     DEC $05                       ; 14AD4 ×240
  CAD6  D0 F1     BNE loc_B2_CAC9               ; 14AD6 ×240
  CAD8  F0 C3     BEQ loc_B2_CA9D               ; 14AD8 ×78
  CADA  E6 CA     INC $CA                       ; 14ADA inferred, not run
  CADC  ED CA F4  SBC $F4CA                     ; 14ADC inferred, not run
  CADF  CA        DEX                           ; 14ADF inferred, not run
  CAE0  .byte FF CA                                             ; 14AE0
  CAE2  .byte 0A CB 15 CB                                       ; 14AE2 data, read by 14a17 14a1c
  CAE6  .byte 00 10 BF 04 C6 CD 00 00 00 FF 04 CE D4 00 00 14   ; 14AE6
  CAF6  .byte 30 04 9A E1 15 04 02 CC 00 00 10 F5 04 F5 E2 07   ; 14AF6
  CB06  .byte 04 5B EC 00                                       ; 14B06
  CB0A  .byte E0 05 12 04 45 CD 15 04 02 CC 00 80 0D 0F 04 1C   ; 14B0A data, read by 14a23 14a28 14a3a 14a41 (+2)
  CB1A  .byte CB 00 0A 0B 06 1F 3F 7F 7F FC FC 78 00 06 1E 3E   ; 14B1A data, read by 14a4b 14a3a 14a5d 14a62 (+1)
  CB2A  .byte 3F 7C 7C 38 60 F8 FC FE FF CE C2 86 00 60 E0 EC   ; 14B2A data, read by 14a9d
  CB3A  .byte FE CC C0 84 3E 3E 3C 70 61 80 99 47 1E 18 14 22   ; 14B3A data, read by 14a9d
  CB4A  .byte 00 05 1E 06 84 8C 3E 0F 4F 07 46 FA 80 08 3C 86   ; 14B4A data, read by 14a9d
  CB5A  .byte 06 7A B8 80 31 3C 7E 7E 0B 02 FE FE 01 10 3C 3C   ; 14B5A data, read by 14a9d 14ac0
  CB6A  .byte 7C 7C 7D 7D A4 14 94 1A 09 0E 0E 2E C0 60 60 E0   ; 14B6A data, read by 14a9d
  CB7A  .byte F0 F0 F0 D0 FE 7E 3E 06 02 02 02 04 7D 3D 05 01   ; 14B7A data, read by 14a9d
  CB8A  .byte 01 01 01 03 97 97 96 96 96 AC AC 2C 68 68 68 68   ; 14B8A data, read by 14a9d
  CB9A  .byte 68 50 50 D0 11 25 25 4D FF E3 40 00 0E 1A 1A 32   ; 14B9A data, read by 14a9d
  CBAA  .byte 0A 04 46 96 96 36 FE 8F 0A 02 70 68 68 C8 0A 06   ; 14BAA data, read by 14a9d 14ac0
  CBBA  .byte 18 10 00 10 1C 30 0A 02 18 10 00 30 3C 78 0A 02   ; 14BBA data, read by 14a9d 14ac0
  CBCA  .byte 01 0D 1A 60 60 30 01 01 03 0D 1E 7A 60 38 0E 00   ; 14BCA data, read by 14a9d
  CBDA  .byte 10 DC AC 0A 02 01 1E 1C 30 DC EC A0 00 81 06 03   ; 14BDA data, read by 14a9d 14ac0
  CBEA  .byte 01 01 0A 04 0E 03 01 01 0A 04 18 08 08 04 06 0A   ; 14BEA data, read by 14a9d 14ac0
  CBFA  .byte 03 18 88 08 04 06 0A 03 0D 0F 0D 06 1C 7F 0D 05   ; 14BFA data, read by 14ac0 14a9d 14a5d 14a62
  CC0A  .byte 1C 63 98 1F 3F 3F 7F 7F 7F 7F 3F 2E 4C 59 92 90   ; 14C0A data, read by 14a9d
  CC1A  .byte 80 80 48 F0 F0 F0 DC CE 9E BE DE 08 08 0C 22 31   ; 14C1A data, read by 14a9d
  CC2A  .byte 71 61 31 0D 02 01 03 06 05 0B 07 01 01 02 04 09   ; 14C2A data, read by 14a9d 14ac0
  CC3A  .byte 0B 17 DF 0F 04 7E BC BD 39 20 40 40 00 81 C3 C3   ; 14C3A data, read by 14a9d 14ac0
  CC4A  .byte C7 70 F0 70 E0 F8 FF FE 81 C8 88 88 10 78 0F 02   ; 14C4A data, read by 14a9d 14ac0
  CC5A  .byte FE 0D 04 34 FC BE 7C 0D 03 04 3A F2 C9 92 1B 1F   ; 14C5A data, read by 14a9d 14ac0
  CC6A  .byte 7F 3F 1F 07 0D 02 37 73 E0 4C 23 18 07 00 CC 9B   ; 14C6A data, read by 14a9d 14ac0
  CC7A  .byte 3B B7 C7 E3 F1 38 F3 E4 C5 49 28 94 0A C5 0C DE   ; 14C7A data, read by 14a9d
  CC8A  .byte 0F 02 FE FD FB FB F2 2D 88 08 01 02 24 04 1E 3C   ; 14C8A data, read by 14a9d 14ac0
  CC9A  .byte B8 F0 60 C0 C0 80 29 D2 64 08 90 20 20 40 73 3D   ; 14C9A data, read by 14a9d
  CCAA  .byte 3D 14 16 36 3F 1F 8C 42 42 2B 2F 4F 5F 3F DC DC   ; 14CAA data, read by 14a9d
  CCBA  .byte E4 E2 EA EA 68 68 A2 A2 9A 5D 5D 5D DE 9E 7E 7E   ; 14CBA data, read by 14a9d
  CCCA  .byte 3E 3E 3E 1E 1E 0E 0F 02 7F 7F 7F 3F 3F 1F AC 9C   ; 14CCA data, read by 14a9d 14ac0
  CCDA  .byte 9C 9C 9C 98 98 98 DF 0F 05 FE FE 3F 3F 3B 7B 44   ; 14CDA data, read by 14a9d 14ac0
  CCEA  .byte 3F 1F 3E 40 60 66 D7 FB 50 30 71 DC EC EE EE 26   ; 14CEA data, read by 14a9d
  CCFA  .byte DC D8 B0 26 16 93 DB DF 22 24 48 7D 7D 7B 7B 3B   ; 14CFA data, read by 14a9d
  CD0A  .byte 3A 3A 3A C2 C2 C4 C4 64 65 65 65 F6 F4 EC EC EC   ; 14D0A data, read by 14a9d
  CD1A  .byte E8 E8 E8 09 0A 12 12 92 94 94 94 78 38 3A 3A 1A   ; 14D1A data, read by 14a9d
  CD2A  .byte 1A 7A 7A C6 66 65 65 35 75 E5 C5 3D 3A 3A 7A 74   ; 14D2A data, read by 14a9d
  CD3A  .byte 3A 18 00 62 65 65 C5 DA 55 2E 18 05 09 00 F1 F3   ; 14D3A data, read by 14a9d 14a5d 14a62
  CD4A  .byte 00 E3 C0 00 09 03 1C FF FC 3F 09 02 03 C1 C7 3F   ; 14D4A data, read by 14a9d 14ac0
  CD5A  .byte FC 00 01 8F FC FE 38 C0 03 FF FE F0 FE FC E0 F0   ; 14D5A data, read by 14a9d
  CD6A  .byte 70 60 80 C0 01 02 1C 08 88 90 60 20 7F 3F 1F 1F   ; 14D6A data, read by 14a9d
  CD7A  .byte 1F 07 03 03 F8 7F 33 3C 3F 1F 07 07 E3 88 F0 F0   ; 14D7A data, read by 14a9d
  CD8A  .byte 01 FC 80 CF 1C F7 FF 0F FE 09 02 F0 E6 04 0E 1E   ; 14D8A data, read by 14a9d 14ac0
  CD9A  .byte 7C 08 08 F0 19 FA F1 E1 82 F4 F4 08 78 30 39 10   ; 14D9A data, read by 14a9d
  CDAA  .byte 1C 38 1D 06 E7 7F 7E 3F 3F 7F 3E 1F 1E 0C F8 3C   ; 14DAA data, read by 14a9d
  CDBA  .byte 1C 38 F0 30 E1 F2 04 C2 E2 C4 08 C8 2C 2E 2C 1E   ; 14DBA data, read by 14a9d
  CDCA  .byte 30 58 00 01 03 00 14 30 20 5F 00 0C 14 10 05 02   ; 14DCA data, read by 14a9d 14ac0
  CDDA  .byte 1F 20 8E 22 43 00 03 6B 8C 71 00 69 4F 98 73 8B   ; 14DDA data, read by 14a9d
  CDEA  .byte 0C 70 00 B0 F4 70 7A 0F 79 C1 00 C0 E8 EC 24 68   ; 14DEA data, read by 14a9d
  CDFA  .byte 48 99 2C 07 80 2C 0E 03 0E 2C 0E 80 40 2C 0E 01   ; 14DFA data, read by 14a9d
  CE0A  .byte 04 2C 05 01 03 03 A0 A7 58 47 C0 D1 00 40 40 47   ; 14E0A data, read by 14a9d 14ac0
  CE1A  .byte 20 18 27 E0 80 3F 68 80 2C 03 10 06 10 67 9F 3F   ; 14E1A data, read by 14a9d
  CE2A  .byte FE F0 E0 01 0F 2F B2 06 0F 35 39 46 F7 33 07 0F   ; 14E2A data, read by 14a9d
  CE3A  .byte 1F 7B 13 83 E2 80 80 C0 E0 D0 E8 E4 34 2C 03 80   ; 14E3A data, read by 14a9d
  CE4A  .byte E0 F0 F8 F8 2C 04 06 0B 1D 3E 2C 04 01 07 03 01   ; 14E4A data, read by 14a9d
  CE5A  .byte 07 0B 1B 2F 7F 98 DD E8 00 04 0C 18 98            ; 14E5A data, read by 14a9d
  CE67  .byte FD F8 FC 45 82 22 70 7C 3A 3D 06 39 64 C4 86 BB   ; 14E67
  CE77  .byte AD FC E2 20 A0 58 AE 49 21 02 7A 80 80 2C 02 0C   ; 14E77
  CE87  .byte C4 F0 70 04 0A 20 05 68 29 FB 59 02 04 1C 38 31   ; 14E87
  CE97  .byte 71 61 E3 38 E0 60 44 2C 03 84 7F 43 C0 98 84 B0   ; 14E97
  CEA7  .byte 88 00 40 8F 18 10 10 10 2C 02 BF 3F 3F 7F 7F 3F   ; 14EA7
  CEB7  .byte 3F 3F 07 0B 02 04 01 0B 06 16 F0 F0 F8 F8 F8 F0   ; 14EB7
  CEC7  .byte F1 E1 FE FE 7E FE F4 76 7B FB 2C 04 08 88 84 04   ; 14EC7
  CED7  .byte 3F 7F 7F 7F 3F 0F 77 01 2C 08 FE 2E 04 C0 80 8E   ; 14ED7
  CEE7  .byte 2C 06 1F 3F 43 10 80 9C 87 20 04 0E 3C 0F 07 03   ; 14EE7
  CEF7  .byte 40 00 E0 F3 2D 08 05 01 C2 3D 03 8F 18 CF FA FE   ; 14EF7
  CF07  .byte 3C 2C 05 08 04 04 88 D0 A0 2C 07 40 01 01 02 03   ; 14F07
  CF17  .byte 04 00 0B 1F 2C 02 01 00 02 06 04 04 D2 41 01 00   ; 14F17
  CF27  .byte 86 18 30 00 20 E0 DE 20 00 88 B0 E0 2C 02 80 2C   ; 14F27
  CF37  .byte 02 C0 20 0C 20 10 00 80 80 00 40 00 20 00 08 18   ; 14F37
  CF47  .byte 2C 02 20 60 1F 0F 07 00 10 10 10 00 06 0D 2D 67   ; 14F47
  CF57  .byte 03 03 0D 09 E1 E2 C2 2C 02 08 00 04 FB FB FB FB   ; 14F57
  CF67  .byte F2 F6 F3 EC 04 04 04 04 0C 08 00 10 3E 0E 0F 0F   ; 14F67
  CF77  .byte 0F 0F 1F 3F 2C 07 03 1C 10 50 11 82 82 80 01 7F   ; 14F77
  CF87  .byte 7F 3F 3E 3C 3D 3D 3E 01 06 02 82 42 02 92 F2 F8   ; 14F87
  CF97  .byte F9 FD 7D 3D BD B1 89 8B 02 60 71 C1 80 40 00 70   ; 14F97
  CFA7  .byte FC FE FE FE 2E 03 80 A0 00 84 06 09 11 85 40 10   ; 14FA7
  CFB7  .byte 78 60 88 1C BA 06 17 16 1B 1A 1A 12 0B 04 0C 0C   ; 14FB7
  CFC7  .byte 0C 0C 0C 0C 04 00 80 2C 02 80 80 C0 20 20 2C 02   ; 14FC7
  CFD7  .byte 80 01 C2 44 64 18 3D 62 FC 23 10 10 08 01 02 1C   ; 14FD7
  CFE7  .byte 2C 02 0F 0F 07 06 08 42 A3 03 31 2C 04 84 42 01   ; 14FE7
  CFF7  .byte C0 F8 FC FC 04 05 0C 88 80 CC 52 19 05 04 05 05   ; 14FF7
  D007  .byte CD 69 29 13 EC 6E AE AC BC 98 D8 B8 F0 F0 F0 F0   ; 15007
  D017  .byte E0 E0 E0 C0 00 08 0F 13 13 10 10 11 00 07 1F 0F   ; 15017
  D027  .byte 0F 0F 0F 0E 01 47 C4 F8 FE FD 03 FE 3E 8E E0 F1   ; 15027
  D037  .byte 2E 03 01 8A 78 93 FF F3 C1 F8 E6 11 01 6C 2C 02   ; 15037
  D047  .byte 38 05 2C 04 01 01 01 01 03 2E 03 FE FE FE FE FC   ; 15047
  D057  .byte 8C B1 06 1C 13 31 2B 28 1C 1B 07 1D 09 03 11 1C   ; 15057
  D067  .byte 2C 04 40 40 60 30 00 80 80 80 80 80 80 C0 07 2C   ; 15067
  D077  .byte 0F C0 2C 0F 08 08 08 0D 04 04 05 00 06 07 07 00   ; 15077
  D087  .byte 02 2C 02 04 38 20 00 03 8C 00 32 16 40 C0 F8 F8   ; 15087
  D097  .byte 70 00 0C 68 14 65 00 07 05 04 04 04 33 62 2C 06   ; 15097
  D0A7  .byte 70 C0 00 18 E6 01 2C 02 80 2C 07 1C 0F 00 80 78   ; 150A7
  D0B7  .byte 9F 2C 02 03 2C 07 7F 01 2C 02 F8 8C 1F 3F 80 2C   ; 150B7
  D0C7  .byte 07 E2 C0 04 12 7C 41 00 C2 00 02 00 01 03 3E 3E   ; 150C7
  D0D7  .byte 1C 6C 00 60 20 60 C0 80 00 10 00 80 C0 80 2C 03   ; 150D7
  D0E7  .byte C4 39 1F 0B 01 04 00 01 38 2C 02 04 06 02 02 02   ; 150E7
  D0F7  .byte 10 F8 E8 E4 E6 64 B6 37 60 E0 F0 F8 F8 F9 78 78   ; 150F7
  D107  .byte 02 04 0B 0C 08 00 12 2A 06 00 01 01 04 0C 0C 1C   ; 15107
  D117  .byte 38 41 0F 9D 9B AD DD 15 40 00 80 83 87 93 03 03   ; 15117
  D127  .byte 04 FC 0C D8 98 98 DC DC 2C 02 F0 E0 E0 E0 E0 E0   ; 15127
  D137  .byte 2C 03 01 01 03 03 03 2C 08 7E FC F1 E3 C7 CE CE   ; 15137
  D147  .byte DE 01 03 0F 1F 3F 3F 3F 3F 68 27 81 0B 0D 6A 4A   ; 15147
  D157  .byte 58 80 CC EC E4 E6 84 94 84 00 C0 40 00 80 80 C0   ; 15157
  D167  .byte C0 80 2C 08 03 00 01 2C 0C 54 28 82 04 04 2C 03   ; 15167
  D177  .byte 38 10 2C 0A 01 01 02 2C 07 01 03 09 5D B5 35 65   ; 15177
  D187  .byte 61 61 C3 3E 3E 7E FE FE FE FE FC 04 24 84 A4 FC   ; 15187
  D197  .byte E4 C4 C4 03 03 03 03 03 03 03 03 DC DC CC CC EC   ; 15197
  D1A7  .byte E6 E6 E6 E0 E0 F0 F0 F0 F8 F8 F8 03 03 01 01 2C   ; 151A7
  D1B7  .byte 0C 9C BC FC DE DE CE 67 6F 7F 7F 3F 3F 3F 3F 1F   ; 151B7
  D1C7  .byte 1F 51 DA C1 56 65 23 25 23 8C 08 18 80 80 C0 C0   ; 151C7
  D1D7  .byte C0 E0 E0 60 D0 A0 A8 A8 A0 2C 03 20 70 70 70 78   ; 151D7
  D1E7  .byte 04 01 09 0B 0A 03 01 1F 03 07 07 07 07 0C 0F 00   ; 151E7
  D1F7  .byte 83 87 0F 9E BC 38 D0 90 FC F8 F0 60 40 C0 80 00   ; 151F7
  D207  .byte 84 04 06 02 02 02 0B 0F 03 03 01 01 01 01 2C 02   ; 15207
  D217  .byte 6E 6E 6E 6E 6A 0A 2A 84 F0 F0 F0 F0 F0 F0 F0 00   ; 15217
  D227  .byte 6F 6F 6D 25 26 36 16 12 1F 1F 1F 1F 1F 0F 0F 0F   ; 15227
  D237  .byte 07 93 D3 D3 D1 E9 69 69 E0 E0 E0 E0 E0 F0 F0 F0   ; 15237
  D247  .byte A4 34 10 82 8A 90 B4 AD 78 F8 FC 7C 7C 6E 6E 76   ; 15247
  D257  .byte 2C 04 01 2C 0B 11 30 64 F0 C8 06 01 0E 2C 02 06   ; 15257
  D267  .byte 62 2C 03 01 20 A0 20 10 18 78 FC 4C 2C 07 F0 04   ; 15267
  D277  .byte 04 04 0C 0C 0D 04 2C 03 03 2C 05 CC 44 62 80 27   ; 15277
  D287  .byte C6 CC 04 00 80 80 23 80 80 2C 06 80 2C 0B 1B 09   ; 15287
  D297  .byte 09 0D 08 05 08 04 07 07 07 03 07 02 00 02 69 28   ; 15297
  D2A7  .byte 48 88 32 02 1B E0 F0 F0 B0 F0 C0 02 1A 63 A3 71   ; 152A7
  D2B7  .byte 63 19 3A 6F F0 71 74 30 07 0F 30 76 F0 38 2C 02   ; 152B7
  D2C7  .byte 10 00 D0 20 6C 80 2C 02 80 80 60 00 60 00 06 03   ; 152C7
  D2D7  .byte 01 2C 05 01 2C 07 FC EC 6C FC B4 56 36 1E E0 F0   ; 152D7
  D2E7  .byte F0 70 78 38 18 08 01 0E 0C 0E 0E 07 06 06 00 01   ; 152E7
  D2F7  .byte 03 01 01 01 01 01 0C 5C D8 F8 D8 D8 D0 D0 00 A0   ; 152F7
  D307  .byte E0 E0 E0 E0 E0 E0 03 01 00 0F 03 1C 0C 08 00 02   ; 15307
  D317  .byte 2C 02 0C 0F 1F 1F BE CF 7E 08 40 71 71 E1 24 06   ; 15317
  D327  .byte 10 10 80 80 80 00 0D 20 7F FE 80 80 04 04 03 2C   ; 15327
  D337  .byte 03 7C 7C F8 F8 80 80 2C 0E 12 0B 07 07 05 07 0F   ; 15337
  D347  .byte 1E 0C 04 2C 02 02 2C 02 03 07 07 07 03 83 83 83   ; 15347
  D357  .byte 83 2C 08 D0 A0 A0 A0 40 40 C0 80 E0 C0 C0 C0 80   ; 15357
  D367  .byte 80 2C 02 28 39 33 17 06 4C 48 78 1F 1E 1C 38 38   ; 15367
  D377  .byte 30 30 20 E1 C1 81 01 01 01 03 03 2C 08 08 18 38   ; 15377
  D387  .byte 30 30 60 60 60 F0 E0 C0 C0 C0 80 80 80 2C 03 03   ; 15387
  D397  .byte 0E 08 1C 19 2C 04 01 06 00 01 00 01 7E CF 98 23   ; 15397
  D3A7  .byte CF 08 2C 02 01 06 9C 73 C6 9C 76 CC C8 70 C0 2C   ; 153A7
  D3B7  .byte 03 03 26 98 30 E0 80 2C 02 03 03 03 02 02 03 03   ; 153B7
  D3C7  .byte 06 2C 03 01 01 01 00 01 80 80 00 40 C0 40 A0 30   ; 153C7
  D3D7  .byte 2C 02 80 80 80 80 00 80 2C 03 01 01 02 05 05 2C   ; 153D7
  D3E7  .byte 05 01 03 03 50 B0 A0 20 40 40 00 80 20 40 40 C0   ; 153E7
  D3F7  .byte 80 80 80 80 03 03 03 03 07 07 0A 0F 2C 04 01 03   ; 153F7
  D407  .byte 07 07 C0 40 80 80 80 80 80 2C 02 80 2C 05 80 0B   ; 15407
  D417  .byte 0B 1B 15 19 01 2C 02 02 04 04 08 2C 04 10 20 E0   ; 15417
  D427  .byte E0 40 80 2C 02 38 70 60 40 80 2C 03 06 06 0E 0D   ; 15427
  D437  .byte 3D 30 3F 18 01 2C 04 18 2C 02 F0 AC 32 95 CA F1   ; 15437
  D447  .byte B6 6C 80 40 41 60 30 38 78 30 2C 02 80 E0 50 2C   ; 15447
  D457  .byte 06 F0 20 2C 03 05 02 01 2C 05 03 01 2C 06 20 B0   ; 15457
  D467  .byte 78 CF 5F 28 17 0B C0 C0 80 30 20 16 09 04 07 01   ; 15467
  D477  .byte 2C 02 F8 F8 1C 84 07 03 2C 03 70 00 C0 C0 E0 38   ; 15477
  D487  .byte 2F 1C 03 2C 02 80 C0 C0 06 01 2C 06 F4 D1 95 43   ; 15487
  D497  .byte 2C 04 0E E0 0E 21 04 2C 05 80 C0 C0 2C 06 80 E0   ; 15497
  D4A7  .byte 05 03 01 2C 05 02 2C 07 FE 83 61 F8 48 30 2C 02   ; 154A7
  D4B7  .byte 78 07 C0 30 30 2C 04 80 40 2C 07 80 2C 05 01 2C   ; 154B7
  D4C7  .byte 07 0A 2C 0F 60 2C 07 4D 52 4D 16 01 03 4D 0B 3C   ; 154C7
  D4D7  .byte 7F DF 8F 30 4D 05 20 70 0F 4D 05 C0 F0 F8 4D 0F   ; 154D7
  D4E7  .byte 78 4D 08 02 06 04 0E 0E 18 59 D3 4D 08 0C 02 01   ; 154E7
  D4F7  .byte 01 70 BE FC 7A 03 01 4D 06 3C 1E A7 E3 33 5C 0C   ; 154F7
  D507  .byte CE C0 E0 58 1C 0C 03 03 01 4D 03 80 C0 E0 60 30   ; 15507
  D517  .byte 4D 06 80 C0 4D 02 03 04 0F 1C 18 10 4D 02 07 0F   ; 15517
  D527  .byte 18 10 20 20 4D 02 D0 30 F8 4C 06 06 4D 02 E0 F8   ; 15527
  D537  .byte 3C 1C 0C 04 4D 04 03 07 0F 1E 4D 07 01 00 08 32   ; 15537
  D547  .byte FB FF C9 11 70 4D 03 04 00 30 E0 80 4D 05 01 C1   ; 15547
  D557  .byte 42 4D 08 03 0C 30 41 93 03 4D 06 01 4D 03 86 01   ; 15557
  D567  .byte 10 32 FF F8 78 4D 04 FC FF 07 01 4D 02 E0 18 06   ; 15567
  D577  .byte 41 D0 F0 5A 4D 04 80 E0 F8 3C 4D 05 80 40 20 4D   ; 15577
  D587  .byte 09 01 00 03 01 05 04 0A 4D 02 01 00 02 02 02 04   ; 15587
  D597  .byte 95 A7 1F 2F 0F 2F 7D 4B 02 4D 02 10 30 70 60 F0   ; 15597
  D5A7  .byte F3 E9 C7 AB CF 97 1E 1F 04 04 18 10 30 60 E0 E0   ; 155A7
  D5B7  .byte C7 83 01 58 F8 81 8C 08 4D 08 38 9C 9C CE 27 3B   ; 155B7
  D5C7  .byte 3B 0F C0 60 60 30 18 04 04 4D 07 80 80 4D 0E 01   ; 155C7
  D5D7  .byte 4D 09 40 20 60 00 40 00 80 00 20 40 40 40 80 80   ; 155D7
  D5E7  .byte 4D 03 02 01 03 07 0E 1C 39 06 04 4D 03 01 03 06   ; 155E7
  D5F7  .byte 79 F3 CF 92 31 F8 1A 2B 06 0C 30 60 C0 4D 03 B3   ; 155F7
  D607  .byte B0 10 41 25 02 08 C4 00 01 01 00 40 70 70 38 0A   ; 15607
  D617  .byte 8A 6C 04 90 31 E8 C8 4D 02 80 E0 60 F0 30 30 01   ; 15617
  D627  .byte 10 20 20 80 C0 90 4D 02 10 30 40 40 C0 C0 80 4D   ; 15627
  D637  .byte 03 60 00 C0 C0 20 4D 05 80 60 70 3D 07 07 01 4D   ; 15637
  D647  .byte 04 06 4D 07 10 10 88 88 04 04 02 02 4D 08 0C 17   ; 15647
  D657  .byte 17 17 2F 2E 3F 5C 06 0C 0F 0F 1F 1F 1E 3E C9 DB   ; 15657
  D667  .byte D9 FA A4 AC BC 7C F1 E1 E3 C3 DF 5F 5F 1F 1E 1D   ; 15667
  D677  .byte 29 39 50 98 C3 D3 E0 E0 C0 C2 C6 C6 8C 8C 08 D0   ; 15677
  D687  .byte D9 B1 AA 01 4E 39 4D 03 48 50 F0 B1 E4 07 03 03   ; 15687
  D697  .byte 31 71 0F 88 C4 4D 07 03 C0 C0 E0 60 00 E0 2E 17   ; 15697
  D6A7  .byte 4D 06 04 8E 4D 04 60 E8 1C 81 4D 04 60 FC 2C DB   ; 156A7
  D6B7  .byte 4D 04 03 01 03 4D 09 32 69 D0 00 C8 06 C8 08 0C   ; 156B7
  D6C7  .byte 10 20 60 01 09 07 07 12 05 09 29 E9 6D 3C FE 21   ; 156C7
  D6D7  .byte 30 30 10 10 90 F0 F0 60 E6 87 BC B8 80 C1 9B 9C   ; 156D7
  D6E7  .byte 1E 7F 7F 7F 7F 3E 64 80 B2 00 81 07 67 E2 E5 72   ; 156E7
  D6F7  .byte 42 E2 E4 E5 84 07 01 00 02 4C 31 0D BF F9 E5 4D   ; 156F7
  D707  .byte 04 86 7D 7B 72 30 E1 A4 DD DB 0C 98 1C 20 10 18   ; 15707
  D717  .byte 0A 89 89 0C 48 00 80 80 40 00 80 10 70 4D 05 C0   ; 15717
  D727  .byte 60 20 02 01 01 03 01 03 01 01 4D 0F 01 4D 08 5E   ; 15727
  D737  .byte 78 34 B1 F9 60 51 C3 3C 3C 78 78 70 F1 E1 E1 9E   ; 15737
  D747  .byte 7B 77 FE EF FD FD B7 7D FD F9 F1 F1 E3 C3 C3 C3   ; 15747
  D757  .byte 96 E4 E6 E7 FE FB FF 9C FD FC FE FE FD BD 99 58   ; 15757
  D767  .byte 44 79 BD 37 DF 4F DF E0 E0 C4 47 CF 8F 9E 9E 8A   ; 15767
  D777  .byte 83 8F 1D BC 39 11 38 45 8C 9F 9E 1C 1C 28 00 20   ; 15777
  D787  .byte FD BF 9D D5 FB 00 8F C0 0B CA CA F8 92 10 00 60   ; 15787
  D797  .byte 9E 2F A3 BB 3D 29 FF 21 EC D3 C1 E7 13 4D 02 01   ; 15797
  D7A7  .byte 04 00 99 6F FB BB 1F 00 03 8F 0F 5F CF 1F 08 83   ; 157A7
  D7B7  .byte 61 33 DB A9 15 A1 C0 07 87 C3 E3 F1 B9 9D 9D FE   ; 157B7
  D7C7  .byte FE FE FE FF FD 7D 3C F8 F8 F8 FC FC FE FE FF 0E   ; 157C7
  D7D7  .byte 00 70 6E 3A 01 11 84 4D 02 70 3C 0C 18 03 03 01   ; 157D7
  D7E7  .byte 00 1C 70 D0 00 1F 7C 01 00 52 02 7F 52 03 E2 33   ; 157E7
  D7F7  .byte 9E 2D 08 31 E4 80 4C 01 0E C4 F0 FE FF 07 0C 4C   ; 157F7
  D807  .byte DA 06 00 81 1F 00 48 88 81 07 1F 7F 52 02 4D 02   ; 15807
  D817  .byte 04 10 00 C0 8C 00 C0 00 F8 E0 F0 F8 C0 80 01 02   ; 15817
  D827  .byte 02 01 01 01 01 01 4D 08 01 4D 02 02 02 02 02 03   ; 15827
  D837  .byte 00 01 01 01 01 01 01 00 A3 81 C1 40 00 82 12 20   ; 15837
  D847  .byte C1 C3 83 83 82 4D 03 F3 53 DF DD 97 97 16 1E 87   ; 15847
  D857  .byte 87 02 02 08 08 08 00 52 03 FD 39 39 39 39 39 19   ; 15857
  D867  .byte 11 10 10 10 4D 02 DE CF BD 3D BE 96 8E 8E 9E 9E   ; 15867
  D877  .byte 9E 8E 8C 0C 14 10 4D 04 01 01 01 4D 09 DF 33 44   ; 15877
  D887  .byte 9B BE CC F0 F8 3F 40 83 86 9C B0 40 38 FF 18 69   ; 15887
  D897  .byte 9B 27 4E 9E 00 FF E0 86 04 18 31 60 00 D1 01 84   ; 15897
  D8A7  .byte 90 90 30 00 60 CC 24 00 10 10 80 20 E0 D4 16 1C   ; 158A7
  D8B7  .byte 1E 1E 0A 0A 0A 0A 08 4D 03 04 04 04 00 01 49 2C   ; 158B7
  D8C7  .byte 08 10 44 67 FF 7E 36 12 10 40 4D 02 C5 62 F2 31   ; 158C7
  D8D7  .byte 78 18 A8 C8 03 81 01 40 00 20 10 90 8C 45 A2 40   ; 158D7
  D8E7  .byte BD 60 18 00 FE FB 7C BE 42 1F 07 00 3C AB 10 F1   ; 158E7
  D8F7  .byte 14 10 41 11 13 D0 CF 0E F8 E0 82 02 F1 9C 64 01   ; 158F7
  D907  .byte 18 18 21 E2 0F 62 82 4D 02 42 42 10 58 84 02 00   ; 15907
  D917  .byte 01 21 82 C2 80 40 4D 06 06 02 02 02 02 22 22 22   ; 15917
  D927  .byte 4D 09 02 02 4D 05 02 4D 07 D5 AA D5 EA 75 7A 54   ; 15927
  D937  .byte 3E 4D 06 02 1C 30 70 11 D8 48 AD 80 1C 4D 04 30   ; 15937
  D947  .byte 10 40 00 3A 32 22 02 03 02 02 2E 08 4D 03 01 01   ; 15947
  D957  .byte 01 01 AC 8C 97 06 07 09 58 5F 08 2D 35 37 37 3B   ; 15957
  D967  .byte 3B 3F 0C 2C 2C 0C 53 F1 84 B8 4D 03 30 AC 8E 52   ; 15967
  D977  .byte 02 0F 44 04 08 B1 81 CA C4 07 00 0F 00 06 26 24   ; 15977
  D987  .byte 00 FF 00 1C 4C 7E FC 84 80 FF 00 F8 08 40 42 42   ; 15987
  D997  .byte 42 80 4D 05 18 4D 08 18 0C 0C 1C 24 04 0C 8C 4C   ; 15997
  D9A7  .byte 4D 03 18 18 10 10 90 24 18 01 06 07 07 0F 17 4D   ; 159A7
  D9B7  .byte 06 04 0E 81 88 3A 40 E8 90 29 90 18 10 4D 03 40   ; 159B7
  D9C7  .byte 40 4D 04 10 70 F0 71 80 4D 04 08 70 F1 33 15 AC   ; 159C7
  D9D7  .byte B5 B4 C6 67 92 10 02 13 0E 0E 0E 0E 27 08 73 CC   ; 159D7
  D9E7  .byte D4 E4 C1 10 A4 C8 98 D0 E0 E0 68 C0 4D 02 C8 50   ; 159E7
  D9F7  .byte 0C 80 04 C1 20 19 00 08 18 00 98 80 06 00 82 82   ; 159F7
  DA07  .byte C1 01 01 F0 00 04 4D 07 F8 4D 05 80 80 4D 0A 0B   ; 15A07
  DA17  .byte 00 07 01 08 04 02 00 07 0F 4D 03 08 0C 12 01 69   ; 15A17
  DA27  .byte 77 50 29 3E 7C 60 F0 F0 F8 E0 1E 7C 3E 77 7A 09   ; 15A27
  DA37  .byte 4D 02 80 80 80 00 05 06 0D 01 01 01 02 5F 5F 1F   ; 15A37
  DA47  .byte 1F 1F 4F 4F 0B 3F 3F 7F 7F 7F 3F 3F 3F F4 FA FC   ; 15A47
  DA57  .byte FA F4 F8 F4 E8 52 08 00 4F 0F 4F 4F 40 48 40 80   ; 15A57
  DA67  .byte 80 80 80 80 80 84 8C 90 02 D4 F0 F0 10 60 C0 42   ; 15A67
  DA77  .byte 4D 05 80 98 0D 0F 2C 2F 2F 1E 1D 5C 18 18 1B 1F   ; 15A77
  DA87  .byte 1F 3F 3E 3F 40 60 70 70 70 F1 71 F1 90 90 80 80   ; 15A87
  DA97  .byte 80 00 80 00 39 53 A7 EF FC 80 D1 F0 1E 3C 78 70   ; 15A97
  DAA7  .byte 20 C0 E0 C2 E0 F3 C2 07 27 09 0D 0F 4D 04 41 87   ; 15AA7
  DAB7  .byte 03 03 E2 61 63 F2 21 C5 C8 21 70 F0 20 A1 F3 E3   ; 15AB7
  DAC7  .byte 87 1E C0 E4 F0 1F E3 7F 1F 1F 20 18 0F E0 52 02   ; 15AC7
  DAD7  .byte 3F 3F 28 94 1C B8 E9 C8 C9 C9 10 60 E0 60 E0 E0   ; 15AD7
  DAE7  .byte E0 E0 24 47 EF B9 7F 27 B3 83 03 08 10 06 00 58   ; 15AE7
  DAF7  .byte 5C 7C BC F4 F4 C0 C0 A0 03 07 40 08 00 30 00 40   ; 15AF7
  DB07  .byte 4D 02 40 20 1E 02 04 38 50 80 4D 0A 01 01 0F 1C   ; 15B07
  DB17  .byte 1A 2C 4D 03 03 07 0F 1C 18 08 15 49 DC 41 82 0C   ; 15B17
  DB27  .byte 30 1E 3A B6 80 80 4D 03 7C 1C 1A 1A 60 11 F1 B5   ; 15B27
  DB37  .byte 3E 3E 3C 3C 3C 0C 20 78 80 80 80 80 80 4D 03 02   ; 15B37
  DB47  .byte 4D 07 05 22 01 10 40 4C 27 01 3F 1F 1F 0F 0F 03   ; 15B47
  DB57  .byte 4D 02 50 A0 41 03 07 1F FF 00 52 02 FE FC F8 E0   ; 15B57
  DB67  .byte 4D 02 C0 C4 E0 20 28 3D BF 83 0C 02 4D 02 60 7B   ; 15B67
  DB77  .byte 1B 00 C8 48 40 4D 02 A0 E3 03 90 90 80 00 01 F1   ; 15B77
  DB87  .byte E0 00 59 92 85 0A 15 7F FD F2 3E 7D 7A F5 EA 80   ; 15B87
  DB97  .byte 4D 02 61 E1 E1 C1 C1 81 01 00 80 4D 07 A4 A4 A8   ; 15B97
  DBA7  .byte 88 88 D0 D1 13 C0 C0 C0 C0 C0 80 C0 00 08 08 08   ; 15BA7
  DBB7  .byte 1B 36 C6 08 89 06 04 01 00 01 21 C7 C7 40 E6 99   ; 15BB7
  DBC7  .byte 18 39 61 F3 E7 3E 1C 7C F9 F3 F3 E7 E7 3F 7F 7F   ; 15BC7
  DBD7  .byte 52 05 7F 52 07 C1 D1 F1 E1 F1 E9 E8 FC E0 E0 E0   ; 15BD7
  DBE7  .byte F0 E0 F0 F0 F0 82 80 DC 8C 85 99 70 38 7C 7C 60   ; 15BE7
  DBF7  .byte 70 78 60 4D 02 32 2A 6F 28 BF 3F 7F 7F 01 11 19   ; 15BF7
  DC07  .byte 1F 7F 52 03 40 40 40 20 60 20 40 4C 80 80 80 C0   ; 15C07
  DC17  .byte 80 C0 80 80 50 2B A6 BC F8 EB A5 4E 28 70 70 60   ; 15C17
  DC27  .byte 60 70 61 20 C1 07 18 6C F0 D1 9F 70 4D 02 07 0F   ; 15C27
  DC37  .byte 64 C0 4D 02 F2 72 E4 4C 10 E0 4D 02 70 E0 C0 80   ; 15C37
  DC47  .byte 4D 09 01 00 01 4D 04 01 4D 03 20 20 60 40 00 10   ; 15C47
  DC57  .byte 38 C4 4D 04 90 4D 03 1F 4D 02 79 7F 63 7F 3F 4D   ; 15C57
  DC67  .byte 05 3F 3F 1F 80 4D 02 FC CE FC F9 F9 4D 04 3C FF   ; 15C67
  DC77  .byte FD FD 07 00 03 4D 02 3E EE EC 4D 05 C0 F0 F0 EC   ; 15C77
  DC87  .byte 10 90 10 20 3E 23 41 4D 06 1C 3E 01 4D 0F 15 C0   ; 15C87
  DC97  .byte A3 67 76 17 06 02 C2 64 63 33 10 4D 03 91 13 83   ; 15C97
  DCA7  .byte 07 46 59 07 60 8F 0F 2F 3F 3F 26 00 10 CF E7 DF   ; 15CA7
  DCB7  .byte 9F 4F 97 47 62 E7 CF CF CF 9F 1F 1F DD 52 04 7F   ; 15CB7
  DCC7  .byte 7F 52 06 7F 7F 52 02 F7 FA FB F2 F9 F0 C0 F9 F8   ; 15CC7
  DCD7  .byte FC FC FD F6 E0 C0 90 81 01 04 A2 80 10 03 B6 4D   ; 15CD7
  DCE7  .byte 07 01 FF 3E 96 78 08 00 80 01 7F FF 7F 07 07 C7   ; 15CE7
  DCF7  .byte 7F FE 4C 7C 0C 2C 0C 0C 28 F0 80 80 F0 F0 F0 F0   ; 15CF7
  DD07  .byte D0 00 4C 11 1A 1A 1A 1A 14 24 04 0C 08 08 08 4D   ; 15D07
  DD17  .byte 03 80 4D 14 01 02 05 4D 06 01 03 03 07 0E 06 02   ; 15D17
  DD27  .byte DC 04 E8 01 03 07 1C 0C 20 E0 F0 F0 E8 B4 3C 15   ; 15D27
  DD37  .byte D9 E4 E5 C0 F0 78 18 08 00 01 1F 08 4D 02 01 4D   ; 15D37
  DD47  .byte 02 C0 E8 07 4D 04 80 80 C8 79 60 58 E5 71 00 1F   ; 15D47
  DD57  .byte 06 FC 00 E1 F9 F9 7F 4D 02 B8 80 00 60 60 40 80   ; 15D57
  DD67  .byte 00 40 00 80 80 80 80 00 01 8E D3 81 D0 31 43 C0   ; 15D67
  DD77  .byte 8C 71 60 60 4D 04 C0 08 76 C1 30 0E 30 C0 20 00   ; 15D77
  DD87  .byte 08 7E FF F1 C0 4D 05 80 80 80 40 40 4D 08 DF BF   ; 15D87
  DD97  .byte 7F 7F 7F 7F 7F BF 3F 7F 52 05 7F E8 F2 FA 52 05   ; 15D97
  DDA7  .byte E7 F1 FC 52 05 41 01 21 F7 52 04 BF FF 1F 8F 52   ; 15DA7
  DDB7  .byte 04 D0 D0 AC C1 C3 E3 F6 F0 BF BF D1 C0 E7 E7 E3   ; 15DB7
  DDC7  .byte E3 18 18 8C DF 93 10 E0 E0 E7 E7 F3 E0 E0 E0 4D   ; 15DC7
  DDD7  .byte 02 03 07 BF FE FC E0 4D 02 FC F8 40 4D 05 F0 F0   ; 15DD7
  DDE7  .byte 70 48 04 02 03 4D 0F E0 10 4D 08 34 34 34 20 28   ; 15DE7
  DDF7  .byte 28 28 38 10 10 10 10 10 10 10 00 07 0B 0E 0C 0C   ; 15DF7
  DE07  .byte 08 09 09 03 04 4D 06 F0 FD 15 1C 40 E2 F2 E7 F8   ; 15E07
  DE17  .byte 1C 08 4D 02 0C 0C 18 CF 1F 3D 3A 94 09 30 07 3F   ; 15E17
  DE27  .byte FF FE DC 18 30 62 E3 B0 43 81 34 5A 1C 6D 35 C8   ; 15E27
  DE37  .byte 80 10 38 2C 0E 06 86 4A 0A 02 06 02 72 60 41 1C   ; 15E37
  DE47  .byte 0C 04 4D 05 03 10 30 12 09 5D 06 6E 01 00 02 04   ; 15E47
  DE57  .byte 04 08 18 10 E3 FE E7 E2 C1 B5 A7 37 EC 3F 03 09   ; 15E57
  DE67  .byte 1A 12 30 60 00 8F C3 21 C0 F8 F6 D1 4D 02 80 C0   ; 15E67
  DE77  .byte 38 0C 07 0B 40 00 C0 E0 F8 74 2A 9E 00 80 4D 03   ; 15E77
  DE87  .byte 08 14 80 BF 9B CC 63 5C 3F 1F 03 7D 7E 3F 1F 23   ; 15E87
  DE97  .byte 4D 03 52 04 00 52 02 FC 52 05 4D 03 FF F8 E6 0F   ; 15E97
  DEA7  .byte 7F FF F0 0F 52 02 F9 F0 80 4D 03 D2 12 BF FC F4   ; 15EA7
  DEB7  .byte 66 B8 61 E1 E1 41 01 4D 07 80 4D 0D 02 0E 1E 08   ; 15EB7
  DEC7  .byte 4D 03 07 0F 1E 1C 1C 08 4D 02 10 20 20 40 40 40   ; 15EC7
  DED7  .byte 40 20 80 4D 07 18 18 18 0C 04 4D 0B 18 27 4F B1   ; 15ED7
  DEE7  .byte 80 B9 B9 BD 4D 02 1F 03 0D 1D 1D 19 D3 67 86 CE   ; 15EE7
  DEF7  .byte D8 00 91 E5 21 03 0F 0F 00 86 E3 88 A7 01 31 F1   ; 15EF7
  DF07  .byte 0C 76 FE C4 C3 E1 C0 4D 02 20 90 D8 38 9A 8A CA   ; 15F07
  DF17  .byte C9 C2 C6 C4 C3 C3 E1 E1 62 60 60 40 95 3C 2C 30   ; 15F17
  DF27  .byte 2C 05 02 02 0A BE B0 4D 05 6E 0E 0C 6E 55 D0 9C   ; 15F27
  DF37  .byte 8E 10 10 10 10 08 0C 4D 02 0F 27 40 60 48 15 BA   ; 15F37
  DF47  .byte 45 60 C0 80 80 80 C0 40 00 E0 F0 FA 7D 1E 03 B1   ; 15F47
  DF57  .byte 64 05 02 01 4D 03 0E 1F E7 73 12 D9 18 3E DC 91   ; 15F57
  DF67  .byte C0 20 80 C0 4D 06 33 82 97 97 17 94 4D 03 01 4D   ; 15F67
  DF77  .byte 04 17 4D 02 FC 00 E0 80 4D 04 FF 4D 04 F0 01 2C   ; 15F77
  DF87  .byte 40 4D 06 10 80 4D 05 80 4D 05 03 4D 0C 78 8E D1   ; 15F87
  DF97  .byte FC 4D 0C 70 58 C8 44 4D 0C 02 07 06 02 4D 03 01   ; 15F97
  DFA7  .byte 01 03 03 00 20 3C 02 44 88 10 10 A0 4D 03 E0 C0   ; 15FA7
  DFB7  .byte 80 4D 02 BD BB BF 80 4F 4F 20 18 19 1D 19 03 4D   ; 15FB7
  DFC7  .byte 04 84 C1 D1 80 C0 07 18 2F 80 81 80 4D 03 07 1F   ; 15FC7
  DFD7  .byte 3D B0 B4 06 01 D9 71 19 00 C3 60 4D 03 80 E0 18   ; 15FD7
  DFE7  .byte 4D 07 C0 80 4D 15 01 32 03 04 05 09 09 0B 8B 4D   ; 15FE7
  DFF7  .byte 08 CE DC DD 9D 98 BA BA B9 3F 3F 3E 7E 7E 7C 7C   ; 15FF7
  E007  .byte 7C BB B8 71 41 76 E2 82 94 4D 08 14 A4 24 24 24   ; 16007
  E017  .byte 24 22 22 80 4D 0C 01 4D 0A 03 0C 38 70 E6 CC C8   ; 16017
  E027  .byte D8 00 03 07 0F 1F 3F 3F 3F 3A 35 6A 55 EA D4 A8   ; 16027
  E037  .byte D4 C0 C0 80 80 4D 04 86 02 82 03 03 03 4D 0A 01   ; 16037
  E047  .byte 00 C0 C0 40 40 40 40 4D 08 20 20 20 00 40 40 40   ; 16047
  E057  .byte 40 4D 08 09 05 04 02 01 4D 0B A7 D7 43 0B 21 85   ; 16057
  E067  .byte 82 42 1F 0F 0F 07 07 03 01 01 94 98 D4 D8 DC C8   ; 16067
  E077  .byte ED E9 E0 E0 E0 E0 E0 F0 F0 F0 80 D8 E4 E8 C8 90   ; 16077
  E087  .byte 90 A0 4D 02 40 40 4D 04 8B 4B 4B 2B 1F 16 06 02   ; 16087
  E097  .byte 00 80 00 40 20 21 11 11 35 35 73 72 73 6F 64 E6   ; 16097
  E0A7  .byte F8 F8 F8 F8 F8 F0 F0 F0 C4 98 88 08 30 10 50 60   ; 160A7
  E0B7  .byte 4D 08 12 11 11 08 08 04 04 02 4D 0B 80 80 4D 0B   ; 160B7
  E0C7  .byte 01 00 01 01 01 03 03 03 4D 08 91 92 B3 A3 A3 C3   ; 160C7
  E0D7  .byte 82 83 7E 7C 7C 7C 7C 3C 7C 7C A8 50 A8 40 A0 40   ; 160D7
  E0E7  .byte 80 40 4D 08 40 C0 80 80 41 41 82 02 4D 08 80 80   ; 160E7
  E0F7  .byte 80 80 4D 0C 12 00 01 04 4D 02 05 09 01 01 4D 04   ; 160F7
  E107  .byte 08 1C ED E9 6C 60 A4 44 1C 75 F0 F0 F0 F0 40 18   ; 16107
  E117  .byte 38 38 A0 20 00 40 40 40 40 40 4D 08 03 19 28 13   ; 16117
  E127  .byte 07 08 01 1D 18 40 40 20 10 12 0B 03 D4 4C 5E 3D   ; 16127
  E137  .byte 98 03 04 50 E0 E0 E0 C2 60 61 0F 8F 20 40 40 80   ; 16137
  E147  .byte E7 BF 41 3C 4D 05 C0 E0 C8 01 00 01 FF 86 FE 3C   ; 16147
  E157  .byte 03 4D 06 C0 01 00 80 C0 E0 E0 00 98 DE 4D 07 9C   ; 16157
  E167  .byte 03 03 01 01 4D 03 80 4D 08 80 C3 C2 E1 41 61 70   ; 16167
  E177  .byte 38 7C 3C 3C 1E 3E 1E 0F 07 80 40 80 40 A0 C0 80   ; 16177
  E187  .byte 40 4D 07 80 4D 02 01 4D 0D 04 48 C0 10 10 10 38   ; 16187
  E197  .byte 04 4D 08 0B 0E 0B 17 01 0B 0C 07 08 F8 0D 0B 06   ; 16197
  E1A7  .byte 04 98 0B 02 03 20 B2 C0 71 9F 0B 03 1C 66 00 03   ; 161A7
  E1B7  .byte 07 3C 60 EF 1F 1E CF E6 CD 38 03 07 1F 7F FF C1   ; 161B7
  E1C7  .byte F0 31 F3 33 C6 00 99 C2 B1 78 70 60 00 04 00 01   ; 161C7
  E1D7  .byte 4F 20 10 78 28 CC 5C EC 38 0B 03 40 60 E0 C0 80   ; 161D7
  E1E7  .byte 11 33 21 23 23 23 10 1F 07 07 13 13 1B 03 0F 00   ; 161E7
  E1F7  .byte 48 08 08 04 04 3F 4F 80 87 C7 C7 C3 C3 C0 80 00   ; 161F7
  E207  .byte 33 12 60 00 50 B4 98 DF CC 8C 9F BF 8F 4F 07 00   ; 16207
  E217  .byte 32 45 80 87 87 87 87 80 07 03 08 08 08 08 08 0B   ; 16217
  E227  .byte 02 40 81 10 EB F0 F8 00 C8 E3 11 18 0B 04 C0 80   ; 16227
  E237  .byte 40 15 31 2E 8E BA 80 40 80 88 10 47 C4 10 1F 03   ; 16237
  E247  .byte 01 BC E0 02 1F 18 0B 03 F0 40 01 0F 7F C0 C0 C0   ; 16247
  E257  .byte 0B 02 3C 0C E0 0B 05 C0 F0 0B 03 01 04 3F E0 00   ; 16257
  E267  .byte 1F 0B 03 03 0B 04 02 02 A2 42 04 04 18 E0 0B 02   ; 16267
  E277  .byte 40 80 0B 04 02 04 0A 03 09 01 01 00 01 00 05 0C   ; 16277
  E287  .byte 0B 04 31 02 99 01 8E DC 81 33 33 07 8C 03 F7 2F   ; 16287
  E297  .byte 1F 1C CF 62 C1 04 04 05 85 EC 87 07 C6 C0 C1 C0   ; 16297
  E2A7  .byte C0 0B 02 41 2D 9F 30 E0 80 00 F0 86 12 60 C0 0B   ; 162A7
  E2B7  .byte 03 BC 3A FB 03 0B 04 4E C0 0B 06 30 A0 C0 0B 0D   ; 162B7
  E2C7  .byte 0F 01 0B 0E 98 E0 0B 16 01 0B 07 29 73 6A 07 06   ; 162C7
  E2D7  .byte 0B 03 B0 01 03 0B 05 81 47 9C D0 21 72 1C 00 BE   ; 162D7
  E2E7  .byte 98 40 0B 05 C7 18 20 40 80 0B 0B E0 0B 0F 12 25   ; 162E7
  E2F7  .byte 12 17 03 12 0F FF 12 0F 80 12 0E 20 20 12 0F 01   ; 162F7
  E307  .byte 12 0A 01 07 1E 38 70 E0 12 08 0F 3E E4 80 12 03   ; 16307
  E317  .byte 40 12 08 E2 12 02 08 40 01 08 39 12 08 F0 3C 07   ; 16317
  E327  .byte 01 C0 00 FC F8 12 0B 80 C0 60 30 18 12 08 70 50   ; 16327
  E337  .byte 58 A8 A8 E4 F4 F2 12 02 20 60 60 70 70 78 03 07   ; 16337
  E347  .byte 0E 1C 18 30 70 61 12 08 81 07 0F 19 32 67 C5 8F   ; 16347
  E357  .byte 12 03 06 0C 18 38 70 80 81 96 2D FB E2 84 09 12   ; 16357
  E367  .byte 02 01 02 04 1C 78 F0 E0 80 40 80 04 0C BB 77 00   ; 16367
  E377  .byte 40 80 12 04 08 FF 39 12 03 85 87 0F 12 08 8C 86   ; 16377
  E387  .byte 03 03 03 F1 FC FF 12 0C 80 80 C0 C0 12 0D 01 01   ; 16387
  E397  .byte 01 12 08 F2 F9 FA F9 FC FC FE FE 78 7C 7C 7E 7F   ; 16397
  E3A7  .byte 25 03 12 02 81 41 B3 0F 23 17 12 05 80 C0 E0 E3   ; 163A7
  E3B7  .byte C7 C6 8E 8C 1D 10 1A 12 02 01 01 03 03 0F 07 AF   ; 163B7
  E3C7  .byte 5E 5E BC 34 30 24 0C 70 E1 E1 C3 CB CF DF FF 10   ; 163C7
  E3D7  .byte 83 03 1C 70 71 E3 C3 E0 E0 C0 C3 8F 8E 1C 3C EE   ; 163D7
  E3E7  .byte 98 31 63 CE 8C 99 33 10 60 C0 80 01 02 06 0C 3F   ; 163E7
  E3F7  .byte 25 02 B8 60 80 80 12 09 EF 83 12 0E C0 E0 E0 70   ; 163F7
  E407  .byte 70 70 30 18 12 08 01 01 01 01 01 01 01 01 12 08   ; 16407
  E417  .byte FE FE FE FD FE FE FE 25 09 36 26 2C 2C 2C 08 C8   ; 16417
  E427  .byte 48 C0 C0 C0 C0 C0 C0 80 80 3A 34 74 64 E9 E9 E9   ; 16427
  E437  .byte CA 07 0F 0F 1F 1F 1E 1E 3D 08 19 30 B0 70 63 61   ; 16437
  E447  .byte E3 FF FE 25 06 86 0C 3C 19 9B B3 F6 66 78 F0 E0   ; 16447
  E457  .byte E0 E0 C0 81 81 66 EC CC 9A B0 30 60 60 18 10 30   ; 16457
  E467  .byte 60 40 C0 80 80 12 06 01 03 12 0E FC 86 12 07 78   ; 16467
  E477  .byte 18 18 18 38 38 29 67 47 12 0D F0 FC F6 12 08 01   ; 16477
  E487  .byte 12 0F FC FC FC F8 F8 F8 F8 F0 FF 7F 7F 7F 7F 7F   ; 16487
  E497  .byte 7F 7F 58 59 59 91 90 90 B1 B1 80 80 80 12 05 D2   ; 16497
  E4A7  .byte C4 C4 C5 CD D9 D9 D9 3D 3B 3B 3B 33 27 27 27 C3   ; 164A7
  E4B7  .byte CB CB 96 97 AF 2E 0E FF FE FE ED EC D8 D8 F8 E4   ; 164B7
  E4C7  .byte CC CD 89 99 11 13 13 03 03 02 06 06 0E 0C 0C E0   ; 164C7
  E4D7  .byte C0 C2 C0 84 88 08 10 12 08 07 0E 0C 19 1B 13 33   ; 164D7
  E4E7  .byte 37 00 01 03 07 07 0F 0F 0F 00 7C FE FE FE FE FE   ; 164E7
  E4F7  .byte FF FE 25 06 FE 1F 1E 9E 9F 9E C3 81 41 00 01 01   ; 164F7
  E507  .byte 00 01 12 03 13 09 26 73 73 73 39 B9 E0 F0 F8 FC   ; 16507
  E517  .byte FC FC FE 7E 00 80 80 40 60 20 B0 90 12 0E 70 D0   ; 16517
  E527  .byte 12 08 F0 F0 70 70 78 78 78 78 7F 7F 3F 3F 3F 3F   ; 16527
  E537  .byte 3F 3F B1 B1 B1 B1 B1 B1 B1 B1 12 08 D9 98 B8 F4   ; 16537
  E547  .byte E0 E0 E4 E4 27 67 47 03 03 03 03 03 0C 58 19 99   ; 16547
  E557  .byte 98 D2 F2 F2 F0 B4 F0 60 60 20 12 02 33 22 26 26   ; 16557
  E567  .byte 3C 3C 6C 6C 0C 1C 18 18 12 02 10 10 10 10 12 02   ; 16567
  E577  .byte 20 20 60 60 12 08 81 01 01 01 01 01 00 80 12 05   ; 16577
  E587  .byte 80 12 02 99 9D 9D 9D CD C9 E9 E9 7E 7E 7E 7E 3E   ; 16587
  E597  .byte 3E 1E 1E 90 98 D8 C8 CE C8 C0 C8 12 06 07 07 02   ; 16597
  E5A7  .byte 0C 33 C7 0E 1D 3D 3E 12 02 03 0E 3E FE FC F8 20   ; 165A7
  E5B7  .byte 40 40 80 80 12 0B 38 38 38 39 38 38 3C 1C 1F 1F   ; 165B7
  E5C7  .byte 1F 1F 1F 1F 1F 0F B0 90 90 98 58 58 58 48 12 04   ; 165C7
  E5D7  .byte 80 80 80 80 E4 C5 45 45 45 45 47 46 03 02 02 02   ; 165D7
  E5E7  .byte 02 02 12 02 E6 E6 E6 EA EA CA C2 53 12 03 04 04   ; 165E7
  E5F7  .byte 04 0C 0C 68 68 28 38 38 39 39 39 10 10 10 12 05   ; 165F7
  E607  .byte 60 E0 E0 E0 E0 E0 60 60 12 06 80 80 80 12 04 40   ; 16607
  E617  .byte 00 80 12 08 E3 E3 F3 F7 25 04 1C 1C 0C 08 12 04   ; 16617
  E627  .byte 88 88 98 90 10 10 31 21 07 07 07 0F 0F 0F 0F 1F   ; 16627
  E637  .byte 7A 3C F4 F8 E8 F0 D0 E0 F8 F0 F0 E0 E0 C0 C0 80   ; 16637
  E647  .byte 1C 1C 1C 1C 1D 1C 14 1C 0F 0F 0F 0F 0F 0F 0F 07   ; 16647
  E657  .byte 4C 4C 2E 2A 2E 26 27 27 80 80 C0 C0 C0 C0 C0 C0   ; 16657
  E667  .byte 66 66 26 26 22 23 23 13 12 08 53 59 59 59 5D 5C   ; 16667
  E677  .byte 5C 1C 0C 06 06 06 02 03 03 03 39 19 19 19 89 88   ; 16677
  E687  .byte 8C C4 12 08 20 20 B0 B0 B0 B0 D8 D8 C0 C0 40 40   ; 16687
  E697  .byte 40 40 20 20 81 01 01 03 03 03 03 07 12 08 FE FE   ; 16697
  E6A7  .byte FE FC FC FD F9 FA 12 07 01 23 63 43 C7 8E 8E 0F   ; 166A7
  E6B7  .byte 1D 1F 1F 3F 3F 7E 7E FC FC A0 40 C0 80 80 80 12   ; 166B7
  E6C7  .byte 02 80 80 12 06 0C 0C 0C 0C 0B 0D 0A 0A 07 07 07   ; 166C7
  E6D7  .byte 07 07 07 07 07 15 15 17 17 15 14 14 24 E0 E0 E0   ; 166D7
  E6E7  .byte E0 E0 E0 E0 C0 11 11 89 89 8C 84 C4 40 12 08 1E   ; 166E7
  E6F7  .byte 0E CF 8F 87 C7 C3 43 01 01 01 12 05 C4 60 60 30   ; 166F7
  E707  .byte 30 98 98 8C 00 80 80 C0 C0 E0 60 70 D8 58 58 78   ; 16707
  E717  .byte 78 78 68 2C 20 20 20 12 03 10 10 07 07 0F 0F 0F   ; 16717
  E727  .byte 1F 1D 1D 12 08 F2 E4 E4 C8 C8 90 90 21 01 03 03   ; 16727
  E737  .byte 07 07 0F 0F 1F 1F 3E 3A 7E 76 F4 F4 EC FC F8 F8   ; 16737
  E747  .byte F8 F8 F0 F0 F0 0E 06 06 06 06 06 04 04 03 03 03   ; 16747
  E757  .byte 03 03 03 03 03 A4 2C 28 28 2A 42 52 96 C0 C0 C0   ; 16757
  E767  .byte C0 C0 80 80 12 04 20 20 22 22 22 12 08 63 63 71   ; 16767
  E777  .byte 51 00 40 08 08 12 08 DC DC DE FE BE 7E DE DE 60   ; 16777
  E787  .byte 60 60 60 60 A0 20 20 2C 0C 1C 1C 1C 1C 1C 1C 10   ; 16787
  E797  .byte 10 12 06 39 3B 32 32 24 64 65 49 12 08 21 41 43   ; 16797
  E7A7  .byte 87 87 83 0F 0F 1F 3F 3F 7F 7F 7F 25 02 FC F8 E8   ; 167A7
  E7B7  .byte E8 F8 F8 D8 F0 E0 E0 E0 E0 E0 E0 E0 C0 08 09 09   ; 167B7
  E7C7  .byte 0A 06 0C 09 33 07 06 06 04 12 04 84 2C 48 10 E1   ; 167C7
  E7D7  .byte C3 81 02 12 08 62 66 46 C6 8C 0C 1C 70 12 08 08   ; 167D7
  E7E7  .byte 40 44 4C 4C 4C 4C 4C 12 08 5E 7E 7E 7E 2E 6C 7C   ; 167E7
  E7F7  .byte 7C 20 12 03 50 50 12 02 08 08 08 08 08 08 10 10   ; 167F7
  E807  .byte 12 08 49 49 8A 8A 8A 9A 9A 99 12 02 01 01 01 01   ; 16807
  E817  .byte 01 00 0F 07 0F 1F 1F 17 03 00 25 08 D0 D0 D0 F0   ; 16817
  E827  .byte F0 F0 B0 10 C0 C0 C0 C0 C0 C0 C0 C0 12 02 01 03   ; 16827
  E837  .byte 02 05 09 1B 12 08 60 C0 87 63 5C E0 E3 47 12 0A   ; 16837
  E847  .byte 87 3F 7F FC F0 E0 12 05 03 0F 1F 30 00 E0 F8 FC   ; 16847
  E857  .byte 7E 1F 0F 12 05 80 E0 F0 4C CC CC 88 08 08 08 08   ; 16857
  E867  .byte 12 08 5C 58 18 38 30 B0 E0 E0 20 20 60 40 40 40   ; 16867
  E877  .byte 12 02 10 30 20 60 40 12 0B 20 50 40 08 48 48 0C   ; 16877
  E887  .byte 85 10 20 30 70 70 30 70 78 03 03 07 07 07 00 0F   ; 16887
  E897  .byte FC 12 07 03 88 80 B8 E0 01 0D 0F 7F 12 03 01 0F   ; 16897
  E8A7  .byte 7F 25 03 AA 12 02 25 04 12 03 25 05 D0 90 1E BF   ; 168A7
  E8B7  .byte 1F 83 FC FF 12 04 E0 FC 25 02 12 03 C0 25 02 00   ; 168B7
  E8C7  .byte C0 12 06 25 02 12 04 FF FE 00 1F 12 05 01 25 02   ; 168C7
  E8D7  .byte 12 03 FC E3 00 FC F9 12 04 1C 25 02 FE 12 04 E7   ; 168D7
  E8E7  .byte 3F 0A 2C 12 05 E0 87 1F 12 04 80 80 80 12 08 80   ; 168E7
  E8F7  .byte 15 3E 39 78 74 7C FC E8 02 03 06 04 08 12 02 10   ; 168F7
  E907  .byte 8F 0F 1F 3E 3E 7C FC F9 12 03 01 01 03 03 07 C0   ; 16907
  E917  .byte 8F 1F 3F 7F 25 03 3F 7F 25 06 0F 07 87 C3 C7 C7   ; 16917
  E927  .byte C7 87 F0 F8 F8 FC F8 F8 F8 F8 00 80 81 81 81 82   ; 16927
  E937  .byte 12 0A C0 C0 C0 82 06 04 0C 18 12 0A 01 03 03 07   ; 16937
  E947  .byte 07 0E 12 06 01 01 DD D7 D2 DB D9 DC 43 CB 30 38   ; 16947
  E957  .byte 3D 3C 36 27 BF BF E1 9F 7F 25 05 1F 7F FF 7F 25   ; 16957
  E967  .byte 17 FE FC F3 E3 E7 25 04 FC F8 F0 E0 E0 E9 86 1A   ; 16967
  E977  .byte 33 EF D7 8E FC F0 E1 C5 1C 10 28 F0 E4 8E 7C F5   ; 16977
  E987  .byte E5 C4 81 00 3B F3 83 02 02 03 12 03 80 80 00 FE   ; 16987
  E997  .byte 26 04 18 80 12 04 F8 F8 E0 12 03 01 01 01 01 01   ; 16997
  E9A7  .byte 12 08 CC C9 89 C9 11 D1 93 93 30 30 70 70 E0 60   ; 169A7
  E9B7  .byte 60 60 FB F3 F7 E7 E7 CF CF CF 07 0F 0F 1F 1F 3F   ; 169B7
  E9C7  .byte 3F 3F 25 03 FE FC F8 F8 F0 25 08 8F 0F 0E 3E 3E   ; 169C7
  E9D7  .byte 7C 7C FC F0 F0 F0 C0 C0 80 80 12 04 08 18 30 30   ; 169D7
  E9E7  .byte 60 12 08 10 20 60 03 07 0F 1F 3F 12 08 1C 39 79   ; 169E7
  E9F7  .byte F3 E3 87 8F 1F 03 07 07 0F 1F 7F 7F FF 89 CF 25   ; 169F7
  EA07  .byte 10 FD F5 F4 F2 F1 F8 25 02 F9 F8 F8 FC FE 25 04   ; 16A07
  EA17  .byte 7F 8F C0 70 1F 25 04 7F 3F 0F 00 25 02 FC FB 12   ; 16A17
  EA27  .byte 02 07 25 07 F8 00 25 03 0F 00 01 25 07 FE 12 02   ; 16A27
  EA37  .byte 25 02 FE E0 00 FE FE F5 25 04 FE 12 03 CE 5F 19   ; 16A37
  EA47  .byte 37 6D 7B FB B7 C0 80 86 0E 1E 1C 3C 78 9C F8 F4   ; 16A47
  EA57  .byte E0 C0 80 A0 00 60 12 07 01 00 03 07 4F 1E 7C 58   ; 16A57
  EA67  .byte 00 01 12 05 20 30 60 C0 80 12 04 C0 80 12 06 01   ; 16A67
  EA77  .byte 01 01 01 01 01 01 12 09 97 A7 C7 C7 C7 C7 C7 C7   ; 16A77
  EA87  .byte 60 40 12 06 CF 9F 9F 9F 9F 9F 9F 9F 3F 7F 7F 7F   ; 16A87
  EA97  .byte 7F 7F 7F 7F F0 E1 C3 C3 C7 87 8F 1F FF FE FC FC   ; 16A97
  EAA7  .byte F8 F8 F0 E0 F8 F1 F3 E7 E7 CF 9E 9E 12 08 E0 C0   ; 16AA7
  EAB7  .byte 81 83 07 07 0F 1C 12 08 7E F8 F0 E1 C3 C1 FE 01   ; 16AB7
  EAC7  .byte 01 07 0F 1F 3F 3F 01 00 3F 75 FA FB FA FA 39 C1   ; 16AC7
  EAD7  .byte 25 03 FC FC FC FE 3E 25 02 7F 3F 8F 46 23 3C 25   ; 16AD7
  EAE7  .byte 04 7F 3F 5C 00 F8 F8 F8 C3 BC C0 07 05 25 03 FC   ; 16AE7
  EAF7  .byte C0 12 02 03 8F 87 F8 C6 01 00 F8 E6 00 40 00 30   ; 16AF7
  EB07  .byte 12 03 F8 FC C0 12 02 80 40 20 10 12 08 01 03 07   ; 16B07
  EB17  .byte 0F 0F 18 38 3E 12 05 07 07 09 76 84 FE FC F4 2C   ; 16B17
  EB27  .byte C0 40 F8 F8 00 C0 00 C0 00 80 00 82 07 05 0F 35   ; 16B27
  EB37  .byte 6F 0B 12 05 02 00 04 78 F0 E0 C0 80 80 12 0A C7   ; 16B37
  EB47  .byte CF C7 47 47 47 6F 67 12 08 9F 8F 8E CE CE CC C4   ; 16B47
  EB57  .byte E0 7F 7F 7F 3F 3F 3F 3F 1F 1F 3E 3C 3C 78 78 71   ; 16B57
  EB67  .byte F1 E0 C0 C0 C0 80 80 80 00 3E 3C 3C 78 F0 F0 F0   ; 16B67
  EB77  .byte A1 12 02 08 08 18 10 30 30 18 33 7D 65 EB EB C3   ; 16B77
  EB87  .byte 87 12 03 03 06 1C 3C 78 70 03 40 40 80 80 12 04   ; 16B87
  EB97  .byte 80 80 12 04 1F 87 80 12 0D 38 B0 84 08 10 00 03   ; 16B97
  EBA7  .byte 07 12 05 01 01 03 0F 1F 1F 75 7F E9 D7 D6 07 0E   ; 16BA7
  EBB7  .byte 3C 78 F0 F0 E0 E0 FF B7 C3 1C F4 C0 12 02 80 12   ; 16BB7
  EBC7  .byte 07 08 84 C2 C2 31 15 01 12 0D 01 03 03 83 12 08   ; 16BC7
  EBD7  .byte 77 77 DB F2 B4 EC FC D8 0C 08 34 1C 58 50 C0 E0   ; 16BD7
  EBE7  .byte 80 00 03 04 0C 1C 00 17 12 08 16 0C 38 78 50 60   ; 16BE7
  EBF7  .byte 20 C0 08 10 12 02 20 00 40 12 02 10 30 48 48 48   ; 16BF7
  EC07  .byte 49 69 12 03 20 20 20 20 20 F3 BB AB 95 89 A4 A2   ; 16C07
  EC17  .byte A1 00 40 40 60 70 78 7C 7E E0 E0 F0 F1 F9 F9 7D   ; 16C17
  EC27  .byte 7D 1F 1F 0F 0E 06 06 02 02 E1 E3 E3 C3 C3 C3 87   ; 16C27
  EC37  .byte 86 12 07 01 E1 E3 43 E2 C6 C7 C7 C6 60 60 E0 C1   ; 16C37
  EC47  .byte C1 C1 C1 C1 FC 6C EC F0 D0 F0 E0 E0 70 F0 F0 E0   ; 16C47
  EC57  .byte E0 C0 C0 C0 02 08 07 07 01 04 06 02 03 03 03 02   ; 16C57
  EC67  .byte 06 A4 40 C0 02 03 04 00 C0 80 02 07 04 02 02 30   ; 16C67
  EC77  .byte 00 60 02 09 87 8F 8F 8E 9E 9D 95 B6 01 01 03 03   ; 16C77
  EC87  .byte 07 06 0E 0C B0 A0 40 C0 80 00 01 05 C0 C0 80 02   ; 16C87
  EC97  .byte 04 03 3E 7F 7F DE 1F BC FC F8 01 03 04 0C 38 70   ; 16C97
  ECA7  .byte E0 80 80 80 02 0E                                 ; 16CA7

sub_B2_ECAD:                    ; from 16fa3 16cbb 171af 16f72 16f86
  ECAD  20 CB FF  JSR sub_B2_FFCB               ; 16CAD ×3297
  ECB0  A9 00     LDA #$00                      ; 16CB0 ×3297
  ECB2  85 2D     STA $2D                       ; 16CB2 ×3297
  ECB4  A6 82     LDX $82                       ; 16CB4 ×3297
  ECB6  60        RTS                           ; 16CB6 ×3297

sub_B2_ECB7:                    ; from 16f35 16f54 16f0a
  ECB7  85 39     STA $39                       ; 16CB7 ×1193
  ECB9  A0 03     LDY #$03                      ; 16CB9 ×1193
  ECBB  4C AD EC  JMP sub_B2_ECAD               ; 16CBB ×1193

loc_B2_ECBE:                    ; from 1000f
  ECBE  A6 82     LDX $82                       ; 16CBE ×892
  ECC0  BD A2 04  LDA $04A2,X                   ; 16CC0 ×892
  ECC3  29 80     AND #$80                      ; 16CC3 ×892
  ECC5  9D A2 04  STA $04A2,X                   ; 16CC5 ×892
  ECC8  4C 0D EF  JMP loc_B2_EF0D               ; 16CC8 ×892
  ECCB  .byte EF EC                                             ; 16CCB data, read by 16e57 16e5c
  ECCD  .byte FA EC 11 ED 28 ED 36 ED 3E ED 55 ED 5A ED 77 ED   ; 16CCD
  ECDD  .byte 7C ED 99 ED AA ED C7 ED D2 ED D7 ED EE ED 0B EE   ; 16CDD
  ECED  .byte 22 EE                                             ; 16CED
  ECEF  .byte 80 86 00 0B 59 C0 05 3B 00 01 00                  ; 16CEF data, read by 16edc 16f5d 16fb1 16fab
  ECFA  .byte 80 46 80 08 39 C0 0A 36 80 09 52 40 07 36 80 08   ; 16CFA
  ED0A  .byte 69 C0 0A 1C 80 02 00 80 86 00 06 42 40 0C 26 00   ; 16D0A
  ED1A  .byte 0B 69 C0 0A 96 80 08 29 C0 05 AB 00 01 00 80 99   ; 16D1A
  ED2A  .byte C0 05 26 00 06 52 40 0C 8B 00 01 00 80 29 C0 0A   ; 16D2A
  ED3A  .byte AC 80 02 00 80 56 00 0B 59 C0 05 26 00 06 32 40   ; 16D3A
  ED4A  .byte 0C 36 00 0B 39 C0 05 1B 00 01 00 F0 60 80 02 00   ; 16D4A
  ED5A  .byte 80 16 00 06 22 40 0C 36 00 0B 29 C0 05 26 00 06   ; 16D5A
  ED6A  .byte 22 40 0C 36 00 0B 49 C0 0A 9C 80 02 00 F0 60 00   ; 16D6A
  ED7A  .byte 01 00 80 46 00 0B 49 C0 0A 36 80 09 22 40 0C 96   ; 16D7A
  ED8A  .byte 00 06 32 40 07 26 80 08 79 C0 05 3B 00 01 00 80   ; 16D8A
  ED9A  .byte 46 80 09 22 40 07 26 80 08 49 C0 0A 5C 80 02 00   ; 16D9A
  EDAA  .byte 80 76 00 06 22 40 07 66 80 08 69 C0 05 46 00 0B   ; 16DAA
  EDBA  .byte 29 C0 0A 36 80 09 42 40 0C 9B 00 01 00 80 A6 80   ; 16DBA
  EDCA  .byte 08 79 C0 0A 1C 80 02 00 80 BB 00 01 00 80 26 80   ; 16DCA
  EDDA  .byte 08 29 C0 0A 36 80 09 22 40 07 26 80 08 29 C0 0A   ; 16DDA
  EDEA  .byte 4C 80 02 00 80 16 00 0B 99 C0 05 26 00 06 72 40   ; 16DEA
  EDFA  .byte 0C 36 00 0B 89 C0 05 26 00 06 A2 40 07 8C 80 02   ; 16DFA
  EE0A  .byte 00 80 16 00 06 A2 40 0C 96 00 0B 39 C0 0A 16 80   ; 16E0A
  EE1A  .byte 08 99 C0 05 2B 00 01 00 80 BC 80 02 00            ; 16E1A
  EE27  .byte 16 12                                             ; 16E27 data, read by 16eab 16eb2
  EE29  .byte 16 10 12 02 28 16 16 09 27 06 27 17 28 0A 16 0F   ; 16E29
  EE39  .byte 16 06 26 16 28 08 09 0F 18 0F 05 0F 00 0F 14 04   ; 16E39
  EE49  .byte 10 00 1C 0C 28 15 12 0F 1C 0F 15 0F               ; 16E49

sub_B2_EE55:                    ; from 16f5a 16ed9
  EE55  0A        ASL A                         ; 16E55 ×51
  EE56  A8        TAY                           ; 16E56 ×51
  EE57  B9 CB EC  LDA $ECCB,Y                   ; 16E57 ×51
  EE5A  85 19     STA $19                       ; 16E5A ×51
  EE5C  B9 CC EC  LDA $ECCC,Y                   ; 16E5C ×51
  EE5F  85 1A     STA $1A                       ; 16E5F ×51
  EE61  BC A1 05  LDY $05A1,X                   ; 16E61 ×51

loc_B2_EE64:                    ; from 16e83
  EE64  60        RTS                           ; 16E64 ×87

loc_B2_EE65:                    ; from 1000c
  EE65  A6 82     LDX $82                       ; 16E65 ×3036
  EE67  A5 F2     LDA $F2                       ; 16E67 ×3036
  EE69  4A        LSR A                         ; 16E69 ×3036
  EE6A  65 F1     ADC $F1                       ; 16E6A ×3036
  EE6C  85 F1     STA $F1                       ; 16E6C ×3036
  EE6E  BD 83 05  LDA $0583,X                   ; 16E6E ×3036
  EE71  F0 57     BEQ loc_B2_EECA               ; 16E71 ×3036
  EE73  A9 00     LDA #$00                      ; 16E73 ×1622
  EE75  8D CB 05  STA $05CB                     ; 16E75 ×1622

loc_B2_EE78:                    ; from 10009
  EE78  A6 82     LDX $82                       ; 16E78 ×3772
  EE7A  BD 0C 04  LDA $040C,X                   ; 16E7A ×3772
  EE7D  C9 1F     CMP #$1F                      ; 16E7D ×3772
  EE7F  F0 49     BEQ loc_B2_EECA               ; 16E7F ×3772
  EE81  A4 C9     LDY $C9                       ; 16E81 ×48
  EE83  D0 DF     BNE loc_B2_EE64               ; 16E83 ×48
  EE85  A4 95     LDY $95                       ; 16E85 ×12
  EE87  C0 80     CPY #$80                      ; 16E87 ×12
  EE89  D0 D9     BNE loc_B2_EE64               ; 16E89 ×12
  EE8B  C9 40     CMP #$40                      ; 16E8B ×12
  EE8D  90 1A     BCC loc_B2_EEA9               ; 16E8D ×12
  EE8F  A5 56     LDA $56                       ; 16E8F ×6
  EE91  29 0F     AND #$0F                      ; 16E91 ×6
  EE93  09 20     ORA #$20                      ; 16E93 ×6
  EE95  85 74     STA $74                       ; 16E95 ×6
  EE97  49 30     EOR #$30                      ; 16E97 ×6
  EE99  85 73     STA $73                       ; 16E99 ×6
  EE9B  A9 1F     LDA #$1F                      ; 16E9B ×6
  EE9D  9D 0C 04  STA $040C,X                   ; 16E9D ×6
  EEA0  A9 10     LDA #$10                      ; 16EA0 ×6
  EEA2  85 CB     STA $CB                       ; 16EA2 ×6
  EEA4  A9 84     LDA #$84                      ; 16EA4 ×6
  EEA6  85 95     STA $95                       ; 16EA6 ×6
  EEA8  60        RTS                           ; 16EA8 ×6

loc_B2_EEA9:                    ; from 16e8d
  EEA9  0A        ASL A                         ; 16EA9 ×6
  EEAA  A8        TAY                           ; 16EAA ×6
  EEAB  B9 27 EE  LDA $EE27,Y                   ; 16EAB ×6
  EEAE  85 56     STA $56                       ; 16EAE ×6
  EEB0  85 5C     STA $5C                       ; 16EB0 ×6
  EEB2  B9 28 EE  LDA $EE28,Y                   ; 16EB2 ×6
  EEB5  85 58     STA $58                       ; 16EB5 ×6
  EEB7  85 5A     STA $5A                       ; 16EB7 ×6
  EEB9  A9 00     LDA #$00                      ; 16EB9 ×6
  EEBB  85 CB     STA $CB                       ; 16EBB ×6
  EEBD  A9 84     LDA #$84                      ; 16EBD ×6
  EEBF  85 95     STA $95                       ; 16EBF ×6
  EEC1  BD 0C 04  LDA $040C,X                   ; 16EC1 ×6
  EEC4  09 40     ORA #$40                      ; 16EC4 ×6
  EEC6  9D 0C 04  STA $040C,X                   ; 16EC6 ×6
  EEC9  60        RTS                           ; 16EC9 ×6

loc_B2_EECA:                    ; from 16e7f 16e71
  EECA  BD 83 05  LDA $0583,X                   ; 16ECA ×5138
  EECD  F0 6A     BEQ loc_B2_EF39               ; 16ECD ×5138
  EECF  BD 1B 04  LDA $041B,X                   ; 16ECF ×2221
  EED2  C9 D8     CMP #$D8                      ; 16ED2 ×2221
  EED4  B0 20     BCS loc_B2_EEF6               ; 16ED4 ×2221
  EED6  9D 1A 05  STA $051A,X                   ; 16ED6 ×12
  EED9  20 55 EE  JSR sub_B2_EE55               ; 16ED9 ×12
  EEDC  B1 19     LDA ($19),Y                   ; 16EDC ×12
  EEDE  9D 65 05  STA $0565,X                   ; 16EDE ×12
  EEE1  C9 C0     CMP #$C0                      ; 16EE1 ×12
  EEE3  A9 02     LDA #$02                      ; 16EE3 ×12
  EEE5  90 02     BCC loc_B2_EEE9               ; 16EE5 ×12
  EEE7  A9 04     LDA #$04                      ; 16EE7 inferred, not run

loc_B2_EEE9:                    ; from 16ee5
  EEE9  85 F2     STA $F2                       ; 16EE9 ×12
  EEEB  FE A1 05  INC $05A1,X                   ; 16EEB ×12
  EEEE  A9 D8     LDA #$D8                      ; 16EEE ×12
  EEF0  9D 1B 04  STA $041B,X                   ; 16EF0 ×12
  EEF3  20 CE F1  JSR sub_B2_F1CE               ; 16EF3 ×12

loc_B2_EEF6:                    ; from 16ed4
  EEF6  A5 0B     LDA $0B                       ; 16EF6 ×2221
  EEF8  29 01     AND #$01                      ; 16EF8 ×2221
  EEFA  D0 11     BNE loc_B2_EF0D               ; 16EFA ×2221
  EEFC  DE 83 05  DEC $0583,X                   ; 16EFC ×1114
  EEFF  D0 0C     BNE loc_B2_EF0D               ; 16EFF ×1114
  EF01  A9 D8     LDA #$D8                      ; 16F01 ×11
  EF03  9D 1B 04  STA $041B,X                   ; 16F03 ×11
  EF06  A2 15     LDX #$15                      ; 16F06 ×11
  EF08  A9 22     LDA #$22                      ; 16F08 ×11
  EF0A  4C B7 EC  JMP sub_B2_ECB7               ; 16F0A ×11

loc_B2_EF0D:                    ; from 16efa 16eff 16cc8
  EF0D  A9 98     LDA #$98                      ; 16F0D ×3102
  EF0F  9D D0 03  STA $03D0,X                   ; 16F0F ×3102
  EF12  A5 0B     LDA $0B                       ; 16F12 ×3102
  EF14  29 04     AND #$04                      ; 16F14 ×3102
  EF16  09 D8     ORA #$D8                      ; 16F16 ×3102
  EF18  9D 1B 04  STA $041B,X                   ; 16F18 ×3102
  EF1B  BD FD 03  LDA $03FD,X                   ; 16F1B ×3102
  EF1E  29 1F     AND #$1F                      ; 16F1E ×3102
  EF20  C9 10     CMP #$10                      ; 16F20 ×3102
  EF22  F0 08     BEQ loc_B2_EF2C               ; 16F22 ×3102
  EF24  FE D0 03  INC $03D0,X                   ; 16F24 ×3102
  EF27  90 03     BCC loc_B2_EF2C               ; 16F27 ×3102
  EF29  FE D0 03  INC $03D0,X                   ; 16F29 ×892

loc_B2_EF2C:                    ; from 16f27
  EF2C  BD A2 04  LDA $04A2,X                   ; 16F2C ×3102
  EF2F  30 07     BMI loc_B2_EF38               ; 16F2F ×3102
  EF31  A2 0C     LDX #$0C                      ; 16F31 ×1161
  EF33  A9 21     LDA #$21                      ; 16F33 ×1161
  EF35  4C B7 EC  JMP sub_B2_ECB7               ; 16F35 ×1161

loc_B2_EF38:                    ; from 16f2f
  EF38  60        RTS                           ; 16F38 ×1941

loc_B2_EF39:                    ; from 16ecd
  EF39  BD DF 03  LDA $03DF,X                   ; 16F39 ×2917
  EF3C  F0 03     BEQ loc_B2_EF41               ; 16F3C ×2917
  EF3E  4C 6C F0  JMP loc_B2_F06C               ; 16F3E ×11

loc_B2_EF41:                    ; from 16f3c
  EF41  BD ED 04  LDA $04ED,X                   ; 16F41 ×2906
  EF44  F0 03     BEQ loc_B2_EF49               ; 16F44 ×2906
  EF46  4C 1A F0  JMP loc_B2_F01A               ; 16F46 ×2867

loc_B2_EF49:                    ; from 16f44
  EF49  BD C1 03  LDA $03C1,X                   ; 16F49 ×39
  EF4C  C9 4C     CMP #$4C                      ; 16F4C ×39
  EF4E  D0 07     BNE loc_B2_EF57               ; 16F4E ×39
  EF50  A9 7E     LDA #$7E                      ; 16F50 ×21
  EF52  A2 15     LDX #$15                      ; 16F52 ×21
  EF54  20 B7 EC  JSR sub_B2_ECB7               ; 16F54 ×21

loc_B2_EF57:                    ; from 16f4e
  EF57  BD 1A 05  LDA $051A,X                   ; 16F57 ×39
  EF5A  20 55 EE  JSR sub_B2_EE55               ; 16F5A ×39
  EF5D  B1 19     LDA ($19),Y                   ; 16F5D ×39
  EF5F  D0 45     BNE loc_B2_EFA6               ; 16F5F ×39
  EF61  BD C1 03  LDA $03C1,X                   ; 16F61 ×8
  EF64  C9 4D     CMP #$4D                      ; 16F64 ×8
  EF66  D0 2D     BNE loc_B2_EF95               ; 16F66 ×8
  EF68  E6 B7     INC $B7                       ; 16F68 ×3
  EF6A  D0 02     BNE loc_B2_EF6E               ; 16F6A ×3
  EF6C  E6 B8     INC $B8                       ; 16F6C inferred, not run

loc_B2_EF6E:                    ; from 16f6a
  EF6E  A2 24     LDX #$24                      ; 16F6E ×3
  EF70  A0 00     LDY #$00                      ; 16F70 ×3
  EF72  20 AD EC  JSR sub_B2_ECAD               ; 16F72 ×3
  EF75  A5 8A     LDA $8A                       ; 16F75 ×3
  EF77  C9 02     CMP #$02                      ; 16F77 ×3
  EF79  D0 19     BNE loc_B2_EF94               ; 16F79 ×3
  EF7B  A5 F0     LDA $F0                       ; 16F7B ×3
  EF7D  0A        ASL A                         ; 16F7D ×3
  EF7E  69 12     ADC #$12                      ; 16F7E ×3
  EF80  85 15     STA $15                       ; 16F80 ×3
  EF82  A2 24     LDX #$24                      ; 16F82 ×3
  EF84  A0 03     LDY #$03                      ; 16F84 ×3
  EF86  20 AD EC  JSR sub_B2_ECAD               ; 16F86 ×3
  EF89  A9 0B     LDA #$0B                      ; 16F89 ×3
  EF8B  18        CLC                           ; 16F8B ×3
  EF8C  65 B7     ADC $B7                       ; 16F8C ×3
  EF8E  85 B7     STA $B7                       ; 16F8E ×3
  EF90  90 02     BCC loc_B2_EF94               ; 16F90 ×3
  EF92  E6 B8     INC $B8                       ; 16F92 inferred, not run

loc_B2_EF94:                    ; from 16f90
  EF94  60        RTS                           ; 16F94 ×3

loc_B2_EF95:                    ; from 16f66
  EF95  A9 F0     LDA #$F0                      ; 16F95 ×5
  EF97  9D 65 05  STA $0565,X                   ; 16F97 ×5
  EF9A  A9 4E     LDA #$4E                      ; 16F9A ×5
  EF9C  9D C1 03  STA $03C1,X                   ; 16F9C ×5

sub_B2_EF9F:                    ; from 17041
  EF9F  A2 21     LDX #$21                      ; 16F9F ×2013
  EFA1  A0 00     LDY #$00                      ; 16FA1 ×2013
  EFA3  4C AD EC  JMP sub_B2_ECAD               ; 16FA3 ×2013

loc_B2_EFA6:                    ; from 16f5f
  EFA6  9D ED 04  STA $04ED,X                   ; 16FA6 ×31
  EFA9  C8        INY                           ; 16FA9 ×31
  EFAA  C8        INY                           ; 16FAA ×31
  EFAB  B1 19     LDA ($19),Y                   ; 16FAB ×31
  EFAD  9D 92 05  STA $0592,X                   ; 16FAD ×31
  EFB0  88        DEY                           ; 16FB0 ×31
  EFB1  B1 19     LDA ($19),Y                   ; 16FB1 ×31
  EFB3  9D 56 05  STA $0556,X                   ; 16FB3 ×31
  EFB6  29 40     AND #$40                      ; 16FB6 ×31
  EFB8  D0 27     BNE loc_B2_EFE1               ; 16FB8 ×31
  EFBA  A9 1C     LDA #$1C                      ; 16FBA ×21
  EFBC  85 15     STA $15                       ; 16FBC ×21
  EFBE  BD 56 05  LDA $0556,X                   ; 16FBE ×21
  EFC1  D0 0F     BNE loc_B2_EFD2               ; 16FC1 ×21
  EFC3  A9 04     LDA #$04                      ; 16FC3 ×21
  EFC5  85 15     STA $15                       ; 16FC5 ×21
  EFC7  BD 65 05  LDA $0565,X                   ; 16FC7 ×21
  EFCA  49 F0     EOR #$F0                      ; 16FCA ×21
  EFCC  D0 04     BNE loc_B2_EFD2               ; 16FCC ×21
  EFCE  C6 15     DEC $15                       ; 16FCE inferred, not run
  EFD0  C6 15     DEC $15                       ; 16FD0 inferred, not run

loc_B2_EFD2:                    ; from 16fcc
  EFD2  BD FD 03  LDA $03FD,X                   ; 16FD2 ×21
  EFD5  29 E0     AND #$E0                      ; 16FD5 ×21
  EFD7  05 15     ORA $15                       ; 16FD7 ×21
  EFD9  9D FD 03  STA $03FD,X                   ; 16FD9 ×21
  EFDC  49 8F     EOR #$8F                      ; 16FDC ×21
  EFDE  4C 11 F0  JMP loc_B2_F011               ; 16FDE ×21

loc_B2_EFE1:                    ; from 16fb8
  EFE1  A9 14     LDA #$14                      ; 16FE1 ×10
  EFE3  85 15     STA $15                       ; 16FE3 ×10
  EFE5  BD 56 05  LDA $0556,X                   ; 16FE5 ×10
  EFE8  10 12     BPL loc_B2_EFFC               ; 16FE8 ×10
  EFEA  A9 1E     LDA #$1E                      ; 16FEA ×10
  EFEC  85 15     STA $15                       ; 16FEC ×10
  EFEE  BD 39 04  LDA $0439,X                   ; 16FEE ×10
  EFF1  38        SEC                           ; 16FF1 ×10
  EFF2  E9 20     SBC #$20                      ; 16FF2 ×10
  EFF4  9D 39 04  STA $0439,X                   ; 16FF4 ×10
  EFF7  B0 03     BCS loc_B2_EFFC               ; 16FF7 ×10
  EFF9  DE 2A 04  DEC $042A,X                   ; 16FF9 inferred, not run

loc_B2_EFFC:                    ; from 16ff7
  EFFC  BD 39 04  LDA $0439,X                   ; 16FFC ×10
  EFFF  29 E0     AND #$E0                      ; 16FFF ×10
  F001  05 15     ORA $15                       ; 17001 ×10
  F003  9D 39 04  STA $0439,X                   ; 17003 ×10
  F006  A9 AF     LDA #$AF                      ; 17006 ×10
  F008  FD 39 04  SBC $0439,X                   ; 17008 ×10
  F00B  9D FC 04  STA $04FC,X                   ; 1700B ×10
  F00E  BD FD 03  LDA $03FD,X                   ; 1700E ×10

loc_B2_F011:                    ; from 16fde
  F011  9D DE 04  STA $04DE,X                   ; 17011 ×31
  F014  C8        INY                           ; 17014 ×31
  F015  C8        INY                           ; 17015 ×31
  F016  98        TYA                           ; 17016 ×31
  F017  9D A1 05  STA $05A1,X                   ; 17017 ×31

loc_B2_F01A:                    ; from 16f46
  F01A  DE ED 04  DEC $04ED,X                   ; 1701A ×2898
  F01D  BD 56 05  LDA $0556,X                   ; 1701D ×2898
  F020  29 40     AND #$40                      ; 17020 ×2898
  F022  F0 1D     BEQ loc_B2_F041               ; 17022 ×2898
  F024  A0 00     LDY #$00                      ; 17024 ×890
  F026  BD 56 05  LDA $0556,X                   ; 17026 ×890
  F029  2A        ROL A                         ; 17029 ×890
  F02A  A9 01     LDA #$01                      ; 1702A ×890
  F02C  B0 03     BCS loc_B2_F031               ; 1702C ×890
  F02E  88        DEY                           ; 1702E inferred, not run
  F02F  A9 FE     LDA #$FE                      ; 1702F inferred, not run

loc_B2_F031:                    ; from 1702c
  F031  7D 39 04  ADC $0439,X                   ; 17031 ×890
  F034  9D 39 04  STA $0439,X                   ; 17034 ×890
  F037  98        TYA                           ; 17037 ×890
  F038  7D 2A 04  ADC $042A,X                   ; 17038 ×890
  F03B  9D 2A 04  STA $042A,X                   ; 1703B ×890
  F03E  4C 46 F0  JMP loc_B2_F046               ; 1703E ×890

loc_B2_F041:                    ; from 17022
  F041  20 9F EF  JSR sub_B2_EF9F               ; 17041 ×2008
  F044  A6 82     LDX $82                       ; 17044 ×2008

loc_B2_F046:                    ; from 1703e
  F046  A9 00     LDA #$00                      ; 17046 ×2898
  F048  9D DF 03  STA $03DF,X                   ; 17048 ×2898
  F04B  BD FD 03  LDA $03FD,X                   ; 1704B ×2898
  F04E  5D DE 04  EOR $04DE,X                   ; 1704E ×2898
  F051  29 F8     AND #$F8                      ; 17051 ×2898
  F053  D0 14     BNE loc_B2_F069               ; 17053 ×2898
  F055  A9 D8     LDA #$D8                      ; 17055 ×2367
  F057  38        SEC                           ; 17057 ×2367
  F058  FD 39 04  SBC $0439,X                   ; 17058 ×2367
  F05B  5D FC 04  EOR $04FC,X                   ; 1705B ×2367
  F05E  29 F8     AND #$F8                      ; 1705E ×2367
  F060  F0 04     BEQ loc_B2_F066               ; 17060 ×2367
  F062  09 01     ORA #$01                      ; 17062 ×230
  F064  D0 03     BNE loc_B2_F069               ; 17064 ×230

loc_B2_F066:                    ; from 17060
  F066  4C CE F1  JMP sub_B2_F1CE               ; 17066 ×2137

loc_B2_F069:                    ; from 17053 17064
  F069  9D DF 03  STA $03DF,X                   ; 17069 ×761

loc_B2_F06C:                    ; from 16f3e
  F06C  A9 D8     LDA #$D8                      ; 1706C ×772
  F06E  38        SEC                           ; 1706E ×772
  F06F  FD 39 04  SBC $0439,X                   ; 1706F ×772
  F072  85 17     STA $17                       ; 17072 ×772
  F074  A9 1F     LDA #$1F                      ; 17074 ×772
  F076  FD 2A 04  SBC $042A,X                   ; 17076 ×772
  F079  85 18     STA $18                       ; 17079 ×772
  F07B  BD C1 03  LDA $03C1,X                   ; 1707B ×772
  F07E  C9 4C     CMP #$4C                      ; 1707E ×772
  F080  F0 1B     BEQ loc_B2_F09D               ; 17080 ×772
  F082  BD 56 05  LDA $0556,X                   ; 17082 ×378
  F085  69 40     ADC #$40                      ; 17085 ×378
  F087  2A        ROL A                         ; 17087 ×378
  F088  A9 0B     LDA #$0B                      ; 17088 ×378
  F08A  90 02     BCC loc_B2_F08E               ; 1708A ×378
  F08C  A9 07     LDA #$07                      ; 1708C inferred, not run

loc_B2_F08E:                    ; from 1708a
  F08E  DD ED 04  CMP $04ED,X                   ; 1708E ×378
  F091  90 0A     BCC loc_B2_F09D               ; 17091 ×378
  F093  BD 92 05  LDA $0592,X                   ; 17093 ×43
  F096  C9 05     CMP #$05                      ; 17096 ×43
  F098  90 03     BCC loc_B2_F09D               ; 17098 ×43
  F09A  4C 45 F1  JMP loc_B2_F145               ; 1709A ×30

loc_B2_F09D:                    ; from 17080 17091 17098
  F09D  A5 17     LDA $17                       ; 1709D ×742
  F09F  38        SEC                           ; 1709F ×742
  F0A0  E5 89     SBC $89                       ; 170A0 ×742
  F0A2  85 19     STA $19                       ; 170A2 ×742
  F0A4  A5 18     LDA $18                       ; 170A4 ×742
  F0A6  E5 8A     SBC $8A                       ; 170A6 ×742
  F0A8  F0 17     BEQ loc_B2_F0C1               ; 170A8 ×742
  F0AA  C9 01     CMP #$01                      ; 170AA ×174
  F0AC  D0 09     BNE loc_B2_F0B7               ; 170AC ×174
  F0AE  A5 19     LDA $19                       ; 170AE inferred, not run
  F0B0  C9 11     CMP #$11                      ; 170B0 inferred, not run
  F0B2  90 0D     BCC loc_B2_F0C1               ; 170B2 inferred, not run

loc_B2_F0B4:                    ; from 170bf
  F0B4  4C 45 F1  JMP loc_B2_F145               ; 170B4 ×163

loc_B2_F0B7:                    ; from 170ac
  F0B7  C9 FF     CMP #$FF                      ; 170B7 ×174
  F0B9  D0 F9     BNE loc_B2_F0B4               ; 170B9 ×174
  F0BB  A5 19     LDA $19                       ; 170BB ×174
  F0BD  C9 F0     CMP #$F0                      ; 170BD ×174
  F0BF  90 F3     BCC loc_B2_F0B4               ; 170BF ×174

loc_B2_F0C1:                    ; from 170a8
  F0C1  A5 EF     LDA $EF                       ; 170C1 ×579
  F0C3  F0 07     BEQ loc_B2_F0CC               ; 170C3 ×579
  F0C5  E4 EF     CPX $EF                       ; 170C5 ×11
  F0C7  F0 03     BEQ loc_B2_F0CC               ; 170C7 ×11
  F0C9  4C 58 F1  JMP loc_B2_F158               ; 170C9 ×3

loc_B2_F0CC:                    ; from 170c3 170c7
  F0CC  A9 00     LDA #$00                      ; 170CC ×576
  F0CE  8D E5 05  STA $05E5                     ; 170CE ×576
  F0D1  BD DF 03  LDA $03DF,X                   ; 170D1 ×576
  F0D4  6A        ROR A                         ; 170D4 ×576
  F0D5  90 41     BCC loc_B2_F118               ; 170D5 ×576
  F0D7  BD FD 03  LDA $03FD,X                   ; 170D7 ×217
  F0DA  38        SEC                           ; 170DA ×217
  F0DB  E5 87     SBC $87                       ; 170DB ×217
  F0DD  85 1A     STA $1A                       ; 170DD ×217
  F0DF  BD EE 03  LDA $03EE,X                   ; 170DF ×217
  F0E2  E5 88     SBC $88                       ; 170E2 ×217
  F0E4  F0 16     BEQ loc_B2_F0FC               ; 170E4 ×217
  F0E6  C9 01     CMP #$01                      ; 170E6 ×66
  F0E8  D0 08     BNE $F0F2                     ; 170E8 ×66
  F0EA  A5 1A     LDA $1A                       ; 170EA ×66
  F0EC  C9 18     CMP #$18                      ; 170EC ×66
  F0EE  B0 55     BCS loc_B2_F145               ; 170EE ×66
  F0F0  90 0A     BCC loc_B2_F0FC               ; 170F0 ×21
  F0F2  C9 FF     CMP #$FF                      ; 170F2 inferred, not run
  F0F4  D0 4F     BNE loc_B2_F145               ; 170F4 inferred, not run
  F0F6  A5 1A     LDA $1A                       ; 170F6 inferred, not run
  F0F8  C9 E8     CMP #$E8                      ; 170F8 inferred, not run
  F0FA  90 49     BCC loc_B2_F145               ; 170FA inferred, not run

loc_B2_F0FC:                    ; from 170e4 170f0
  F0FC  A9 00     LDA #$00                      ; 170FC ×172
  F0FE  8D E2 05  STA $05E2                     ; 170FE ×172
  F101  8D E4 05  STA $05E4                     ; 17101 ×172
  F104  A5 17     LDA $17                       ; 17104 ×172
  F106  29 F8     AND #$F8                      ; 17106 ×172
  F108  38        SEC                           ; 17108 ×172
  F109  E5 89     SBC $89                       ; 17109 ×172
  F10B  C9 01     CMP #$01                      ; 1710B ×172
  F10D  90 36     BCC loc_B2_F145               ; 1710D ×172
  F10F  C9 F1     CMP #$F1                      ; 1710F ×172
  F111  B0 32     BCS loc_B2_F145               ; 17111 ×172
  F113  8D E3 05  STA $05E3                     ; 17113 ×157
  F116  D0 23     BNE loc_B2_F13B               ; 17116 ×157

loc_B2_F118:                    ; from 170d5
  F118  A9 01     LDA #$01                      ; 17118 ×359
  F11A  8D E4 05  STA $05E4                     ; 1711A ×359
  F11D  A9 F0     LDA #$F0                      ; 1711D ×359
  F11F  8D E3 05  STA $05E3                     ; 1711F ×359
  F122  BD FD 03  LDA $03FD,X                   ; 17122 ×359
  F125  29 F8     AND #$F8                      ; 17125 ×359
  F127  38        SEC                           ; 17127 ×359
  F128  E5 87     SBC $87                       ; 17128 ×359
  F12A  8D E2 05  STA $05E2                     ; 1712A ×359
  F12D  29 F8     AND #$F8                      ; 1712D ×359
  F12F  BD EE 03  LDA $03EE,X                   ; 1712F ×359
  F132  E5 88     SBC $88                       ; 17132 ×359
  F134  F0 0A     BEQ loc_B2_F140               ; 17134 ×359
  F136  AD E2 05  LDA $05E2                     ; 17136 ×101
  F139  D0 0A     BNE loc_B2_F145               ; 17139 ×101

loc_B2_F13B:                    ; from 17116
  F13B  EE E5 05  INC $05E5                     ; 1713B ×157
  F13E  D0 12     BNE loc_B2_F152               ; 1713E ×157

loc_B2_F140:                    ; from 17134
  F140  AD E2 05  LDA $05E2                     ; 17140 ×258
  F143  D0 0D     BNE loc_B2_F152               ; 17143 ×258

loc_B2_F145:                    ; from 170b4 17139 170ee 1709a 17111
  F145  A9 00     LDA #$00                      ; 17145 ×357
  F147  9D DF 03  STA $03DF,X                   ; 17147 ×357
  F14A  E4 EF     CPX $EF                       ; 1714A ×357
  F14C  D0 0A     BNE loc_B2_F158               ; 1714C ×357
  F14E  85 EF     STA $EF                       ; 1714E inferred, not run
  F150  F0 06     BEQ loc_B2_F158               ; 17150 inferred, not run

loc_B2_F152:                    ; from 17143 1713e
  F152  A5 EF     LDA $EF                       ; 17152 ×412
  F154  D0 02     BNE loc_B2_F158               ; 17154 ×412
  F156  86 EF     STX $EF                       ; 17156 ×404

loc_B2_F158:                    ; from 1714c 17154 170c9
  F158  BD FD 03  LDA $03FD,X                   ; 17158 ×772
  F15B  5D DE 04  EOR $04DE,X                   ; 1715B ×772
  F15E  29 E0     AND #$E0                      ; 1715E ×772
  F160  85 1F     STA $1F                       ; 17160 ×772
  F162  A9 D8     LDA #$D8                      ; 17162 ×772
  F164  38        SEC                           ; 17164 ×772
  F165  FD 39 04  SBC $0439,X                   ; 17165 ×772
  F168  5D FC 04  EOR $04FC,X                   ; 17168 ×772
  F16B  05 1F     ORA $1F                       ; 1716B ×772
  F16D  29 E0     AND #$E0                      ; 1716D ×772
  F16F  F0 5D     BEQ sub_B2_F1CE               ; 1716F ×772
  F171  46 18     LSR $18                       ; 17171 ×196
  F173  A5 17     LDA $17                       ; 17173 ×196
  F175  6A        ROR A                         ; 17175 ×196
  F176  29 F0     AND #$F0                      ; 17176 ×196
  F178  85 17     STA $17                       ; 17178 ×196
  F17A  BD EE 03  LDA $03EE,X                   ; 1717A ×196
  F17D  85 15     STA $15                       ; 1717D ×196
  F17F  BD FD 03  LDA $03FD,X                   ; 1717F ×196
  F182  46 15     LSR $15                       ; 17182 ×196
  F184  6A        ROR A                         ; 17184 ×196
  F185  4A        LSR A                         ; 17185 ×196
  F186  4A        LSR A                         ; 17186 ×196
  F187  4A        LSR A                         ; 17187 ×196
  F188  4A        LSR A                         ; 17188 ×196
  F189  C9 0E     CMP #$0E                      ; 17189 ×196
  F18B  B0 41     BCS sub_B2_F1CE               ; 1718B ×196
  F18D  C9 02     CMP #$02                      ; 1718D ×196
  F18F  90 3D     BCC sub_B2_F1CE               ; 1718F ×196
  F191  05 17     ORA $17                       ; 17191 ×196
  F193  85 19     STA $19                       ; 17193 ×196
  F195  A5 18     LDA $18                       ; 17195 ×196
  F197  09 06     ORA #$06                      ; 17197 ×196
  F199  85 1A     STA $1A                       ; 17199 ×196
  F19B  A0 00     LDY #$00                      ; 1719B ×196
  F19D  BD C1 03  LDA $03C1,X                   ; 1719D ×196
  F1A0  C9 4D     CMP #$4D                      ; 171A0 ×196
  F1A2  D0 25     BNE loc_B2_F1C9               ; 171A2 ×196
  F1A4  20 FD F1  JSR sub_B2_F1FD               ; 171A4 ×95
  F1A7  D1 19     CMP ($19),Y                   ; 171A7 ×95
  F1A9  D0 23     BNE sub_B2_F1CE               ; 171A9 ×95
  F1AB  A2 06     LDX #$06                      ; 171AB ×85
  F1AD  A0 07     LDY #$07                      ; 171AD ×85
  F1AF  20 AD EC  JSR sub_B2_ECAD               ; 171AF ×85
  F1B2  A5 1A     LDA $1A                       ; 171B2 ×85
  F1B4  8D CB 05  STA $05CB                     ; 171B4 ×85
  F1B7  A5 19     LDA $19                       ; 171B7 ×85
  F1B9  8D CC 05  STA $05CC                     ; 171B9 ×85
  F1BC  A0 00     LDY #$00                      ; 171BC ×85
  F1BE  B1 19     LDA ($19),Y                   ; 171BE ×85
  F1C0  8D CD 05  STA $05CD                     ; 171C0 ×85
  F1C3  A5 8D     LDA $8D                       ; 171C3 ×85
  F1C5  A6 82     LDX $82                       ; 171C5 ×85
  F1C7  D0 03     BNE loc_B2_F1CC               ; 171C7 ×85

loc_B2_F1C9:                    ; from 171a2
  F1C9  20 FD F1  JSR sub_B2_F1FD               ; 171C9 ×101

loc_B2_F1CC:                    ; from 171c7
  F1CC  91 19     STA ($19),Y                   ; 171CC ×186

sub_B2_F1CE:                    ; from 17066 1716f 16ef3 171a9
  F1CE  BD FD 03  LDA $03FD,X                   ; 171CE ×2921
  F1D1  9D DE 04  STA $04DE,X                   ; 171D1 ×2921
  F1D4  A9 D8     LDA #$D8                      ; 171D4 ×2921
  F1D6  38        SEC                           ; 171D6 ×2921
  F1D7  FD 39 04  SBC $0439,X                   ; 171D7 ×2921
  F1DA  9D FC 04  STA $04FC,X                   ; 171DA ×2921
  F1DD  BD 56 05  LDA $0556,X                   ; 171DD ×2921
  F1E0  2A        ROL A                         ; 171E0 ×2921
  F1E1  2A        ROL A                         ; 171E1 ×2921
  F1E2  2A        ROL A                         ; 171E2 ×2921
  F1E3  29 03     AND #$03                      ; 171E3 ×2921
  F1E5  BC C1 03  LDY $03C1,X                   ; 171E5 ×2921
  F1E8  C0 4C     CPY #$4C                      ; 171E8 ×2921
  F1EA  F0 03     BEQ loc_B2_F1EF               ; 171EA ×2921
  F1EC  18        CLC                           ; 171EC ×1417
  F1ED  69 04     ADC #$04                      ; 171ED ×1417

loc_B2_F1EF:                    ; from 171ea
  F1EF  A8        TAY                           ; 171EF ×2921
  F1F0  B9 2F F2  LDA $F22F,Y                   ; 171F0 ×2921
  F1F3  9D D0 03  STA $03D0,X                   ; 171F3 ×2921
  F1F6  B9 37 F2  LDA $F237,Y                   ; 171F6 ×2921
  F1F9  9D A2 04  STA $04A2,X                   ; 171F9 ×2921
  F1FC  60        RTS                           ; 171FC ×2921

sub_B2_F1FD:                    ; from 171c9 171a4
  F1FD  B1 19     LDA ($19),Y                   ; 171FD ×196
  F1FF  C9 05     CMP #$05                      ; 171FF ×196
  F201  90 04     BCC loc_B2_F207               ; 17201 ×196
  F203  C9 0D     CMP #$0D                      ; 17203 ×121
  F205  90 27     BCC loc_B2_F22E               ; 17205 ×121

loc_B2_F207:                    ; from 17201
  F207  BD ED 04  LDA $04ED,X                   ; 17207 ×176
  F20A  C9 10     CMP #$10                      ; 1720A ×176
  F20C  BD 92 05  LDA $0592,X                   ; 1720C ×176
  F20F  90 1D     BCC loc_B2_F22E               ; 1720F ×176
  F211  BD 56 05  LDA $0556,X                   ; 17211 ×156
  F214  29 C0     AND #$C0                      ; 17214 ×156
  F216  F0 14     BEQ loc_B2_F22C               ; 17216 ×156
  F218  C9 80     CMP #$80                      ; 17218 ×45
  F21A  F0 0C     BEQ $F228                     ; 1721A ×45
  F21C  C9 C0     CMP #$C0                      ; 1721C ×45
  F21E  F0 04     BEQ loc_B2_F224               ; 1721E ×45
  F220  A9 03     LDA #$03                      ; 17220 inferred, not run
  F222  D0 0A     BNE loc_B2_F22E               ; 17222 inferred, not run

loc_B2_F224:                    ; from 1721e
  F224  A9 04     LDA #$04                      ; 17224 ×45
  F226  D0 06     BNE loc_B2_F22E               ; 17226 ×45
  F228  A9 02     LDA #$02                      ; 17228 inferred, not run
  F22A  D0 02     BNE loc_B2_F22E               ; 1722A inferred, not run

loc_B2_F22C:                    ; from 17216
  F22C  A9 01     LDA #$01                      ; 1722C ×111

loc_B2_F22E:                    ; from 17226 1720f 17205
  F22E  60        RTS                           ; 1722E ×196
  F22F  .byte 92                                                ; 1722F data, read by 171f0
  F230  .byte 97 92                                             ; 17230
  F232  .byte 96 93                                             ; 17232 data, read by 171f0
  F234  .byte 95 93                                             ; 17234
  F236  .byte 94 00                                             ; 17236 data, read by 171f0 171f6
  F238  .byte 00 40                                             ; 17238
  F23A  .byte 00 00                                             ; 1723A data, read by 171f6
  F23C  .byte 00 40                                             ; 1723C
  F23E  .byte 00                                                ; 1723E data, read by 171f6

loc_B2_F23F:                    ; from 10012
  F23F  A5 D2     LDA $D2                       ; 1723F ×58783
  F241  F0 0D     BEQ loc_B2_F250               ; 17241 ×58783
  F243  C6 D2     DEC $D2                       ; 17243 ×0
  F245  A5 D3     LDA $D3                       ; 17245 ×0
  F247  E6 D3     INC $D3                       ; 17247 ×0
  F249  2A        ROL A                         ; 17249 ×0
  F24A  B0 04     BCS loc_B2_F250               ; 1724A ×0
  F24C  C6 D3     DEC $D3                       ; 1724C inferred, not run
  F24E  C6 D3     DEC $D3                       ; 1724E inferred, not run

loc_B2_F250:                    ; from 17241
  F250  A5 10     LDA $10                       ; 17250 ×58783
  F252  C9 02     CMP #$02                      ; 17252 ×58783
  F254  D0 2E     BNE loc_B2_F284               ; 17254 ×58783
  F256  A5 B2     LDA $B2                       ; 17256 ×507
  F258  F0 15     BEQ loc_B2_F26F               ; 17258 ×507
  F25A  C6 B2     DEC $B2                       ; 1725A ×0
  F25C  49 1E     EOR #$1E                      ; 1725C ×0
  F25E  D0 0F     BNE loc_B2_F26F               ; 1725E ×0
  F260  AA        TAX                           ; 17260 ×0
  F261  FE 39 04  INC $0439,X                   ; 17261 ×0
  F264  D0 03     BNE $F269                     ; 17264 ×0
  F266  FE 2A 04  INC $042A,X                   ; 17266 ×0
  F269  E8        INX                           ; 17269 ×0
  F26A  E0 02     CPX #$02                      ; 1726A ×0
  F26C  D0 F3     BNE $F261                     ; 1726C ×0
  F26E  60        RTS                           ; 1726E ×0

loc_B2_F26F:                    ; from 17258
  F26F  A5 8A     LDA $8A                       ; 1726F ×507
  F271  C9 1B     CMP #$1B                      ; 17271 ×507
  F273  D0 03     BNE loc_B2_F278               ; 17273 ×507
  F275  4C AE F5  JMP $F5AE                     ; 17275 inferred, not run

loc_B2_F278:                    ; from 17273
  F278  A5 89     LDA $89                       ; 17278 ×507
  F27A  69 10     ADC #$10                      ; 1727A ×507
  F27C  85 B1     STA $B1                       ; 1727C ×507
  F27E  4C F8 F5  JMP loc_B2_F5F8               ; 1727E ×507

loc_B2_F281:                    ; from 1728e 1729c
  F281  4C 78 F3  JMP loc_B2_F378               ; 17281 ×57851

loc_B2_F284:                    ; from 17254
  F284  C9 0C     CMP #$0C                      ; 17284 ×58276
  F286  F0 08     BEQ loc_B2_F290               ; 17286 ×58276
  F288  C9 06     CMP #$06                      ; 17288 ×57498
  F28A  F0 04     BEQ loc_B2_F290               ; 1728A ×57498
  F28C  C9 03     CMP #$03                      ; 1728C ×55840
  F28E  D0 F1     BNE loc_B2_F281               ; 1728E ×55840

loc_B2_F290:                    ; from 1728a 17286
  F290  A0 01     LDY #$01                      ; 17290 ×8049

loc_B2_F292:                    ; from 1729f
  F292  B9 C1 03  LDA $03C1,Y                   ; 17292 ×16098
  F295  F0 07     BEQ loc_B2_F29E               ; 17295 ×16098
  F297  B9 38 05  LDA $0538,Y                   ; 17297 ×8049
  F29A  29 40     AND #$40                      ; 1729A ×8049
  F29C  F0 E3     BEQ loc_B2_F281               ; 1729C ×8049

loc_B2_F29E:                    ; from 17295
  F29E  88        DEY                           ; 1729E ×8474
  F29F  10 F1     BPL loc_B2_F292               ; 1729F ×8474
  F2A1  A5 E4     LDA $E4                       ; 172A1 ×425
  F2A3  F0 0C     BEQ loc_B2_F2B1               ; 172A3 ×425
  F2A5  A6 D5     LDX $D5                       ; 172A5 inferred, not run
  F2A7  4C 45 F3  JMP loc_B2_F345               ; 172A7 inferred, not run
  F2AA  .byte A2 2D A0 00 4C CB FF                              ; 172AA

loc_B2_F2B1:                    ; from 172a3
  F2B1  A5 D4     LDA $D4                       ; 172B1 ×425
  F2B3  05 D5     ORA $D5                       ; 172B3 ×425
  F2B5  D0 15     BNE loc_B2_F2CC               ; 172B5 ×425
  F2B7  A4 10     LDY $10                       ; 172B7 ×1
  F2B9  C0 0C     CPY #$0C                      ; 172B9 ×1
  F2BB  F0 0F     BEQ loc_B2_F2CC               ; 172BB ×1
  F2BD  C0 04     CPY #$04                      ; 172BD inferred, not run
  F2BF  A9 05     LDA #$05                      ; 172BF inferred, not run
  F2C1  69 00     ADC #$00                      ; 172C1 inferred, not run
  F2C3  85 32     STA $32                       ; 172C3 inferred, not run
  F2C5  A2 27     LDX #$27                      ; 172C5 inferred, not run
  F2C7  A0 00     LDY #$00                      ; 172C7 inferred, not run
  F2C9  20 AD EC  JSR sub_B2_ECAD               ; 172C9 inferred, not run

loc_B2_F2CC:                    ; from 172b5 172bb
  F2CC  A4 10     LDY $10                       ; 172CC ×425
  F2CE  C0 03     CPY #$03                      ; 172CE ×425
  F2D0  F0 2D     BEQ $F2FF                     ; 172D0 ×425
  F2D2  C0 0C     CPY #$0C                      ; 172D2 ×425
  F2D4  D0 14     BNE $F2EA                     ; 172D4 ×425
  F2D6  A5 88     LDA $88                       ; 172D6 ×425
  F2D8  C9 2F     CMP #$2F                      ; 172D8 ×425
  F2DA  A0 06     LDY #$06                      ; 172DA ×425
  F2DC  90 06     BCC loc_B2_F2E4               ; 172DC ×425
  F2DE  C8        INY                           ; 172DE inferred, not run
  F2DF  C9 3D     CMP #$3D                      ; 172DF inferred, not run
  F2E1  90 01     BCC loc_B2_F2E4               ; 172E1 inferred, not run
  F2E3  C8        INY                           ; 172E3 inferred, not run

loc_B2_F2E4:                    ; from 172dc
  F2E4  A9 04     LDA #$04                      ; 172E4 ×425
  F2E6  18        CLC                           ; 172E6 ×425
  F2E7  4C 26 F3  JMP loc_B2_F326               ; 172E7 ×425
  F2EA  A5 88     LDA $88                       ; 172EA inferred, not run
  F2EC  A0 02     LDY #$02                      ; 172EC inferred, not run
  F2EE  C9 26     CMP #$26                      ; 172EE inferred, not run
  F2F0  90 2B     BCC $F31D                     ; 172F0 inferred, not run
  F2F2  C8        INY                           ; 172F2 inferred, not run
  F2F3  C9 49     CMP #$49                      ; 172F3 inferred, not run
  F2F5  90 26     BCC $F31D                     ; 172F5 inferred, not run
  F2F7  C8        INY                           ; 172F7 inferred, not run
  F2F8  C9 A8     CMP #$A8                      ; 172F8 inferred, not run
  F2FA  90 21     BCC $F31D                     ; 172FA inferred, not run
  F2FC  C8        INY                           ; 172FC inferred, not run
  F2FD  D0 0E     BNE $F30D                     ; 172FD inferred, not run
  F2FF  A9 DD     LDA #$DD                      ; 172FF inferred, not run
  F301  C5 88     CMP $88                       ; 17301 inferred, not run
  F303  D0 04     BNE $F309                     ; 17303 inferred, not run
  F305  A9 01     LDA #$01                      ; 17305 inferred, not run
  F307  85 E3     STA $E3                       ; 17307 inferred, not run
  F309  A4 E3     LDY $E3                       ; 17309 inferred, not run
  F30B  F0 10     BEQ $F31D                     ; 1730B inferred, not run
  F30D  A5 33     LDA $33                       ; 1730D inferred, not run
  F30F  C9 B0     CMP #$B0                      ; 1730F inferred, not run
  F311  F0 0A     BEQ $F31D                     ; 17311 inferred, not run
  F313  A5 0C     LDA $0C                       ; 17313 inferred, not run
  F315  29 04     AND #$04                      ; 17315 inferred, not run
  F317  4A        LSR A                         ; 17317 inferred, not run
  F318  4A        LSR A                         ; 17318 inferred, not run
  F319  65 33     ADC $33                       ; 17319 inferred, not run
  F31B  85 33     STA $33                       ; 1731B inferred, not run
  F31D  A2 01     LDX #$01                      ; 1731D inferred, not run
  F31F  A5 EB     LDA $EB                       ; 1731F inferred, not run
  F321  D0 22     BNE loc_B2_F345               ; 17321 inferred, not run
  F323  A9 08     LDA #$08                      ; 17323 inferred, not run
  F325  18        CLC                           ; 17325 inferred, not run

loc_B2_F326:                    ; from 172e7
  F326  65 D4     ADC $D4                       ; 17326 ×425
  F328  85 D4     STA $D4                       ; 17328 ×425
  F32A  A5 D5     LDA $D5                       ; 1732A ×425
  F32C  69 00     ADC #$00                      ; 1732C ×425
  F32E  85 D5     STA $D5                       ; 1732E ×425
  F330  AA        TAX                           ; 17330 ×425
  F331  59 6C F3  EOR $F36C,Y                   ; 17331 ×425
  F334  D0 0F     BNE loc_B2_F345               ; 17334 ×425
  F336  85 D4     STA $D4                       ; 17336 ×170
  F338  B9 6C F3  LDA $F36C,Y                   ; 17338 ×170
  F33B  C9 08     CMP #$08                      ; 1733B ×170
  F33D  D0 06     BNE loc_B2_F345               ; 1733D ×170
  F33F  A5 87     LDA $87                       ; 1733F inferred, not run
  F341  29 F8     AND #$F8                      ; 17341 inferred, not run
  F343  85 87     STA $87                       ; 17343 inferred, not run

loc_B2_F345:                    ; from 17334 1733d
  F345  A0 02     LDY #$02                      ; 17345 ×425

loc_B2_F347:                    ; from 17360
  F347  B9 47 04  LDA $0447,Y                   ; 17347 ×850
  F34A  18        CLC                           ; 1734A ×850
  F34B  65 D4     ADC $D4                       ; 1734B ×850
  F34D  99 47 04  STA $0447,Y                   ; 1734D ×850
  F350  8A        TXA                           ; 17350 ×850
  F351  79 FC 03  ADC $03FC,Y                   ; 17351 ×850
  F354  99 FC 03  STA $03FC,Y                   ; 17354 ×850
  F357  B9 ED 03  LDA $03ED,Y                   ; 17357 ×850
  F35A  69 00     ADC #$00                      ; 1735A ×850
  F35C  99 ED 03  STA $03ED,Y                   ; 1735C ×850
  F35F  88        DEY                           ; 1735F ×850
  F360  D0 E5     BNE loc_B2_F347               ; 17360 ×850
  F362  A5 D4     LDA $D4                       ; 17362 ×425
  F364  18        CLC                           ; 17364 ×425
  F365  65 D6     ADC $D6                       ; 17365 ×425
  F367  85 D6     STA $D6                       ; 17367 ×425
  F369  4C 25 F5  JMP loc_B2_F525               ; 17369 ×425
  F36C  .byte 08 0C 04 05 08 10                                 ; 1736C
  F372  .byte 04                                                ; 17372 data, read by 17331 17338
  F373  .byte 06 08                                             ; 17373

loc_B2_F375:                    ; from 1737a
  F375  4C D3 F5  JMP loc_B2_F5D3               ; 17375 ×1520

loc_B2_F378:                    ; from 17281
  F378  A5 C8     LDA $C8                       ; 17378 ×57851
  F37A  D0 F9     BNE loc_B2_F375               ; 1737A ×57851
  F37C  A5 D1     LDA $D1                       ; 1737C ×56331
  F37E  F0 4B     BEQ loc_B2_F3CB               ; 1737E ×56331
  F380  A5 C0     LDA $C0                       ; 17380 inferred, not run
  F382  F0 02     BEQ $F386                     ; 17382 inferred, not run
  F384  C6 C0     DEC $C0                       ; 17384 inferred, not run
  F386  A5 BE     LDA $BE                       ; 17386 inferred, not run
  F388  F0 1A     BEQ $F3A4                     ; 17388 inferred, not run
  F38A  C6 BE     DEC $BE                       ; 1738A inferred, not run
  F38C  A6 BD     LDX $BD                       ; 1738C inferred, not run
  F38E  C9 04     CMP #$04                      ; 1738E inferred, not run
  F390  B0 05     BCS $F397                     ; 17390 inferred, not run
  F392  CA        DEX                           ; 17392 inferred, not run
  F393  8A        TXA                           ; 17393 inferred, not run
  F394  49 FF     EOR #$FF                      ; 17394 inferred, not run
  F396  AA        TAX                           ; 17396 inferred, not run
  F397  8A        TXA                           ; 17397 inferred, not run
  F398  29 20     AND #$20                      ; 17398 inferred, not run
  F39A  09 10     ORA #$10                      ; 1739A inferred, not run
  F39C  85 BA     STA $BA                       ; 1739C inferred, not run
  F39E  8A        TXA                           ; 1739E inferred, not run
  F39F  18        CLC                           ; 1739F inferred, not run
  F3A0  65 89     ADC $89                       ; 173A0 inferred, not run
  F3A2  85 B1     STA $B1                       ; 173A2 inferred, not run
  F3A4  A5 BC     LDA $BC                       ; 173A4 inferred, not run
  F3A6  F0 CD     BEQ loc_B2_F375               ; 173A6 inferred, not run
  F3A8  C6 BC     DEC $BC                       ; 173A8 inferred, not run
  F3AA  A6 BB     LDX $BB                       ; 173AA inferred, not run
  F3AC  C9 07     CMP #$07                      ; 173AC inferred, not run
  F3AE  B0 0B     BCS $F3BB                     ; 173AE inferred, not run
  F3B0  CA        DEX                           ; 173B0 inferred, not run
  F3B1  8A        TXA                           ; 173B1 inferred, not run
  F3B2  49 FF     EOR #$FF                      ; 173B2 inferred, not run
  F3B4  AA        TAX                           ; 173B4 inferred, not run
  F3B5  C9 80     CMP #$80                      ; 173B5 inferred, not run
  F3B7  6A        ROR A                         ; 173B7 inferred, not run
  F3B8  F0 01     BEQ $F3BB                     ; 173B8 inferred, not run
  F3BA  AA        TAX                           ; 173BA inferred, not run
  F3BB  8A        TXA                           ; 173BB inferred, not run
  F3BC  29 20     AND #$20                      ; 173BC inferred, not run
  F3BE  49 20     EOR #$20                      ; 173BE inferred, not run
  F3C0  85 BA     STA $BA                       ; 173C0 inferred, not run
  F3C2  A0 00     LDY #$00                      ; 173C2 inferred, not run
  F3C4  8A        TXA                           ; 173C4 inferred, not run
  F3C5  10 01     BPL $F3C8                     ; 173C5 inferred, not run
  F3C7  88        DEY                           ; 173C7 inferred, not run
  F3C8  4C 24 F5  JMP loc_B2_F524               ; 173C8 inferred, not run

loc_B2_F3CB:                    ; from 1737e
  F3CB  A5 10     LDA $10                       ; 173CB ×56331
  F3CD  C9 05     CMP #$05                      ; 173CD ×56331
  F3CF  D0 3E     BNE loc_B2_F40F               ; 173CF ×56331
  F3D1  20 FF F5  JSR sub_B2_F5FF               ; 173D1 ×1290
  F3D4  AD 84 04  LDA $0484                     ; 173D4 ×1290
  F3D7  AC C2 03  LDY $03C2                     ; 173D7 ×1290
  F3DA  F0 0D     BEQ loc_B2_F3E9               ; 173DA ×1290
  F3DC  85 15     STA $15                       ; 173DC inferred, not run
  F3DE  AD 85 04  LDA $0485                     ; 173DE inferred, not run
  F3E1  AC C1 03  LDY $03C1                     ; 173E1 inferred, not run
  F3E4  F0 03     BEQ loc_B2_F3E9               ; 173E4 inferred, not run
  F3E6  65 15     ADC $15                       ; 173E6 inferred, not run
  F3E8  6A        ROR A                         ; 173E8 inferred, not run

loc_B2_F3E9:                    ; from 173da
  F3E9  A0 00     LDY #$00                      ; 173E9 ×1290
  F3EB  C9 A8     CMP #$A8                      ; 173EB ×1290
  F3ED  B0 12     BCS loc_B2_F401               ; 173ED ×1290
  F3EF  C9 90     CMP #$90                      ; 173EF ×1290
  F3F1  90 03     BCC loc_B2_F3F6               ; 173F1 ×1290
  F3F3  18        CLC                           ; 173F3 ×49
  F3F4  90 0B     BCC loc_B2_F401               ; 173F4 ×49

loc_B2_F3F6:                    ; from 173f1
  F3F6  C9 70     CMP #$70                      ; 173F6 ×1241
  F3F8  B0 12     BCS loc_B2_F40C               ; 173F8 ×1241
  F3FA  88        DEY                           ; 173FA ×334
  F3FB  C9 58     CMP #$58                      ; 173FB ×334
  F3FD  A9 FE     LDA #$FE                      ; 173FD ×334
  F3FF  D0 02     BNE loc_B2_F403               ; 173FF ×334

loc_B2_F401:                    ; from 173f4
  F401  A9 01     LDA #$01                      ; 17401 ×49

loc_B2_F403:                    ; from 173ff
  F403  65 BC     ADC $BC                       ; 17403 ×383
  F405  85 BC     STA $BC                       ; 17405 ×383
  F407  98        TYA                           ; 17407 ×383
  F408  65 BD     ADC $BD                       ; 17408 ×383
  F40A  85 BD     STA $BD                       ; 1740A ×383

loc_B2_F40C:                    ; from 17417 173f8
  F40C  4C D3 F5  JMP loc_B2_F5D3               ; 1740C ×19150

loc_B2_F40F:                    ; from 173cf
  F40F  A5 B2     LDA $B2                       ; 1740F ×55041
  F411  F0 06     BEQ loc_B2_F419               ; 17411 ×55041
  F413  C6 B2     DEC $B2                       ; 17413 ×18440
  F415  C9 1E     CMP #$1E                      ; 17415 ×18440
  F417  F0 F3     BEQ loc_B2_F40C               ; 17417 ×18440

loc_B2_F419:                    ; from 17411
  F419  AD C1 03  LDA $03C1                     ; 17419 ×37181
  F41C  F0 28     BEQ $F446                     ; 1741C ×37181
  F41E  AD 84 04  LDA $0484                     ; 1741E ×37181
  F421  AE C2 03  LDX $03C2                     ; 17421 ×37181
  F424  F0 28     BEQ loc_B2_F44E               ; 17424 ×37181
  F426  A6 10     LDX $10                       ; 17426 inferred, not run
  F428  E0 04     CPX #$04                      ; 17428 inferred, not run
  F42A  F0 08     BEQ $F434                     ; 1742A inferred, not run
  F42C  E0 0B     CPX #$0B                      ; 1742C inferred, not run
  F42E  F0 04     BEQ $F434                     ; 1742E inferred, not run
  F430  E0 08     CPX #$08                      ; 17430 inferred, not run
  F432  D0 0B     BNE $F43F                     ; 17432 inferred, not run
  F434  85 15     STA $15                       ; 17434 inferred, not run
  F436  AD 85 04  LDA $0485                     ; 17436 inferred, not run
  F439  65 15     ADC $15                       ; 17439 inferred, not run
  F43B  6A        ROR A                         ; 1743B inferred, not run
  F43C  4C 4E F4  JMP loc_B2_F44E               ; 1743C inferred, not run
  F43F  CD 85 04  CMP $0485                     ; 1743F inferred, not run
  F442  B0 0A     BCS loc_B2_F44E               ; 17442 inferred, not run
  F444  90 05     BCC $F44B                     ; 17444 inferred, not run
  F446  AD C2 03  LDA $03C2                     ; 17446 inferred, not run
  F449  F0 C1     BEQ loc_B2_F40C               ; 17449 inferred, not run
  F44B  AD 85 04  LDA $0485                     ; 1744B inferred, not run

loc_B2_F44E:                    ; from 17424
  F44E  A2 03     LDX #$03                      ; 1744E ×37181
  F450  A4 10     LDY $10                       ; 17450 ×37181
  F452  C0 0D     CPY #$0D                      ; 17452 ×37181
  F454  F0 1B     BEQ loc_B2_F471               ; 17454 ×37181
  F456  C0 0A     CPY #$0A                      ; 17456 ×33697
  F458  F0 17     BEQ loc_B2_F471               ; 17458 ×33697
  F45A  C0 0B     CPY #$0B                      ; 1745A ×32144
  F45C  F0 13     BEQ loc_B2_F471               ; 1745C ×32144
  F45E  C0 07     CPY #$07                      ; 1745E ×24298
  F460  F0 0F     BEQ loc_B2_F471               ; 17460 ×24298
  F462  C0 08     CPY #$08                      ; 17462 ×22533
  F464  F0 0B     BEQ loc_B2_F471               ; 17464 ×22533
  F466  C0 09     CPY #$09                      ; 17466 ×19488
  F468  F0 07     BEQ loc_B2_F471               ; 17468 ×19488
  F46A  C0 04     CPY #$04                      ; 1746A ×16842
  F46C  F0 03     BEQ loc_B2_F471               ; 1746C ×16842
  F46E  4C 0C F5  JMP loc_B2_F50C               ; 1746E ×13788

loc_B2_F471:                    ; from 1745c 17454 1746c 17464 17468 17460 (+1)
  F471  48        PHA                           ; 17471 ×23393
  F472  85 15     STA $15                       ; 17472 ×23393
  F474  A5 EB     LDA $EB                       ; 17474 ×23393
  F476  F0 17     BEQ loc_B2_F48F               ; 17476 ×23393
  F478  68        PLA                           ; 17478 inferred, not run
  F479  A2 01     LDX #$01                      ; 17479 inferred, not run
  F47B  B5 29     LDA $29,X                     ; 1747B inferred, not run
  F47D  29 10     AND #$10                      ; 1747D inferred, not run
  F47F  09 01     ORA #$01                      ; 1747F inferred, not run
  F481  95 29     STA $29,X                     ; 17481 inferred, not run
  F483  B5 2B     LDA $2B,X                     ; 17483 inferred, not run
  F485  29 10     AND #$10                      ; 17485 inferred, not run
  F487  95 2B     STA $2B,X                     ; 17487 inferred, not run
  F489  CA        DEX                           ; 17489 inferred, not run
  F48A  10 EF     BPL $F47B                     ; 1748A inferred, not run
  F48C  4C AE F5  JMP $F5AE                     ; 1748C inferred, not run

loc_B2_F48F:                    ; from 17476
  F48F  A5 10     LDA $10                       ; 1748F ×23393
  F491  C9 0D     CMP #$0D                      ; 17491 ×23393
  F493  F0 0D     BEQ loc_B2_F4A2               ; 17493 ×23393
  F495  C9 0A     CMP #$0A                      ; 17495 ×19909
  F497  D0 36     BNE loc_B2_F4CF               ; 17497 ×19909
  F499  A5 88     LDA $88                       ; 17499 ×1553
  F49B  18        CLC                           ; 1749B ×1553
  F49C  65 8A     ADC $8A                       ; 1749C ×1553
  F49E  C9 0B     CMP #$0B                      ; 1749E ×1553
  F4A0  D0 04     BNE loc_B2_F4A6               ; 174A0 ×1553

loc_B2_F4A2:                    ; from 17493
  F4A2  68        PLA                           ; 174A2 ×3484
  F4A3  4C F8 F5  JMP loc_B2_F5F8               ; 174A3 ×3484

loc_B2_F4A6:                    ; from 174a0
  F4A6  20 FF F5  JSR sub_B2_F5FF               ; 174A6 ×1553
  F4A9  68        PLA                           ; 174A9 ×1553
  F4AA  20 F1 F7  JSR sub_B2_F7F1               ; 174AA ×1553
  F4AD  B9 84 04  LDA $0484,Y                   ; 174AD ×1553
  F4B0  A0 00     LDY #$00                      ; 174B0 ×1553
  F4B2  A2 04     LDX #$04                      ; 174B2 ×1553
  F4B4  C9 A0     CMP #$A0                      ; 174B4 ×1553
  F4B6  B0 6A     BCS loc_B2_F522               ; 174B6 ×1553
  F4B8  C9 90     CMP #$90                      ; 174B8 ×1490
  F4BA  A2 02     LDX #$02                      ; 174BA ×1490
  F4BC  B0 64     BCS loc_B2_F522               ; 174BC ×1490
  F4BE  A2 FC     LDX #$FC                      ; 174BE ×1239
  F4C0  A0 FF     LDY #$FF                      ; 174C0 ×1239
  F4C2  C9 60     CMP #$60                      ; 174C2 ×1239
  F4C4  90 5E     BCC loc_B2_F524               ; 174C4 ×1239
  F4C6  C9 70     CMP #$70                      ; 174C6 ×1011
  F4C8  A2 FE     LDX #$FE                      ; 174C8 ×1011
  F4CA  90 58     BCC loc_B2_F524               ; 174CA ×1011
  F4CC  4C D3 F5  JMP loc_B2_F5D3               ; 174CC ×971

loc_B2_F4CF:                    ; from 17497
  F4CF  C9 0B     CMP #$0B                      ; 174CF ×18356
  F4D1  F0 1A     BEQ loc_B2_F4ED               ; 174D1 ×18356
  F4D3  C9 0C     CMP #$0C                      ; 174D3 ×10510
  F4D5  F0 19     BEQ $F4F0                     ; 174D5 ×10510
  F4D7  A5 15     LDA $15                       ; 174D7 ×10510
  F4D9  C9 90     CMP #$90                      ; 174D9 ×10510
  F4DB  90 10     BCC loc_B2_F4ED               ; 174DB ×10510
  F4DD  A5 88     LDA $88                       ; 174DD ×2965
  F4DF  C9 02     CMP #$02                      ; 174DF ×2965
  F4E1  D0 0A     BNE loc_B2_F4ED               ; 174E1 ×2965
  F4E3  A5 87     LDA $87                       ; 174E3 inferred, not run
  F4E5  C9 3D     CMP #$3D                      ; 174E5 inferred, not run
  F4E7  90 04     BCC loc_B2_F4ED               ; 174E7 inferred, not run
  F4E9  68        PLA                           ; 174E9 inferred, not run
  F4EA  A9 80     LDA #$80                      ; 174EA inferred, not run
  F4EC  48        PHA                           ; 174EC inferred, not run

loc_B2_F4ED:                    ; from 174d1 174db 174e1
  F4ED  20 FF F5  JSR sub_B2_F5FF               ; 174ED ×18356
  F4F0  68        PLA                           ; 174F0 ×18356
  F4F1  A2 03     LDX #$03                      ; 174F1 ×18356
  F4F3  C9 90     CMP #$90                      ; 174F3 ×18356
  F4F5  B0 15     BCS loc_B2_F50C               ; 174F5 ×18356
  F4F7  A0 FF     LDY #$FF                      ; 174F7 ×14710
  F4F9  A2 FD     LDX #$FD                      ; 174F9 ×14710
  F4FB  C9 30     CMP #$30                      ; 174FB ×14710
  F4FD  90 25     BCC loc_B2_F524               ; 174FD ×14710
  F4FF  E8        INX                           ; 174FF ×14434
  F500  C9 60     CMP #$60                      ; 17500 ×14434
  F502  90 20     BCC loc_B2_F524               ; 17502 ×14434
  F504  E8        INX                           ; 17504 ×11836
  F505  C9 70     CMP #$70                      ; 17505 ×11836
  F507  90 1B     BCC loc_B2_F524               ; 17507 ×11836
  F509  4C D3 F5  JMP loc_B2_F5D3               ; 17509 ×10283

loc_B2_F50C:                    ; from 1746e 174f5
  F50C  A4 B2     LDY $B2                       ; 1750C ×17434
  F50E  D0 09     BNE loc_B2_F519               ; 1750E ×17434
  F510  C9 D0     CMP #$D0                      ; 17510 ×16874
  F512  B0 0E     BCS loc_B2_F522               ; 17512 ×16874
  F514  CA        DEX                           ; 17514 ×16594
  F515  C9 A0     CMP #$A0                      ; 17515 ×16594
  F517  B0 09     BCS loc_B2_F522               ; 17517 ×16594

loc_B2_F519:                    ; from 1750e
  F519  A2 01     LDX #$01                      ; 17519 ×15511
  F51B  C9 80     CMP #$80                      ; 1751B ×15511
  F51D  B0 03     BCS loc_B2_F522               ; 1751D ×15511
  F51F  4C D3 F5  JMP loc_B2_F5D3               ; 1751F ×11892

loc_B2_F522:                    ; from 1751d 17517 17512 174bc 174b6
  F522  A0 00     LDY #$00                      ; 17522 ×5856

loc_B2_F524:                    ; from 17502 17507 174fd 174c4 174ca
  F524  18        CLC                           ; 17524 ×10551

loc_B2_F525:                    ; from 17369
  F525  8A        TXA                           ; 17525 ×10976
  F526  65 87     ADC $87                       ; 17526 ×10976
  F528  85 87     STA $87                       ; 17528 ×10976
  F52A  98        TYA                           ; 1752A ×10976
  F52B  65 88     ADC $88                       ; 1752B ×10976
  F52D  85 88     STA $88                       ; 1752D ×10976
  F52F  C9 FF     CMP #$FF                      ; 1752F ×10976
  F531  D0 09     BNE loc_B2_F53C               ; 17531 ×10976
  F533  A9 00     LDA #$00                      ; 17533 ×4237
  F535  85 87     STA $87                       ; 17535 ×4237
  F537  85 88     STA $88                       ; 17537 ×4237

loc_B2_F539:                    ; from 17541
  F539  4C D3 F5  JMP loc_B2_F5D3               ; 17539 ×9113

loc_B2_F53C:                    ; from 17531
  F53C  A4 10     LDY $10                       ; 1753C ×6739
  F53E  D9 C6 F5  CMP $F5C6,Y                   ; 1753E ×6739
  F541  90 F6     BCC loc_B2_F539               ; 17541 ×6739
  F543  C0 0C     CPY #$0C                      ; 17543 ×1863
  F545  F0 58     BEQ $F59F                     ; 17545 ×1863
  F547  A9 00     LDA #$00                      ; 17547 ×1863
  F549  C0 0A     CPY #$0A                      ; 17549 ×1863
  F54B  B0 10     BCS $F55D                     ; 1754B ×1863
  F54D  A9 10     LDA #$10                      ; 1754D ×1863
  F54F  C0 09     CPY #$09                      ; 1754F ×1863
  F551  F0 06     BEQ loc_B2_F559               ; 17551 ×1863
  F553  C0 07     CPY #$07                      ; 17553 ×0
  F555  D0 0B     BNE $F562                     ; 17555 ×0
  F557  A9 30     LDA #$30                      ; 17557 ×0

loc_B2_F559:                    ; from 17551
  F559  C5 87     CMP $87                       ; 17559 ×1863
  F55B  B0 76     BCS loc_B2_F5D3               ; 1755B ×1863
  F55D  85 87     STA $87                       ; 1755D ×1815
  F55F  4C D3 F5  JMP loc_B2_F5D3               ; 1755F ×1815
  F562  A5 D1     LDA $D1                       ; 17562 ×0
  F564  F0 06     BEQ $F56C                     ; 17564 ×0
  F566  A5 EB     LDA $EB                       ; 17566 inferred, not run
  F568  D0 4A     BNE $F5B4                     ; 17568 inferred, not run
  F56A  F0 67     BEQ loc_B2_F5D3               ; 1756A inferred, not run
  F56C  C0 06     CPY #$06                      ; 1756C ×0
  F56E  F0 04     BEQ $F574                     ; 1756E ×0
  F570  C0 03     CPY #$03                      ; 17570 ×0
  F572  D0 2B     BNE $F59F                     ; 17572 ×0
  F574  A5 E4     LDA $E4                       ; 17574 inferred, not run
  F576  D0 5B     BNE loc_B2_F5D3               ; 17576 inferred, not run
  F578  A5 D5     LDA $D5                       ; 17578 inferred, not run
  F57A  C9 07     CMP #$07                      ; 1757A inferred, not run
  F57C  B0 55     BCS loc_B2_F5D3               ; 1757C inferred, not run
  F57E  A2 01     LDX #$01                      ; 1757E inferred, not run
  F580  B5 29     LDA $29,X                     ; 17580 inferred, not run
  F582  29 10     AND #$10                      ; 17582 inferred, not run
  F584  95 29     STA $29,X                     ; 17584 inferred, not run
  F586  B5 2B     LDA $2B,X                     ; 17586 inferred, not run
  F588  29 10     AND #$10                      ; 17588 inferred, not run
  F58A  95 2B     STA $2B,X                     ; 1758A inferred, not run
  F58C  A9 02     LDA #$02                      ; 1758C inferred, not run
  F58E  18        CLC                           ; 1758E inferred, not run
  F58F  7D FD 03  ADC $03FD,X                   ; 1758F inferred, not run
  F592  9D FD 03  STA $03FD,X                   ; 17592 inferred, not run
  F595  90 03     BCC $F59A                     ; 17595 inferred, not run
  F597  FE EE 03  INC $03EE,X                   ; 17597 inferred, not run
  F59A  CA        DEX                           ; 1759A inferred, not run
  F59B  10 E3     BPL $F580                     ; 1759B inferred, not run
  F59D  30 0F     BMI $F5AE                     ; 1759D inferred, not run
  F59F  B9 C6 F5  LDA $F5C6,Y                   ; 1759F ×0
  F5A2  85 88     STA $88                       ; 175A2 ×0
  F5A4  A9 00     LDA #$00                      ; 175A4 ×0
  F5A6  85 87     STA $87                       ; 175A6 ×0
  F5A8  A5 10     LDA $10                       ; 175A8 ×0
  F5AA  C9 08     CMP #$08                      ; 175AA ×0
  F5AC  F0 25     BEQ loc_B2_F5D3               ; 175AC ×0
  F5AE  A5 EB     LDA $EB                       ; 175AE inferred, not run
  F5B0  D0 02     BNE $F5B4                     ; 175B0 inferred, not run
  F5B2  A9 C0     LDA #$C0                      ; 175B2 inferred, not run
  F5B4  38        SEC                           ; 175B4 inferred, not run
  F5B5  E9 01     SBC #$01                      ; 175B5 inferred, not run
  F5B7  85 EB     STA $EB                       ; 175B7 inferred, not run
  F5B9  D0 18     BNE loc_B2_F5D3               ; 175B9 inferred, not run
  F5BB  A2 2A     LDX #$2A                      ; 175BB inferred, not run
  F5BD  A0 00     LDY #$00                      ; 175BD inferred, not run
  F5BF  84 D4     STY $D4                       ; 175BF inferred, not run
  F5C1  84 D5     STY $D5                       ; 175C1 inferred, not run
  F5C3  4C CB FF  JMP sub_B2_FFCB               ; 175C3 inferred, not run
  F5C6  .byte 00                                                ; 175C6
  F5C7  .byte 0A                                                ; 175C7 data, read by 1753e
  F5C8  .byte 00                                                ; 175C8
  F5C9  .byte FC 06                                             ; 175C9 data, read by 1753e
  F5CB  .byte 02                                                ; 175CB
  F5CC  .byte FD                                                ; 175CC data, read by 1753e
  F5CD  .byte 00                                                ; 175CD
  F5CE  .byte 01 00 06 05 59                                    ; 175CE data, read by 1753e

loc_B2_F5D3:                    ; from 1740c 1751f 17509 17539 1755f 17375 (+2)
  F5D3  A5 10     LDA $10                       ; 175D3 ×54792
  F5D5  C9 02     CMP #$02                      ; 175D5 ×54792
  F5D7  F0 22     BEQ loc_B2_F5FB               ; 175D7 ×54792
  F5D9  C9 05     CMP #$05                      ; 175D9 ×54792
  F5DB  F0 1E     BEQ loc_B2_F5FB               ; 175DB ×54792
  F5DD  C9 07     CMP #$07                      ; 175DD ×53502
  F5DF  F0 1A     BEQ loc_B2_F5FB               ; 175DF ×53502
  F5E1  C9 09     CMP #$09                      ; 175E1 ×51737
  F5E3  F0 16     BEQ loc_B2_F5FB               ; 175E3 ×51737
  F5E5  C9 04     CMP #$04                      ; 175E5 ×49091
  F5E7  F0 12     BEQ loc_B2_F5FB               ; 175E7 ×49091
  F5E9  C9 0A     CMP #$0A                      ; 175E9 ×46037
  F5EB  F0 0E     BEQ loc_B2_F5FB               ; 175EB ×46037
  F5ED  C9 0B     CMP #$0B                      ; 175ED ×44484
  F5EF  F0 0A     BEQ loc_B2_F5FB               ; 175EF ×44484
  F5F1  C9 08     CMP #$08                      ; 175F1 ×36638
  F5F3  F0 06     BEQ loc_B2_F5FB               ; 175F3 ×36638
  F5F5  20 6F F7  JSR sub_B2_F76F               ; 175F5 ×33593

loc_B2_F5F8:                    ; from 174a3 1727e
  F5F8  20 A6 F7  JSR sub_B2_F7A6               ; 175F8 ×37584

loc_B2_F5FB:                    ; from 175ef 175e7 175f3 175e3 175df 175eb (+1)
  F5FB  60        RTS                           ; 175FB ×58783

loc_B2_F5FC:                    ; from 17601
  F5FC  C6 B2     DEC $B2                       ; 175FC ×844

loc_B2_F5FE:                    ; from 17622
  F5FE  60        RTS                           ; 175FE ×1245

sub_B2_F5FF:                    ; from 174ed 174a6 173d1
  F5FF  A5 B2     LDA $B2                       ; 175FF ×21199
  F601  D0 F9     BNE loc_B2_F5FC               ; 17601 ×21199
  F603  A2 00     LDX #$00                      ; 17603 ×20355
  F605  AD 93 04  LDA $0493                     ; 17605 ×20355
  F608  38        SEC                           ; 17608 ×20355
  F609  ED 75 04  SBC $0475                     ; 17609 ×20355
  F60C  90 F0     BCC loc_B2_F5FE               ; 1760C ×20355
  F60E  85 15     STA $15                       ; 1760E ×20355
  F610  85 16     STA $16                       ; 17610 ×20355
  F612  A5 12     LDA $12                       ; 17612 ×20355
  F614  0D 75 05  ORA $0575                     ; 17614 ×20355
  F617  0D A3 04  ORA $04A3                     ; 17617 ×20355
  F61A  10 0A     BPL $F626                     ; 1761A ×20355
  F61C  AD A2 04  LDA $04A2                     ; 1761C ×20355
  F61F  0D 74 05  ORA $0574                     ; 1761F ×20355
  F622  30 DA     BMI loc_B2_F5FE               ; 17622 ×20355
  F624  10 2D     BPL loc_B2_F653               ; 17624 ×19954
  F626  AD CF 05  LDA $05CF                     ; 17626 inferred, not run
  F629  D0 28     BNE loc_B2_F653               ; 17629 inferred, not run
  F62B  E8        INX                           ; 1762B inferred, not run
  F62C  AD 94 04  LDA $0494                     ; 1762C inferred, not run
  F62F  38        SEC                           ; 1762F inferred, not run
  F630  ED 76 04  SBC $0476                     ; 17630 inferred, not run
  F633  90 C9     BCC loc_B2_F5FE               ; 17633 inferred, not run
  F635  A4 11     LDY $11                       ; 17635 inferred, not run
  F637  30 16     BMI $F64F                     ; 17637 inferred, not run
  F639  AC 74 05  LDY $0574                     ; 17639 inferred, not run
  F63C  30 11     BMI $F64F                     ; 1763C inferred, not run
  F63E  AC CE 05  LDY $05CE                     ; 1763E inferred, not run
  F641  D0 0C     BNE $F64F                     ; 17641 inferred, not run
  F643  AC A2 04  LDY $04A2                     ; 17643 inferred, not run
  F646  30 B6     BMI loc_B2_F5FE               ; 17646 inferred, not run
  F648  C5 15     CMP $15                       ; 17648 inferred, not run
  F64A  90 03     BCC $F64F                     ; 1764A inferred, not run
  F64C  CA        DEX                           ; 1764C inferred, not run
  F64D  A5 15     LDA $15                       ; 1764D inferred, not run
  F64F  85 15     STA $15                       ; 1764F inferred, not run
  F651  85 16     STA $16                       ; 17651 inferred, not run

loc_B2_F653:                    ; from 17624
  F653  86 17     STX $17                       ; 17653 ×19954
  F655  8A        TXA                           ; 17655 ×19954
  F656  49 01     EOR #$01                      ; 17656 ×19954
  F658  AA        TAX                           ; 17658 ×19954
  F659  B5 11     LDA $11,X                     ; 17659 ×19954
  F65B  1D A2 04  ORA $04A2,X                   ; 1765B ×19954
  F65E  1D 74 05  ORA $0574,X                   ; 1765E ×19954
  F661  30 0D     BMI loc_B2_F670               ; 17661 ×19954
  F663  BD 93 04  LDA $0493,X                   ; 17663 inferred, not run
  F666  38        SEC                           ; 17666 inferred, not run
  F667  FD 75 04  SBC $0475,X                   ; 17667 inferred, not run
  F66A  B0 02     BCS $F66E                     ; 1766A inferred, not run
  F66C  A9 00     LDA #$00                      ; 1766C inferred, not run
  F66E  85 16     STA $16                       ; 1766E inferred, not run

loc_B2_F670:                    ; from 17661
  F670  A4 10     LDY $10                       ; 17670 ×19954
  F672  C0 04     CPY #$04                      ; 17672 ×19954
  F674  F0 08     BEQ loc_B2_F67E               ; 17674 ×19954
  F676  C0 08     CPY #$08                      ; 17676 ×16900
  F678  F0 04     BEQ loc_B2_F67E               ; 17678 ×16900
  F67A  C0 0A     CPY #$0A                      ; 1767A ×13855
  F67C  D0 13     BNE loc_B2_F691               ; 1767C ×13855

loc_B2_F67E:                    ; from 17674 17678
  F67E  A5 15     LDA $15                       ; 1767E ×7266
  F680  C5 16     CMP $16                       ; 17680 ×7266
  F682  F0 0D     BEQ loc_B2_F691               ; 17682 ×7266
  F684  65 16     ADC $16                       ; 17684 inferred, not run
  F686  6A        ROR A                         ; 17686 inferred, not run
  F687  C9 70     CMP #$70                      ; 17687 inferred, not run
  F689  90 02     BCC $F68D                     ; 17689 inferred, not run
  F68B  69 30     ADC #$30                      ; 1768B inferred, not run
  F68D  85 15     STA $15                       ; 1768D inferred, not run
  F68F  85 16     STA $16                       ; 1768F inferred, not run

loc_B2_F691:                    ; from 1767c 17682
  F691  A5 10     LDA $10                       ; 17691 ×19954
  F693  C9 0A     CMP #$0A                      ; 17693 ×19954
  F695  D0 0A     BNE loc_B2_F6A1               ; 17695 ×19954
  F697  AE BC 05  LDX $05BC                     ; 17697 ×1167
  F69A  BD 93 04  LDA $0493,X                   ; 1769A ×1167
  F69D  85 15     STA $15                       ; 1769D ×1167
  F69F  85 16     STA $16                       ; 1769F ×1167

loc_B2_F6A1:                    ; from 17695
  F6A1  C9 05     CMP #$05                      ; 176A1 ×19954
  F6A3  F0 0D     BEQ loc_B2_F6B2               ; 176A3 ×19954
  F6A5  C9 07     CMP #$07                      ; 176A5 ×19508
  F6A7  D0 14     BNE loc_B2_F6BD               ; 176A7 ×19508
  F6A9  A5 B1     LDA $B1                       ; 176A9 ×1765
  F6AB  29 0F     AND #$0F                      ; 176AB ×1765
  F6AD  F0 03     BEQ loc_B2_F6B2               ; 176AD ×1765
  F6AF  4C A6 F7  JMP sub_B2_F7A6               ; 176AF inferred, not run

loc_B2_F6B2:                    ; from 176ad 176a3
  F6B2  A5 16     LDA $16                       ; 176B2 ×2211
  F6B4  C9 D8     CMP #$D8                      ; 176B4 ×2211
  F6B6  90 05     BCC loc_B2_F6BD               ; 176B6 ×2211
  F6B8  A9 05     LDA #$05                      ; 176B8 inferred, not run
  F6BA  85 B2     STA $B2                       ; 176BA inferred, not run

loc_B2_F6BC:                    ; from 176d3
  F6BC  60        RTS                           ; 176BC ×134

loc_B2_F6BD:                    ; from 176a7 176b6
  F6BD  A6 17     LDX $17                       ; 176BD ×19954
  F6BF  A5 10     LDA $10                       ; 176BF ×19954
  F6C1  C9 09     CMP #$09                      ; 176C1 ×19954
  F6C3  F0 36     BEQ loc_B2_F6FB               ; 176C3 ×19954
  F6C5  A5 15     LDA $15                       ; 176C5 ×17308
  F6C7  C9 70     CMP #$70                      ; 176C7 ×17308
  F6C9  B0 30     BCS loc_B2_F6FB               ; 176C9 ×17308
  F6CB  A4 8A     LDY $8A                       ; 176CB ×156
  F6CD  10 06     BPL loc_B2_F6D5               ; 176CD ×156
  F6CF  A4 89     LDY $89                       ; 176CF ×140
  F6D1  C0 E0     CPY #$E0                      ; 176D1 ×140
  F6D3  90 E7     BCC loc_B2_F6BC               ; 176D3 ×140

loc_B2_F6D5:                    ; from 176cd
  F6D5  A0 FF     LDY #$FF                      ; 176D5 ×22
  F6D7  A6 10     LDX $10                       ; 176D7 ×22
  F6D9  E0 0A     CPX #$0A                      ; 176D9 ×22
  F6DB  D0 0A     BNE loc_B2_F6E7               ; 176DB ×22
  F6DD  A2 FC     LDX #$FC                      ; 176DD ×5
  F6DF  C9 60     CMP #$60                      ; 176DF ×5
  F6E1  90 15     BCC loc_B2_F6F8               ; 176E1 ×5
  F6E3  A2 FE     LDX #$FE                      ; 176E3 ×0
  F6E5  D0 11     BNE loc_B2_F6F8               ; 176E5 ×0

loc_B2_F6E7:                    ; from 176db
  F6E7  A2 FF     LDX #$FF                      ; 176E7 ×17
  F6E9  C9 50     CMP #$50                      ; 176E9 ×17
  F6EB  B0 0B     BCS loc_B2_F6F8               ; 176EB ×17
  F6ED  CA        DEX                           ; 176ED ×11
  F6EE  C9 40     CMP #$40                      ; 176EE ×11
  F6F0  B0 06     BCS loc_B2_F6F8               ; 176F0 ×11
  F6F2  CA        DEX                           ; 176F2 ×11
  F6F3  C9 20     CMP #$20                      ; 176F3 ×11
  F6F5  B0 01     BCS loc_B2_F6F8               ; 176F5 ×11
  F6F7  CA        DEX                           ; 176F7 ×11

loc_B2_F6F8:                    ; from 176eb 176e1
  F6F8  20 CD F7  JSR sub_B2_F7CD               ; 176F8 ×22

loc_B2_F6FB:                    ; from 176c9 176c3
  F6FB  A5 10     LDA $10                       ; 176FB ×19820
  F6FD  C9 0A     CMP #$0A                      ; 176FD ×19820
  F6FF  D0 17     BNE loc_B2_F718               ; 176FF ×19820
  F701  A5 8A     LDA $8A                       ; 17701 ×1167
  F703  C9 05     CMP #$05                      ; 17703 ×1167
  F705  F0 10     BEQ $F717                     ; 17705 ×1167
  F707  A5 16     LDA $16                       ; 17707 ×1167
  F709  A0 00     LDY #$00                      ; 17709 ×1167
  F70B  A2 04     LDX #$04                      ; 1770B ×1167
  F70D  C9 90     CMP #$90                      ; 1770D ×1167
  F70F  B0 53     BCS loc_B2_F764               ; 1770F ×1167
  F711  A2 02     LDX #$02                      ; 17711 ×1167
  F713  C9 80     CMP #$80                      ; 17713 ×1167
  F715  B0 4D     BCS loc_B2_F764               ; 17715 ×1167
  F717  60        RTS                           ; 17717 ×1162

loc_B2_F718:                    ; from 176ff
  F718  C9 07     CMP #$07                      ; 17718 ×18653
  F71A  F0 47     BEQ loc_B2_F763               ; 1771A ×18653
  F71C  C9 05     CMP #$05                      ; 1771C ×16888
  F71E  F0 43     BEQ loc_B2_F763               ; 1771E ×16888
  F720  C9 08     CMP #$08                      ; 17720 ×16442
  F722  D0 08     BNE loc_B2_F72C               ; 17722 ×16442
  F724  A5 8A     LDA $8A                       ; 17724 ×3045
  F726  C9 02     CMP #$02                      ; 17726 ×3045
  F728  F0 39     BEQ loc_B2_F763               ; 17728 ×3045
  F72A  D0 1E     BNE loc_B2_F74A               ; 1772A ×102

loc_B2_F72C:                    ; from 17722
  F72C  C9 09     CMP #$09                      ; 1772C ×13397
  F72E  D0 1A     BNE loc_B2_F74A               ; 1772E ×13397
  F730  A5 15     LDA $15                       ; 17730 ×2646
  F732  C5 16     CMP $16                       ; 17732 ×2646
  F734  90 02     BCC $F738                     ; 17734 ×2646
  F736  85 16     STA $16                       ; 17736 ×2646
  F738  A5 8A     LDA $8A                       ; 17738 ×2646
  F73A  C9 34     CMP #$34                      ; 1773A ×2646
  F73C  D0 03     BNE loc_B2_F741               ; 1773C ×2646
  F73E  4C A6 F7  JMP sub_B2_F7A6               ; 1773E inferred, not run

loc_B2_F741:                    ; from 1773c
  F741  A5 16     LDA $16                       ; 17741 ×2646
  F743  18        CLC                           ; 17743 ×2646
  F744  69 30     ADC #$30                      ; 17744 ×2646
  F746  B0 02     BCS loc_B2_F74A               ; 17746 ×2646
  F748  85 16     STA $16                       ; 17748 ×2646

loc_B2_F74A:                    ; from 1772e 1772a
  F74A  A5 16     LDA $16                       ; 1774A ×13499
  F74C  A0 00     LDY #$00                      ; 1774C ×13499
  F74E  A2 04     LDX #$04                      ; 1774E ×13499
  F750  C9 C2     CMP #$C2                      ; 17750 ×13499
  F752  B0 10     BCS loc_B2_F764               ; 17752 ×13499
  F754  CA        DEX                           ; 17754 ×13437
  F755  C9 BE     CMP #$BE                      ; 17755 ×13437
  F757  B0 0B     BCS loc_B2_F764               ; 17757 ×13437
  F759  CA        DEX                           ; 17759 ×13399
  F75A  C9 BA     CMP #$BA                      ; 1775A ×13399
  F75C  B0 06     BCS loc_B2_F764               ; 1775C ×13399
  F75E  CA        DEX                           ; 1775E ×13353
  F75F  C9 B8     CMP #$B8                      ; 1775F ×13353
  F761  B0 01     BCS loc_B2_F764               ; 17761 ×13353

loc_B2_F763:                    ; from 17728 1771a 1771e
  F763  60        RTS                           ; 17763 ×18408

loc_B2_F764:                    ; from 17761 17752 1775c 17757 17715
  F764  4C CD F7  JMP sub_B2_F7CD               ; 17764 ×250

loc_B2_F767:                    ; from 17775
  F767  C0 04     CPY #$04                      ; 17767 ×780
  F769  B0 10     BCS loc_B2_F77B               ; 17769 ×780
  F76B  A0 0B     LDY #$0B                      ; 1776B ×2
  F76D  84 B0     STY $B0                       ; 1776D ×2

sub_B2_F76F:                    ; from 175f5
  F76F  A4 B0     LDY $B0                       ; 1776F ×33595
  F771  A5 10     LDA $10                       ; 17771 ×33595
  F773  C9 0C     CMP #$0C                      ; 17773 ×33595
  F775  F0 F0     BEQ loc_B2_F767               ; 17775 ×33595
  F777  C9 02     CMP #$02                      ; 17777 ×32815
  F779  B0 17     BCS loc_B2_F792               ; 17779 ×32815

loc_B2_F77B:                    ; from 17769
  F77B  A5 87     LDA $87                       ; 1777B ×26322
  F77D  38        SEC                           ; 1777D ×26322
  F77E  F9 94 F7  SBC $F794,Y                   ; 1777E ×26322
  F781  A5 88     LDA $88                       ; 17781 ×26322
  F783  F9 93 F7  SBC $F793,Y                   ; 17783 ×26322
  F786  90 0A     BCC loc_B2_F792               ; 17786 ×26322
  F788  B9 95 F7  LDA $F795,Y                   ; 17788 inferred, not run
  F78B  85 B1     STA $B1                       ; 1778B inferred, not run
  F78D  C8        INY                           ; 1778D inferred, not run
  F78E  C8        INY                           ; 1778E inferred, not run
  F78F  C8        INY                           ; 1778F inferred, not run
  F790  84 B0     STY $B0                       ; 17790 inferred, not run

loc_B2_F792:                    ; from 17786 17779
  F792  60        RTS                           ; 17792 ×33593
  F793  .byte 01 D0                                             ; 17793 data, read by 17783 1777e
  F795  .byte 60 03 10 40 04 A0 60 FF FF                        ; 17795
  F79E  .byte 10 F0                                             ; 1779E data, read by 17783 1777e
  F7A0  .byte 10 24 50 DC FF FF                                 ; 177A0

sub_B2_F7A6:                    ; from 175f8
  F7A6  A5 C8     LDA $C8                       ; 177A6 ×37584
  F7A8  F0 0C     BEQ loc_B2_F7B6               ; 177A8 ×37584
  F7AA  C6 C8     DEC $C8                       ; 177AA ×1520
  F7AC  C9 28     CMP #$28                      ; 177AC ×1520
  F7AE  90 06     BCC loc_B2_F7B6               ; 177AE ×1520
  F7B0  A2 02     LDX #$02                      ; 177B0 ×1130
  F7B2  A0 00     LDY #$00                      ; 177B2 ×1130
  F7B4  F0 17     BEQ sub_B2_F7CD               ; 177B4 ×1130

loc_B2_F7B6:                    ; from 177a8 177ae
  F7B6  A5 89     LDA $89                       ; 177B6 ×36454
  F7B8  38        SEC                           ; 177B8 ×36454
  F7B9  E5 B1     SBC $B1                       ; 177B9 ×36454
  F7BB  F0 33     BEQ loc_B2_F7F0               ; 177BB ×36454
  F7BD  A2 FF     LDX #$FF                      ; 177BD ×967
  F7BF  A0 FF     LDY #$FF                      ; 177BF ×967
  F7C1  2A        ROL A                         ; 177C1 ×967
  F7C2  90 09     BCC sub_B2_F7CD               ; 177C2 ×967
  F7C4  C8        INY                           ; 177C4 ×967
  F7C5  A2 01     LDX #$01                      ; 177C5 ×967
  F7C7  D0 04     BNE sub_B2_F7CD               ; 177C7 ×967
  F7C9  A2 FF     LDX #$FF                      ; 177C9 inferred, not run
  F7CB  A0 FF     LDY #$FF                      ; 177CB inferred, not run

sub_B2_F7CD:                    ; from 177b4 177c7 17764 176f8
  F7CD  8A        TXA                           ; 177CD ×2369
  F7CE  18        CLC                           ; 177CE ×2369
  F7CF  65 89     ADC $89                       ; 177CF ×2369
  F7D1  85 89     STA $89                       ; 177D1 ×2369
  F7D3  98        TYA                           ; 177D3 ×2369
  F7D4  65 8A     ADC $8A                       ; 177D4 ×2369
  F7D6  85 8A     STA $8A                       ; 177D6 ×2369
  F7D8  18        CLC                           ; 177D8 ×2369
  F7D9  8A        TXA                           ; 177D9 ×2369
  F7DA  10 0A     BPL loc_B2_F7E6               ; 177DA ×2369
  F7DC  65 83     ADC $83                       ; 177DC ×22
  F7DE  C9 F0     CMP #$F0                      ; 177DE ×22
  F7E0  90 0C     BCC loc_B2_F7EE               ; 177E0 ×22
  F7E2  E9 10     SBC #$10                      ; 177E2 ×0
  F7E4  B0 08     BCS loc_B2_F7EE               ; 177E4 ×0

loc_B2_F7E6:                    ; from 177da
  F7E6  65 83     ADC $83                       ; 177E6 ×2347
  F7E8  C9 F0     CMP #$F0                      ; 177E8 ×2347
  F7EA  90 02     BCC loc_B2_F7EE               ; 177EA ×2347
  F7EC  69 0F     ADC #$0F                      ; 177EC ×11

loc_B2_F7EE:                    ; from 177ea 177e0
  F7EE  85 83     STA $83                       ; 177EE ×2369

loc_B2_F7F0:                    ; from 177bb
  F7F0  60        RTS                           ; 177F0 ×37856

sub_B2_F7F1:                    ; from 174aa
  F7F1  A2 01     LDX #$01                      ; 177F1 ×1553

loc_B2_F7F3:                    ; from 1781c
  F7F3  BD B4 05  LDA $05B4,X                   ; 177F3 ×3106
  F7F6  5D FD 03  EOR $03FD,X                   ; 177F6 ×3106
  F7F9  85 15     STA $15                       ; 177F9 ×3106
  F7FB  BD B6 05  LDA $05B6,X                   ; 177FB ×3106
  F7FE  5D 1B 04  EOR $041B,X                   ; 177FE ×3106
  F801  05 15     ORA $15                       ; 17801 ×3106
  F803  29 E0     AND #$E0                      ; 17803 ×3106
  F805  F0 08     BEQ loc_B2_F80F               ; 17805 ×3106
  F807  FE B8 05  INC $05B8,X                   ; 17807 ×47
  F80A  D0 03     BNE loc_B2_F80F               ; 1780A ×47
  F80C  FE BA 05  INC $05BA,X                   ; 1780C inferred, not run

loc_B2_F80F:                    ; from 17805 1780a
  F80F  BD FD 03  LDA $03FD,X                   ; 1780F ×3106
  F812  9D B4 05  STA $05B4,X                   ; 17812 ×3106
  F815  BD 1B 04  LDA $041B,X                   ; 17815 ×3106
  F818  9D B6 05  STA $05B6,X                   ; 17818 ×3106
  F81B  CA        DEX                           ; 1781B ×3106
  F81C  10 D5     BPL loc_B2_F7F3               ; 1781C ×3106
  F81E  A0 01     LDY #$01                      ; 1781E ×1553
  F820  AD B8 05  LDA $05B8                     ; 17820 ×1553
  F823  38        SEC                           ; 17823 ×1553
  F824  ED B9 05  SBC $05B9                     ; 17824 ×1553
  F827  85 15     STA $15                       ; 17827 ×1553
  F829  AD BA 05  LDA $05BA                     ; 17829 ×1553
  F82C  ED BB 05  SBC $05BB                     ; 1782C ×1553
  F82F  90 0A     BCC loc_B2_F83B               ; 1782F ×1553
  F831  88        DEY                           ; 17831 ×1553
  F832  05 15     ORA $15                       ; 17832 ×1553
  F834  C9 01     CMP #$01                      ; 17834 ×1553
  F836  B0 03     BCS loc_B2_F83B               ; 17836 ×1553
  F838  AC BC 05  LDY $05BC                     ; 17838 inferred, not run

loc_B2_F83B:                    ; from 17836
  F83B  8C BC 05  STY $05BC                     ; 1783B ×1553
  F83E  60        RTS                           ; 1783E ×1553
  F83F  .byte A9 00 9D C1 03 60 A6 82 A5 0B 29 07 D0 33 A5 95   ; 1783F
  F84F  .byte C9 80 D0 2D FE DE 04 BC DE 04 B9 23 80 85 15 30   ; 1784F
  F85F  .byte DF C0 03 B0 1D A0 0B B9 55 00 38 E5 15 B0 02 A9   ; 1785F
  F86F  .byte 0F 99 55 00 88 D0 F0 A9 84 85 95 A9 00 85 CB A6   ; 1786F
  F87F  .byte 82 60 BC EE 03 A2 0F B9 91 F8 95 55 88 CA 10 F7   ; 1787F
  F88F  .byte 30 D3 0F 06 26 36 0F 07 05 15 0F 06 00 10 0F 04   ; 1788F
  F89F  .byte 14 24 0F 07 17 37 0F 0F 07 17 0F 07 14 34 0F 05   ; 1789F
  F8AF  .byte 16 26                                             ; 178AF
  F8B1  .byte 6A B1 6B F1 E2 FC B0 7F EB 07 83 FC AE 1F 0F F0   ; 178B1 data, read by 17a1c
  F8C1  .byte 5C 3F 0F F0 5C 3F 0F F0 5C 3F 1E E0 B8 7F 3A C1   ; 178C1 data, read by 17a1c
  F8D1  .byte C3 FC 73 3C DB 0C A8 10 D5 38 35 F8 F1 FE 5C 3F   ; 178D1 data, read by 17a1c
  F8E1  .byte 3A C1 E0 FF EB 07 83 FC D7 0F 03 FC D7 0F 03 FC   ; 178E1 data, read by 17a1c
  F8F1  .byte D7 0F 07 F8 AE 1F 1D E0 61 FE DD 0E ED 06 D0 08   ; 178F1 data, read by 17a1c
  F901  .byte 8A 5C 9A 7C F8 7F D6 0F 1D E0 70 FF 75 83 C0 FF   ; 17901 data, read by 17a1c
  F911  .byte F5 03 C0 FF F5 03 C0 FF F5 03 C1 FE D7 0F 07 F8   ; 17911 data, read by 17a1c
  F921  .byte 58 3F 6A 87 F4 03 D0 08 9D 4E 4D 3E 7C 3F 6B 87   ; 17921 data, read by 17a1c
  F931  .byte 87 F8 5C 3F 1D E0 70 FF 3D C0 70 FF 3D C0 70 FF   ; 17931 data, read by 17a1c
  F941  .byte 3D C0 70 FF 75 83 C3 FC AC 1F 35 C3 7A 81 60 88   ; 17941 data, read by 17a1c
  F951  .byte CE 27 A7 1F D6 0F 1B E1 E1 FE D7 0F 07 F8 5C 3F   ; 17951 data, read by 17a1c
  F961  .byte 0F F0 5C 3F 0F F0 5C 3F 0F F0 5C 3F 1D E0 70 FF   ; 17961 data, read by 17a1c
  F971  .byte EB 07 1D E0 5D E0 34 C0 D7 63 53 8F AB C7 0D F0   ; 17971 data, read by 17a1c
  F981  .byte 70 FF 75 83 C1 FE D7 0F 03 FC D7 0F 03 FC D7 0F   ; 17981 data, read by 17a1c
  F991  .byte 03 FC D7 0F 07 F8 58 3F 75 83 8E F0 AE 70 B0 40   ; 17991 data, read by 17a1c
  F9A1  .byte D7 63 2B C7 D5 E3 87 F8 5C 3F 3A C1 E0 FF F5 03   ; 179A1 data, read by 17a1c
  F9B1  .byte C0 FF F5 03 C0 FF F5 03 C1 FE EB 07 83 FC AC 1F   ; 179B1 data, read by 17a1c
  F9C1  .byte 1D E0 C7 F8 57 38 58 20 2B B1 97 E3 CD F0 61 FE   ; 179C1 data, read by 17a1c
  F9D1  .byte AE 1F 0E F0 B8 7F 3D C0 70 FF 3D C0 70 FF 3D C0   ; 179D1 data, read by 17a1c
  F9E1  .byte 70 FF 7A 81 E0 FF EB 07 0E F0 E7 78 AB 1C A8 10   ; 179E1 data, read by 17a1c
  F9F1  .byte F9 F9 F9 F9 F9 F9 F8 F8 C9 A1 79 51 29 01 D9 B1   ; 179F1 data, read by 17a15 17a10

loc_B2_FA01:                    ; from 17e05
  FA01  A5 BB     LDA $BB                       ; 17A01 ×1290
  FA03  45 BC     EOR $BC                       ; 17A03 ×1290
  FA05  4A        LSR A                         ; 17A05 ×1290
  FA06  F0 23     BEQ loc_B2_FA2B               ; 17A06 ×1290
  FA08  A5 BC     LDA $BC                       ; 17A08 ×236
  FA0A  85 BB     STA $BB                       ; 17A0A ×236
  FA0C  4A        LSR A                         ; 17A0C ×236
  FA0D  29 07     AND #$07                      ; 17A0D ×236
  FA0F  A8        TAY                           ; 17A0F ×236
  FA10  B9 F9 F9  LDA $F9F9,Y                   ; 17A10 ×236
  FA13  85 19     STA $19                       ; 17A13 ×236
  FA15  B9 F1 F9  LDA $F9F1,Y                   ; 17A15 ×236
  FA18  85 1A     STA $1A                       ; 17A18 ×236
  FA1A  A0 00     LDY #$00                      ; 17A1A ×236

loc_B2_FA1C:                    ; from 17a24
  FA1C  B1 19     LDA ($19),Y                   ; 17A1C ×9440
  FA1E  99 00 07  STA $0700,Y                   ; 17A1E ×9440
  FA21  C8        INY                           ; 17A21 ×9440
  FA22  C0 28     CPY #$28                      ; 17A22 ×9440
  FA24  D0 F6     BNE loc_B2_FA1C               ; 17A24 ×9440
  FA26  4C 08 FE  JMP loc_B2_FE08               ; 17A26 ×236
  FA29  .byte 85 CC                                             ; 17A29

loc_B2_FA2B:                    ; from 17a06
  FA2B  4C 08 FE  JMP loc_B2_FE08               ; 17A2B ×1054
  FA2E  .byte FA                                                ; 17A2E
  FA2F  .byte B5 9A 95 9A 95 90 FF FF 01 81 FF A9 55 A9 55 AB   ; 17A2F data, read by 17b52
  FA3F  .byte 57 AF 5F BF 7F FE FD FA                           ; 17A3F data, read by 17b52
  FA47  .byte B5 9A 95 9A 95 90 FF 8F                           ; 17A47
  FA4F  .byte CF EF EF EF EF EF FF FF FF 7F 01 FF FF FF FF FF   ; 17A4F data, read by 17b58
  FA5F  .byte FF FE FC F8 F1 E3 C7 8F                           ; 17A5F data, read by 17b58
  FA67  .byte CF EF EF EF EF EF FF                              ; 17A67
  FA6E  .byte F2 12 D2 52 52 52 D2 12 F2 12 D2 52 52 52 D2      ; 17A6E data, read by 17af2
  FA7D  .byte 12                                                ; 17A7D
  FA7E  .byte 04 E4 E4 84 84 84 04 04 04 E4 E4 84 84 84 04      ; 17A7E data, read by 17af8
  FA8D  .byte 04                                                ; 17A8D
  FA8E  .byte 8F 88 8B 8A 8A 8A 8A 88 8F 88 8B 8A 8A 8A 8A      ; 17A8E data, read by 17af2
  FA9D  .byte 88                                                ; 17A9D
  FA9E  .byte 60 67 67 67 67 67 67 66 60 67 67 67 67 67 67      ; 17A9E data, read by 17af8
  FAAD  .byte 66                                                ; 17AAD
  FAAE  .byte F3 E7 CF 9F 3F 7E FC F9 F3 E7 CF 9F 3F 7E FC      ; 17AAE data, read by 17af2
  FABD  .byte F9                                                ; 17ABD
  FABE  .byte 3F 7E FC F9 F3 E7 CF 9F 3F 7E FC F9 F3 E7 CF      ; 17ABE data, read by 17af8
  FACD  .byte 9F                                                ; 17ACD
  FACE  .byte 00 03 3F 23 23 23 7F 7F 00 7D 7D 79 79 61 01 7F   ; 17ACE data, read by 17ba3
  FADE  .byte FF 81 BD A5 A5 BD 81 FF 00 7F 7F 7B 7B 63 7F 7F   ; 17ADE data, read by 17ba3

sub_B2_FAEE:                    ; from 17b85 17b13 17c07
  FAEE  A9 08     LDA #$08                      ; 17AEE ×6631
  FAF0  85 15     STA $15                       ; 17AF0 ×6631

loc_B2_FAF2:                    ; from 17b02
  FAF2  B9 6E FA  LDA $FA6E,Y                   ; 17AF2 ×53048
  FAF5  9D B0 06  STA $06B0,X                   ; 17AF5 ×53048
  FAF8  B9 7E FA  LDA $FA7E,Y                   ; 17AF8 ×53048
  FAFB  9D B8 06  STA $06B8,X                   ; 17AFB ×53048
  FAFE  E8        INX                           ; 17AFE ×53048
  FAFF  C8        INY                           ; 17AFF ×53048
  FB00  C6 15     DEC $15                       ; 17B00 ×53048
  FB02  D0 EE     BNE loc_B2_FAF2               ; 17B02 ×53048
  FB04  8A        TXA                           ; 17B04 ×6631
  FB05  18        CLC                           ; 17B05 ×6631
  FB06  69 08     ADC #$08                      ; 17B06 ×6631
  FB08  AA        TAX                           ; 17B08 ×6631
  FB09  98        TYA                           ; 17B09 ×6631
  FB0A  69 18     ADC #$18                      ; 17B0A ×6631
  FB0C  A8        TAY                           ; 17B0C ×6631
  FB0D  E0 50     CPX #$50                      ; 17B0D ×6631
  FB0F  F0 04     BEQ loc_B2_FB15               ; 17B0F ×6631
  FB11  E0 20     CPX #$20                      ; 17B11 ×4440
  FB13  D0 D9     BNE sub_B2_FAEE               ; 17B13 ×4440

loc_B2_FB15:                    ; from 17b0f
  FB15  60        RTS                           ; 17B15 ×4411
  FB16  .byte 18 00 08                                          ; 17B16

loc_B2_FB19:                    ; from 17dd3
  FB19  A5 0B     LDA $0B                       ; 17B19 ×4411
  FB1B  29 01     AND #$01                      ; 17B1B ×4411
  FB1D  05 DC     ORA $DC                       ; 17B1D ×4411
  FB1F  F0 7C     BEQ loc_B2_FB9D               ; 17B1F ×4411
  FB21  AD 7E 06  LDA $067E                     ; 17B21 ×2220
  FB24  38        SEC                           ; 17B24 ×2220
  FB25  E5 89     SBC $89                       ; 17B25 ×2220
  FB27  29 FC     AND #$FC                      ; 17B27 ×2220
  FB29  F0 4B     BEQ loc_B2_FB76               ; 17B29 ×2220
  FB2B  85 15     STA $15                       ; 17B2B ×3
  FB2D  AD 7E 06  LDA $067E                     ; 17B2D ×3
  FB30  38        SEC                           ; 17B30 ×3
  FB31  E5 15     SBC $15                       ; 17B31 ×3
  FB33  8D 7E 06  STA $067E                     ; 17B33 ×3
  FB36  A5 15     LDA $15                       ; 17B36 ×3
  FB38  4A        LSR A                         ; 17B38 ×3
  FB39  4A        LSR A                         ; 17B39 ×3
  FB3A  6D 7F 06  ADC $067F                     ; 17B3A ×3
  FB3D  29 1F     AND #$1F                      ; 17B3D ×3
  FB3F  C9 18     CMP #$18                      ; 17B3F ×3
  FB41  90 05     BCC loc_B2_FB48               ; 17B41 ×3
  FB43  A4 10     LDY $10                       ; 17B43 ×0
  FB45  F9 0F FB  SBC $FB0F,Y                   ; 17B45 ×0

loc_B2_FB48:                    ; from 17b41
  FB48  8D 7F 06  STA $067F                     ; 17B48 ×3
  FB4B  A8        TAY                           ; 17B4B ×3
  FB4C  A2 00     LDX #$00                      ; 17B4C ×3

loc_B2_FB4E:                    ; from 17b74
  FB4E  A9 08     LDA #$08                      ; 17B4E ×9
  FB50  85 15     STA $15                       ; 17B50 ×9

loc_B2_FB52:                    ; from 17b62
  FB52  B9 2E FA  LDA $FA2E,Y                   ; 17B52 ×72
  FB55  9D 80 06  STA $0680,X                   ; 17B55 ×72
  FB58  B9 4E FA  LDA $FA4E,Y                   ; 17B58 ×72
  FB5B  9D 88 06  STA $0688,X                   ; 17B5B ×72
  FB5E  C8        INY                           ; 17B5E ×72
  FB5F  E8        INX                           ; 17B5F ×72
  FB60  C6 15     DEC $15                       ; 17B60 ×72
  FB62  D0 EE     BNE loc_B2_FB52               ; 17B62 ×72
  FB64  98        TYA                           ; 17B64 ×9
  FB65  38        SEC                           ; 17B65 ×9
  FB66  E9 10     SBC #$10                      ; 17B66 ×9
  FB68  B0 02     BCS loc_B2_FB6C               ; 17B68 ×9
  FB6A  69 18     ADC #$18                      ; 17B6A ×3

loc_B2_FB6C:                    ; from 17b68
  FB6C  A8        TAY                           ; 17B6C ×9
  FB6D  8A        TXA                           ; 17B6D ×9
  FB6E  18        CLC                           ; 17B6E ×9
  FB6F  69 08     ADC #$08                      ; 17B6F ×9
  FB71  AA        TAX                           ; 17B71 ×9
  FB72  E0 30     CPX #$30                      ; 17B72 ×9
  FB74  D0 D8     BNE loc_B2_FB4E               ; 17B74 ×9

loc_B2_FB76:                    ; from 17b29
  FB76  A5 0C     LDA $0C                       ; 17B76 ×2220
  FB78  29 07     AND #$07                      ; 17B78 ×2220
  FB7A  A4 10     LDY $10                       ; 17B7A ×2220
  FB7C  C0 09     CPY #$09                      ; 17B7C ×2220
  FB7E  D0 02     BNE loc_B2_FB82               ; 17B7E ×2220
  FB80  49 07     EOR #$07                      ; 17B80 ×1329

loc_B2_FB82:                    ; from 17b7e
  FB82  A8        TAY                           ; 17B82 ×2220
  FB83  A2 00     LDX #$00                      ; 17B83 ×2220
  FB85  20 EE FA  JSR sub_B2_FAEE               ; 17B85 ×2220
  FB88  A0 1F     LDY #$1F                      ; 17B88 ×2220

loc_B2_FB8A:                    ; from 17b98
  FB8A  98        TYA                           ; 17B8A ×71040
  FB8B  65 25     ADC $25                       ; 17B8B ×71040
  FB8D  E5 26     SBC $26                       ; 17B8D ×71040
  FB8F  2A        ROL A                         ; 17B8F ×71040
  FB90  45 26     EOR $26                       ; 17B90 ×71040
  FB92  85 25     STA $25                       ; 17B92 ×71040
  FB94  99 40 07  STA $0740,Y                   ; 17B94 ×71040
  FB97  88        DEY                           ; 17B97 ×71040
  FB98  10 F0     BPL loc_B2_FB8A               ; 17B98 ×71040
  FB9A  4C 08 FE  JMP loc_B2_FE08               ; 17B9A ×2220

loc_B2_FB9D:                    ; from 17b1f
  FB9D  A5 C9     LDA $C9                       ; 17B9D ×2191
  FB9F  F0 0D     BEQ loc_B2_FBAE               ; 17B9F ×2191
  FBA1  A0 1F     LDY #$1F                      ; 17BA1 ×42

loc_B2_FBA3:                    ; from 17baa
  FBA3  B9 CE FA  LDA $FACE,Y                   ; 17BA3 ×1344
  FBA6  99 D0 06  STA $06D0,Y                   ; 17BA6 ×1344
  FBA9  88        DEY                           ; 17BA9 ×1344
  FBAA  10 F7     BPL loc_B2_FBA3               ; 17BAA ×1344
  FBAC  30 14     BMI loc_B2_FBC2               ; 17BAC ×42

loc_B2_FBAE:                    ; from 17b9f
  FBAE  A2 0F     LDX #$0F                      ; 17BAE ×2149

loc_B2_FBB0:                    ; from 17bc0
  FBB0  BD D0 06  LDA $06D0,X                   ; 17BB0 ×34384
  FBB3  C9 80     CMP #$80                      ; 17BB3 ×34384
  FBB5  3E D0 06  ROL $06D0,X                   ; 17BB5 ×34384
  FBB8  BD E0 06  LDA $06E0,X                   ; 17BB8 ×34384
  FBBB  6A        ROR A                         ; 17BBB ×34384
  FBBC  7E E0 06  ROR $06E0,X                   ; 17BBC ×34384
  FBBF  CA        DEX                           ; 17BBF ×34384
  FBC0  10 EE     BPL loc_B2_FBB0               ; 17BC0 ×34384

loc_B2_FBC2:                    ; from 17bac
  FBC2  AD 7A 06  LDA $067A                     ; 17BC2 ×2191
  FBC5  18        CLC                           ; 17BC5 ×2191
  FBC6  69 04     ADC #$04                      ; 17BC6 ×2191
  FBC8  8D 7A 06  STA $067A                     ; 17BC8 ×2191
  FBCB  AD 7B 06  LDA $067B                     ; 17BCB ×2191
  FBCE  69 00     ADC #$00                      ; 17BCE ×2191
  FBD0  8D 7B 06  STA $067B                     ; 17BD0 ×2191
  FBD3  18        CLC                           ; 17BD3 ×2191
  FBD4  69 04     ADC #$04                      ; 17BD4 ×2191
  FBD6  29 08     AND #$08                      ; 17BD6 ×2191
  FBD8  F0 13     BEQ loc_B2_FBED               ; 17BD8 ×2191
  FBDA  AD 7C 06  LDA $067C                     ; 17BDA ×661
  FBDD  38        SEC                           ; 17BDD ×661
  FBDE  ED 7A 06  SBC $067A                     ; 17BDE ×661
  FBE1  8D 7C 06  STA $067C                     ; 17BE1 ×661
  FBE4  AD 7D 06  LDA $067D                     ; 17BE4 ×661
  FBE7  ED 7B 06  SBC $067B                     ; 17BE7 ×661
  FBEA  4C FD FB  JMP loc_B2_FBFD               ; 17BEA ×661

loc_B2_FBED:                    ; from 17bd8
  FBED  AD 7A 06  LDA $067A                     ; 17BED ×1530
  FBF0  18        CLC                           ; 17BF0 ×1530
  FBF1  6D 7C 06  ADC $067C                     ; 17BF1 ×1530
  FBF4  8D 7C 06  STA $067C                     ; 17BF4 ×1530
  FBF7  AD 7B 06  LDA $067B                     ; 17BF7 ×1530
  FBFA  6D 7D 06  ADC $067D                     ; 17BFA ×1530

loc_B2_FBFD:                    ; from 17bea
  FBFD  8D 7D 06  STA $067D                     ; 17BFD ×2191
  FC00  29 07     AND #$07                      ; 17C00 ×2191
  FC02  09 40     ORA #$40                      ; 17C02 ×2191
  FC04  A8        TAY                           ; 17C04 ×2191
  FC05  A2 40     LDX #$40                      ; 17C05 ×2191
  FC07  20 EE FA  JSR sub_B2_FAEE               ; 17C07 ×2191
  FC0A  A9 30     LDA #$30                      ; 17C0A ×2191

loc_B2_FC0C:                    ; from 17c6f
  FC0C  A2 1A     LDX #$1A                      ; 17C0C ×4151
  FC0E  4C CC FD  JMP loc_B2_FDCC               ; 17C0E ×4151

loc_B2_FC11:                    ; from 17c7e
  FC11  A5 0B     LDA $0B                       ; 17C11 ×3924
  FC13  29 02     AND #$02                      ; 17C13 ×3924
  FC15  D0 7A     BNE loc_B2_FC91               ; 17C15 ×3924

loc_B2_FC17:                    ; from 17c33
  FC17  BC C0 06  LDY $06C0,X                   ; 17C17 ×29400
  FC1A  BD D0 06  LDA $06D0,X                   ; 17C1A ×29400
  FC1D  9D C0 06  STA $06C0,X                   ; 17C1D ×29400
  FC20  BD E0 06  LDA $06E0,X                   ; 17C20 ×29400
  FC23  9D D0 06  STA $06D0,X                   ; 17C23 ×29400
  FC26  BD F0 06  LDA $06F0,X                   ; 17C26 ×29400
  FC29  9D E0 06  STA $06E0,X                   ; 17C29 ×29400
  FC2C  98        TYA                           ; 17C2C ×29400
  FC2D  9D F0 06  STA $06F0,X                   ; 17C2D ×29400
  FC30  E8        INX                           ; 17C30 ×29400
  FC31  E0 0F     CPX #$0F                      ; 17C31 ×29400
  FC33  D0 E2     BNE loc_B2_FC17               ; 17C33 ×29400
  FC35  A2 00     LDX #$00                      ; 17C35 ×1960

loc_B2_FC37:                    ; from 17c54
  FC37  BD 00 07  LDA $0700,X                   ; 17C37 ×31360
  FC3A  BC 10 07  LDY $0710,X                   ; 17C3A ×31360
  FC3D  9D 10 07  STA $0710,X                   ; 17C3D ×31360
  FC40  98        TYA                           ; 17C40 ×31360
  FC41  9D 00 07  STA $0700,X                   ; 17C41 ×31360
  FC44  BD 20 07  LDA $0720,X                   ; 17C44 ×31360
  FC47  BC 30 07  LDY $0730,X                   ; 17C47 ×31360
  FC4A  9D 30 07  STA $0730,X                   ; 17C4A ×31360
  FC4D  98        TYA                           ; 17C4D ×31360
  FC4E  9D 20 07  STA $0720,X                   ; 17C4E ×31360
  FC51  E8        INX                           ; 17C51 ×31360
  FC52  E0 10     CPX #$10                      ; 17C52 ×31360
  FC54  D0 E1     BNE loc_B2_FC37               ; 17C54 ×31360
  FC56  A5 0B     LDA $0B                       ; 17C56 ×1960
  FC58  29 04     AND #$04                      ; 17C58 ×1960
  FC5A  AA        TAX                           ; 17C5A ×1960
  FC5B  F0 02     BEQ loc_B2_FC5F               ; 17C5B ×1960
  FC5D  A2 40     LDX #$40                      ; 17C5D ×974

loc_B2_FC5F:                    ; from 17c5b
  FC5F  A0 00     LDY #$00                      ; 17C5F ×1960

loc_B2_FC61:                    ; from 17c6b
  FC61  BD 00 06  LDA $0600,X                   ; 17C61 ×125440
  FC64  99 80 06  STA $0680,Y                   ; 17C64 ×125440
  FC67  E8        INX                           ; 17C67 ×125440
  FC68  C8        INY                           ; 17C68 ×125440
  FC69  C0 40     CPY #$40                      ; 17C69 ×125440
  FC6B  D0 F4     BNE loc_B2_FC61               ; 17C6B ×125440
  FC6D  A9 60     LDA #$60                      ; 17C6D ×1960
  FC6F  4C 0C FC  JMP loc_B2_FC0C               ; 17C6F ×1960

loc_B2_FC72:                    ; from 17dd0
  FC72  A2 00     LDX #$00                      ; 17C72 ×15935
  FC74  A5 0B     LDA $0B                       ; 17C74 ×15935
  FC76  29 01     AND #$01                      ; 17C76 ×15935
  FC78  F0 1A     BEQ loc_B2_FC94               ; 17C78 ×15935
  FC7A  A5 10     LDA $10                       ; 17C7A ×7979
  FC7C  C9 0B     CMP #$0B                      ; 17C7C ×7979
  FC7E  F0 91     BEQ loc_B2_FC11               ; 17C7E ×7979
  FC80  A5 87     LDA $87                       ; 17C80 ×4055
  FC82  38        SEC                           ; 17C82 ×4055
  FC83  E5 CE     SBC $CE                       ; 17C83 ×4055
  FC85  18        CLC                           ; 17C85 ×4055
  FC86  69 01     ADC #$01                      ; 17C86 ×4055
  FC88  30 04     BMI loc_B2_FC8E               ; 17C88 ×4055
  FC8A  C9 03     CMP #$03                      ; 17C8A ×4020
  FC8C  90 03     BCC loc_B2_FC91               ; 17C8C ×4020

loc_B2_FC8E:                    ; from 17c88
  FC8E  4C 79 FD  JMP loc_B2_FD79               ; 17C8E ×441

loc_B2_FC91:                    ; from 17c9c 17c8c 17c15 17c96
  FC91  4C 08 FE  JMP loc_B2_FE08               ; 17C91 ×9515

loc_B2_FC94:                    ; from 17c78
  FC94  A5 DC     LDA $DC                       ; 17C94 ×7956
  FC96  D0 F9     BNE loc_B2_FC91               ; 17C96 ×7956
  FC98  A5 10     LDA $10                       ; 17C98 ×7920
  FC9A  C9 0B     CMP #$0B                      ; 17C9A ×7920
  FC9C  F0 F3     BEQ loc_B2_FC91               ; 17C9C ×7920
  FC9E  C9 0D     CMP #$0D                      ; 17C9E ×4019
  FCA0  D0 02     BNE loc_B2_FCA4               ; 17CA0 ×4019
  FCA2  B0 11     BCS loc_B2_FCB5               ; 17CA2 ×1729

loc_B2_FCA4:                    ; from 17ca0
  FCA4  A5 89     LDA $89                       ; 17CA4 ×2290
  FCA6  38        SEC                           ; 17CA6 ×2290
  FCA7  E5 CF     SBC $CF                       ; 17CA7 ×2290
  FCA9  18        CLC                           ; 17CA9 ×2290
  FCAA  69 01     ADC #$01                      ; 17CAA ×2290
  FCAC  30 09     BMI loc_B2_FCB7               ; 17CAC ×2290
  FCAE  C9 03     CMP #$03                      ; 17CAE ×2282
  FCB0  B0 03     BCS loc_B2_FCB5               ; 17CB0 ×2282
  FCB2  4C C0 FD  JMP loc_B2_FDC0               ; 17CB2 ×2223

loc_B2_FCB5:                    ; from 17ca2 17cb0
  FCB5  A2 C7     LDX #$C7                      ; 17CB5 ×1788

loc_B2_FCB7:                    ; from 17cac
  FCB7  86 15     STX $15                       ; 17CB7 ×1796
  FCB9  A5 89     LDA $89                       ; 17CB9 ×1796
  FCBB  85 CF     STA $CF                       ; 17CBB ×1796
  FCBD  A0 04     LDY #$04                      ; 17CBD ×1796

loc_B2_FCBF:                    ; from 17ccd
  FCBF  BD 80 06  LDA $0680,X                   ; 17CBF ×7184
  FCC2  48        PHA                           ; 17CC2 ×7184
  FCC3  BD 88 06  LDA $0688,X                   ; 17CC3 ×7184
  FCC6  48        PHA                           ; 17CC6 ×7184
  FCC7  8A        TXA                           ; 17CC7 ×7184
  FCC8  18        CLC                           ; 17CC8 ×7184
  FCC9  69 10     ADC #$10                      ; 17CC9 ×7184
  FCCB  AA        TAX                           ; 17CCB ×7184
  FCCC  88        DEY                           ; 17CCC ×7184
  FCCD  D0 F0     BNE loc_B2_FCBF               ; 17CCD ×7184
  FCCF  A6 15     LDX $15                       ; 17CCF ×1796
  FCD1  10 49     BPL loc_B2_FD1C               ; 17CD1 ×1796
  FCD3  A2 CF     LDX #$CF                      ; 17CD3 ×1788

loc_B2_FCD5:                    ; from 17d0f 17d18
  FCD5  A0 07     LDY #$07                      ; 17CD5 ×14304

loc_B2_FCD7:                    ; from 17cf1
  FCD7  BD 7F 06  LDA $067F,X                   ; 17CD7 ×100128
  FCDA  9D 80 06  STA $0680,X                   ; 17CDA ×100128
  FCDD  BD 8F 06  LDA $068F,X                   ; 17CDD ×100128
  FCE0  9D 90 06  STA $0690,X                   ; 17CE0 ×100128
  FCE3  BD 9F 06  LDA $069F,X                   ; 17CE3 ×100128
  FCE6  9D A0 06  STA $06A0,X                   ; 17CE6 ×100128
  FCE9  BD AF 06  LDA $06AF,X                   ; 17CE9 ×100128
  FCEC  9D B0 06  STA $06B0,X                   ; 17CEC ×100128
  FCEF  CA        DEX                           ; 17CEF ×100128
  FCF0  88        DEY                           ; 17CF0 ×100128
  FCF1  D0 E4     BNE loc_B2_FCD7               ; 17CF1 ×100128
  FCF3  BD 47 06  LDA $0647,X                   ; 17CF3 ×14304
  FCF6  9D 80 06  STA $0680,X                   ; 17CF6 ×14304
  FCF9  BD 57 06  LDA $0657,X                   ; 17CF9 ×14304
  FCFC  9D 90 06  STA $0690,X                   ; 17CFC ×14304
  FCFF  BD 67 06  LDA $0667,X                   ; 17CFF ×14304
  FD02  9D A0 06  STA $06A0,X                   ; 17D02 ×14304
  FD05  BD 77 06  LDA $0677,X                   ; 17D05 ×14304
  FD08  9D B0 06  STA $06B0,X                   ; 17D08 ×14304
  FD0B  CA        DEX                           ; 17D0B ×14304
  FD0C  8A        TXA                           ; 17D0C ×14304
  FD0D  29 08     AND #$08                      ; 17D0D ×14304
  FD0F  F0 C4     BEQ loc_B2_FCD5               ; 17D0F ×14304
  FD11  8A        TXA                           ; 17D11 ×7152
  FD12  38        SEC                           ; 17D12 ×7152
  FD13  E9 30     SBC #$30                      ; 17D13 ×7152
  FD15  AA        TAX                           ; 17D15 ×7152
  FD16  C9 CF     CMP #$CF                      ; 17D16 ×7152
  FD18  D0 BB     BNE loc_B2_FCD5               ; 17D18 ×7152
  FD1A  F0 43     BEQ loc_B2_FD5F               ; 17D1A ×1788

loc_B2_FD1C:                    ; from 17d56 17d5d 17cd1
  FD1C  A0 07     LDY #$07                      ; 17D1C ×64

loc_B2_FD1E:                    ; from 17d38
  FD1E  BD 81 06  LDA $0681,X                   ; 17D1E ×448
  FD21  9D 80 06  STA $0680,X                   ; 17D21 ×448
  FD24  BD 91 06  LDA $0691,X                   ; 17D24 ×448
  FD27  9D 90 06  STA $0690,X                   ; 17D27 ×448
  FD2A  BD A1 06  LDA $06A1,X                   ; 17D2A ×448
  FD2D  9D A0 06  STA $06A0,X                   ; 17D2D ×448
  FD30  BD B1 06  LDA $06B1,X                   ; 17D30 ×448
  FD33  9D B0 06  STA $06B0,X                   ; 17D33 ×448
  FD36  E8        INX                           ; 17D36 ×448
  FD37  88        DEY                           ; 17D37 ×448
  FD38  D0 E4     BNE loc_B2_FD1E               ; 17D38 ×448
  FD3A  BD B9 06  LDA $06B9,X                   ; 17D3A ×64
  FD3D  9D 80 06  STA $0680,X                   ; 17D3D ×64
  FD40  BD C9 06  LDA $06C9,X                   ; 17D40 ×64
  FD43  9D 90 06  STA $0690,X                   ; 17D43 ×64
  FD46  BD D9 06  LDA $06D9,X                   ; 17D46 ×64
  FD49  9D A0 06  STA $06A0,X                   ; 17D49 ×64
  FD4C  BD E9 06  LDA $06E9,X                   ; 17D4C ×64
  FD4F  9D B0 06  STA $06B0,X                   ; 17D4F ×64
  FD52  E8        INX                           ; 17D52 ×64
  FD53  8A        TXA                           ; 17D53 ×64
  FD54  29 08     AND #$08                      ; 17D54 ×64
  FD56  D0 C4     BNE loc_B2_FD1C               ; 17D56 ×64
  FD58  8A        TXA                           ; 17D58 ×32
  FD59  18        CLC                           ; 17D59 ×32
  FD5A  69 30     ADC #$30                      ; 17D5A ×32
  FD5C  AA        TAX                           ; 17D5C ×32
  FD5D  D0 BD     BNE loc_B2_FD1C               ; 17D5D ×32

loc_B2_FD5F:                    ; from 17d1a
  FD5F  A5 15     LDA $15                       ; 17D5F ×1796
  FD61  49 F7     EOR #$F7                      ; 17D61 ×1796
  FD63  AA        TAX                           ; 17D63 ×1796
  FD64  A0 04     LDY #$04                      ; 17D64 ×1796

loc_B2_FD66:                    ; from 17d74
  FD66  68        PLA                           ; 17D66 ×7184
  FD67  9D 88 06  STA $0688,X                   ; 17D67 ×7184
  FD6A  68        PLA                           ; 17D6A ×7184
  FD6B  9D 80 06  STA $0680,X                   ; 17D6B ×7184
  FD6E  8A        TXA                           ; 17D6E ×7184
  FD6F  38        SEC                           ; 17D6F ×7184
  FD70  E9 10     SBC #$10                      ; 17D70 ×7184
  FD72  AA        TAX                           ; 17D72 ×7184
  FD73  88        DEY                           ; 17D73 ×7184
  FD74  D0 F0     BNE loc_B2_FD66               ; 17D74 ×7184
  FD76  4C C0 FD  JMP loc_B2_FDC0               ; 17D76 ×1796

loc_B2_FD79:                    ; from 17c8e
  FD79  2A        ROL A                         ; 17D79 ×441
  FD7A  A5 87     LDA $87                       ; 17D7A ×441
  FD7C  85 CE     STA $CE                       ; 17D7C ×441
  FD7E  90 20     BCC loc_B2_FDA0               ; 17D7E ×441

loc_B2_FD80:                    ; from 17d9b
  FD80  A0 10     LDY #$10                      ; 17D80 ×140

loc_B2_FD82:                    ; from 17d94
  FD82  BD 80 06  LDA $0680,X                   ; 17D82 ×2240
  FD85  2A        ROL A                         ; 17D85 ×2240
  FD86  3E B0 06  ROL $06B0,X                   ; 17D86 ×2240
  FD89  3E A0 06  ROL $06A0,X                   ; 17D89 ×2240
  FD8C  3E 90 06  ROL $0690,X                   ; 17D8C ×2240
  FD8F  3E 80 06  ROL $0680,X                   ; 17D8F ×2240
  FD92  E8        INX                           ; 17D92 ×2240
  FD93  88        DEY                           ; 17D93 ×2240
  FD94  D0 EC     BNE loc_B2_FD82               ; 17D94 ×2240
  FD96  8A        TXA                           ; 17D96 ×140
  FD97  18        CLC                           ; 17D97 ×140
  FD98  69 30     ADC #$30                      ; 17D98 ×140
  FD9A  AA        TAX                           ; 17D9A ×140
  FD9B  D0 E3     BNE loc_B2_FD80               ; 17D9B ×140
  FD9D  4C 08 FE  JMP loc_B2_FE08               ; 17D9D ×35

loc_B2_FDA0:                    ; from 17dbb 17d7e
  FDA0  A0 10     LDY #$10                      ; 17DA0 ×1624

loc_B2_FDA2:                    ; from 17db4
  FDA2  BD B0 06  LDA $06B0,X                   ; 17DA2 ×25984
  FDA5  6A        ROR A                         ; 17DA5 ×25984
  FDA6  7E 80 06  ROR $0680,X                   ; 17DA6 ×25984
  FDA9  7E 90 06  ROR $0690,X                   ; 17DA9 ×25984
  FDAC  7E A0 06  ROR $06A0,X                   ; 17DAC ×25984
  FDAF  7E B0 06  ROR $06B0,X                   ; 17DAF ×25984
  FDB2  E8        INX                           ; 17DB2 ×25984
  FDB3  88        DEY                           ; 17DB3 ×25984
  FDB4  D0 EC     BNE loc_B2_FDA2               ; 17DB4 ×25984
  FDB6  8A        TXA                           ; 17DB6 ×1624
  FDB7  18        CLC                           ; 17DB7 ×1624
  FDB8  69 30     ADC #$30                      ; 17DB8 ×1624
  FDBA  AA        TAX                           ; 17DBA ×1624
  FDBB  D0 E3     BNE loc_B2_FDA0               ; 17DBB ×1624
  FDBD  4C 08 FE  JMP loc_B2_FE08               ; 17DBD ×406

loc_B2_FDC0:                    ; from 17cb2 17d76
  FDC0  A2 16     LDX #$16                      ; 17DC0 ×4019
  FDC2  A9 C0     LDA #$C0                      ; 17DC2 ×4019
  FDC4  A4 10     LDY $10                       ; 17DC4 ×4019
  FDC6  C0 04     CPY #$04                      ; 17DC6 ×4019
  FDC8  F0 02     BEQ loc_B2_FDCC               ; 17DC8 ×4019
  FDCA  A9 80     LDA #$80                      ; 17DCA ×2503

loc_B2_FDCC:                    ; from 17c0e 17dc8
  FDCC  A0 D0     LDY #$D0                      ; 17DCC ×8170
  FDCE  D0 60     BNE loc_B2_FE30               ; 17DCE ×8170

loc_B2_FDD0:                    ; from 17de8 17dec 17de0 17de4
  FDD0  4C 72 FC  JMP loc_B2_FC72               ; 17DD0 ×15935

loc_B2_FDD3:                    ; from 17df4 17df0
  FDD3  4C 19 FB  JMP loc_B2_FB19               ; 17DD3 ×4411

loc_B2_FDD6:                    ; from 10003
  FDD6  A6 10     LDX $10                       ; 17DD6 ×58778
  FDD8  A9 80     LDA #$80                      ; 17DD8 ×58778
  FDDA  E0 05     CPX #$05                      ; 17DDA ×58778
  FDDC  F0 22     BEQ loc_B2_FE00               ; 17DDC ×58778
  FDDE  E0 04     CPX #$04                      ; 17DDE ×57488
  FDE0  F0 EE     BEQ loc_B2_FDD0               ; 17DE0 ×57488
  FDE2  E0 0A     CPX #$0A                      ; 17DE2 ×54434
  FDE4  F0 EA     BEQ loc_B2_FDD0               ; 17DE4 ×54434
  FDE6  E0 0B     CPX #$0B                      ; 17DE6 ×52883
  FDE8  F0 E6     BEQ loc_B2_FDD0               ; 17DE8 ×52883
  FDEA  E0 0D     CPX #$0D                      ; 17DEA ×45037
  FDEC  F0 E2     BEQ loc_B2_FDD0               ; 17DEC ×45037
  FDEE  E0 07     CPX #$07                      ; 17DEE ×41553
  FDF0  F0 E1     BEQ loc_B2_FDD3               ; 17DF0 ×41553
  FDF2  E0 09     CPX #$09                      ; 17DF2 ×39788
  FDF4  F0 DD     BEQ loc_B2_FDD3               ; 17DF4 ×39788
  FDF6  E0 02     CPX #$02                      ; 17DF6 ×37142
  FDF8  D0 0E     BNE loc_B2_FE08               ; 17DF8 ×37142
  FDFA  A5 0B     LDA $0B                       ; 17DFA ×507
  FDFC  29 01     AND #$01                      ; 17DFC ×507
  FDFE  F0 08     BEQ loc_B2_FE08               ; 17DFE ×507

loc_B2_FE00:                    ; from 17ddc
  FE00  85 CC     STA $CC                       ; 17E00 ×1543
  FE02  2A        ROL A                         ; 17E02 ×1543
  FE03  90 4D     BCC loc_B2_FE52               ; 17E03 ×1543
  FE05  4C 01 FA  JMP loc_B2_FA01               ; 17E05 ×1290

loc_B2_FE08:                    ; from 17df8 17c91 17b9a 17a2b 17dbd 17dfe (+2)
  FE08  E6 CD     INC $CD                       ; 17E08 ×50355
  FE0A  A2 00     LDX #$00                      ; 17E0A ×50355
  FE0C  AD B6 03  LDA $03B6                     ; 17E0C ×50355
  FE0F  CD D1 03  CMP $03D1                     ; 17E0F ×50355
  FE12  F0 0E     BEQ loc_B2_FE22               ; 17E12 ×50355
  FE14  E8        INX                           ; 17E14 inferred, not run
  FE15  AD B5 03  LDA $03B5                     ; 17E15 inferred, not run
  FE18  CD D0 03  CMP $03D0                     ; 17E18 inferred, not run
  FE1B  F0 05     BEQ loc_B2_FE22               ; 17E1B inferred, not run
  FE1D  A5 CD     LDA $CD                       ; 17E1D inferred, not run
  FE1F  29 01     AND #$01                      ; 17E1F inferred, not run
  FE21  AA        TAX                           ; 17E21 inferred, not run

loc_B2_FE22:                    ; from 17e12
  FE22  BD B5 03  LDA $03B5,X                   ; 17E22 ×50355
  FE25  9D D0 03  STA $03D0,X                   ; 17E25 ×50355
  FE28  0A        ASL A                         ; 17E28 ×50355
  FE29  A8        TAY                           ; 17E29 ×50355
  FE2A  D0 02     BNE loc_B2_FE2E               ; 17E2A ×50355
  FE2C  A0 02     LDY #$02                      ; 17E2C ×359

loc_B2_FE2E:                    ; from 17e2a
  FE2E  A9 10     LDA #$10                      ; 17E2E ×50355

loc_B2_FE30:                    ; from 17dce
  FE30  86 9C     STX $9C                       ; 17E30 ×58525
  FE32  85 9D     STA $9D                       ; 17E32 ×58525
  FE34  B9 52 FE  LDA loc_B2_FE52,Y             ; 17E34 ×58525
  FE37  85 15     STA $15                       ; 17E37 ×58525
  FE39  B9 51 FE  LDA $FE51,Y                   ; 17E39 ×58525
  FE3C  A8        TAY                           ; 17E3C ×58525
  FE3D  A2 00     LDX #$00                      ; 17E3D ×58525

loc_B2_FE3F:                    ; from 17e50
  FE3F  98        TYA                           ; 17E3F ×936400
  FE40  9D 96 07  STA $0796,X                   ; 17E40 ×936400
  FE43  C8        INY                           ; 17E43 ×936400
  FE44  A5 15     LDA $15                       ; 17E44 ×936400
  FE46  9D 97 07  STA $0797,X                   ; 17E46 ×936400
  FE49  8A        TXA                           ; 17E49 ×936400
  FE4A  18        CLC                           ; 17E4A ×936400
  FE4B  69 06     ADC #$06                      ; 17E4B ×936400
  FE4D  AA        TAX                           ; 17E4D ×936400
  FE4E  C9 60     CMP #$60                      ; 17E4E ×936400
  FE50  90 ED     BCC loc_B2_FE3F               ; 17E50 ×936400

loc_B2_FE52:                    ; from 17e03
  FE52  60        RTS                           ; 17E52 ×58778
  FE53  .byte 30 80 30 80 20 81 E0 81 C0 82 90 83 50 84 10 85   ; 17E53 data, read by 17e39 17e34
  FE63  .byte D0 85 C0 86 B0 87                                 ; 17E63 data, read by 17e39 17e34
  FE69  .byte 80 88                                             ; 17E69
  FE6B  .byte 80 88 20 89 10 8A E0 8A C0 8B 90 8C 80 8D 50 8E   ; 17E6B data, read by 17e39 17e34
  FE7B  .byte 20 8F E0 8F                                       ; 17E7B data, read by 17e39 17e34
  FE7F  .byte 00 A0                                             ; 17E7F
  FE81  .byte C0 90 B0 91 90 92 90 93 50 94 50 95 20 96 20 97   ; 17E81 data, read by 17e39 17e34
  FE91  .byte 20 98 00 99 F0 99                                 ; 17E91 data, read by 17e39 17e34
  FE97  .byte C0 9A                                             ; 17E97
  FE99  .byte B0 9B 90 9C 90 9D                                 ; 17E99 data, read by 17e39 17e34
  FE9F  .byte 80 9E                                             ; 17E9F
  FEA1  .byte 50 9F 00 A0                                       ; 17EA1 data, read by 17e39 17e34
  FEA5  .byte F0 A0                                             ; 17EA5
  FEA7  .byte C0 A1 B0 A2 80 A3                                 ; 17EA7 data, read by 17e39 17e34
  FEAD  .byte 80 A4 80 A5                                       ; 17EAD
  FEB1  .byte 50 A6                                             ; 17EB1 data, read by 17e39 17e34
  FEB3  .byte 20 A7 20 A8 00 A9                                 ; 17EB3
  FEB9  .byte 00 AA                                             ; 17EB9 data, read by 17e39 17e34
  FEBB  .byte B0 AA A0 AB 80 AC 60 AD D0 AD 50 AE E0 AE 50 AE   ; 17EBB
  FECB  .byte 60 AD 60 AD 60 AD D0 AD 90 AF 20 B0 10 B1 D0 B1   ; 17ECB
  FEDB  .byte A0 B2 60 B5                                       ; 17EDB data, read by 17e39 17e34
  FEDF  .byte 90 B3 90 B3 90 B3                                 ; 17EDF
  FEE5  .byte 90 B3 60 B4                                       ; 17EE5 data, read by 17e39 17e34
  FEE9  .byte 60 B6 60 B7 80 B8 80 B8 80 B9 70 BA 70 BB 70 BC   ; 17EE9
  FEF9  .byte 50 BD 50 BD D0 BD                                 ; 17EF9
  FEFF  .byte 20 BE                                             ; 17EFF data, read by 17e39 17e34
  FF01  .byte 10 BF D0 BF 80 C0 60 C1 C0 C1                     ; 17F01
  FF0B  .byte 20 C2                                             ; 17F0B data, read by 17e39 17e34
  FF0D  .byte C0 C2 C0 C3 B0 C4 80 C5 80 C6 30 C7 E0 AE E0 C7   ; 17F0D
  FF1D  .byte E0 C7 E0 AE 80 06                                 ; 17F1D data, read by 17e39 17e34

loc_B2_FF23:                    ; from 1001b
  FF23  AD 02 20  LDA $2002                     ; 17F23 ×14
  FF26  A2 00     LDX #$00                      ; 17F26 ×14
  FF28  A4 10     LDY $10                       ; 17F28 ×14
  FF2A  C0 0B     CPY #$0B                      ; 17F2A ×14
  FF2C  D0 29     BNE loc_B2_FF57               ; 17F2C ×14
  FF2E  A9 1A     LDA #$1A                      ; 17F2E ×3
  FF30  8D 06 20  STA $2006                     ; 17F30 ×3
  FF33  A9 60     LDA #$60                      ; 17F33 ×3
  FF35  20 68 FF  JSR sub_B2_FF68               ; 17F35 ×3
  FF38  A9 1B     LDA #$1B                      ; 17F38 ×3
  FF3A  8D 06 20  STA $2006                     ; 17F3A ×3
  FF3D  A9 C0     LDA #$C0                      ; 17F3D ×3
  FF3F  8D 06 20  STA $2006                     ; 17F3F ×3
  FF42  AD 07 20  LDA $2007                     ; 17F42 ×3

loc_B2_FF45:                    ; from 17f54
  FF45  BD 80 06  LDA $0680,X                   ; 17F45 ×192
  FF48  9D 00 06  STA $0600,X                   ; 17F48 ×192
  FF4B  AD 07 20  LDA $2007                     ; 17F4B ×192
  FF4E  9D 40 06  STA $0640,X                   ; 17F4E ×192
  FF51  E8        INX                           ; 17F51 ×192
  FF52  E0 40     CPX #$40                      ; 17F52 ×192
  FF54  D0 EF     BNE loc_B2_FF45               ; 17F54 ×192
  FF56  60        RTS                           ; 17F56 ×3

loc_B2_FF57:                    ; from 17f2c
  FF57  A9 16     LDA #$16                      ; 17F57 ×11
  FF59  8D 06 20  STA $2006                     ; 17F59 ×11
  FF5C  A9 C0     LDA #$C0                      ; 17F5C ×11
  FF5E  C0 0D     CPY #$0D                      ; 17F5E ×11
  FF60  F0 04     BEQ loc_B2_FF66               ; 17F60 ×11
  FF62  C0 0A     CPY #$0A                      ; 17F62 ×8
  FF64  D0 02     BNE sub_B2_FF68               ; 17F64 ×8

loc_B2_FF66:                    ; from 17f60
  FF66  A9 80     LDA #$80                      ; 17F66 ×8

sub_B2_FF68:                    ; from 17f35 17f64
  FF68  8D 06 20  STA $2006                     ; 17F68 ×14
  FF6B  AD 07 20  LDA $2007                     ; 17F6B ×14

loc_B2_FF6E:                    ; from 17f75
  FF6E  AD 07 20  LDA $2007                     ; 17F6E ×3584
  FF71  9D 80 06  STA $0680,X                   ; 17F71 ×3584
  FF74  E8        INX                           ; 17F74 ×3584
  FF75  D0 F7     BNE loc_B2_FF6E               ; 17F75 ×3584
  FF77  60        RTS                           ; 17F77 ×14
  FF78  .byte 8D B6 FF 20 79 FF A9 00 8D B3 FF 60 85 3E 29 10   ; 17F78
  FF88  .byte 09 03 A8 99 B3 FF 20 79 FF A5 3E A8 99 B3 FF 60   ; 17F88
  FF98  .byte 86 76 85 75 A9 02 A2 00 8E B3 FF 4C 78 FF A6 76   ; 17F98
  FFA8  .byte A5 2E A8 99 B3 FF A4 77 A5 75 40                  ; 17FA8
  FFB3  .byte 00 01                                             ; 17FB3 data, read by 17fe4 17fd6
  FFB5  .byte 02                                                ; 17FB5
  FFB6  .byte 03                                                ; 17FB6 data, read by 17fe4 17fd6
  FFB7  .byte 04 05                                             ; 17FB7
  FFB9  .byte 06 07                                             ; 17FB9 data, read by 17fe4 17fd6
  FFBB  .byte 08 09 0A 0B 0C 0D 0E 0F 10 11 12 13 14 15 16 17   ; 17FBB

sub_B2_FFCB:                    ; from 16cad
  FFCB  A9 00     LDA #$00                      ; 17FCB ×3297
  FFCD  09 02     ORA #$02                      ; 17FCD ×3297
  FFCF  85 2D     STA $2D                       ; 17FCF ×3297
  FFD1  A5 13     LDA $13                       ; 17FD1 ×3297
  FFD3  48        PHA                           ; 17FD3 ×3297
  FFD4  86 13     STX $13                       ; 17FD4 ×3297
  FFD6  B9 B3 FF  LDA $FFB3,Y                   ; 17FD6 ×3297
  FFD9  99 B3 FF  STA $FFB3,Y                   ; 17FD9 ×3297
  FFDC  20 00 80  JSR sub_B2_8000               ; 17FDC ×134446
  FFDF  A4 2D     LDY $2D                       ; 17FDF ×134446
  FFE1  68        PLA                           ; 17FE1 ×134446
  FFE2  85 13     STA $13                       ; 17FE2 ×134446
  FFE4  B9 B3 FF  LDA $FFB3,Y                   ; 17FE4 ×134446
  FFE7  99 B3 FF  STA $FFB3,Y                   ; 17FE7 ×134446
  FFEA  60        RTS                           ; 17FEA ×3297
  FFEB  .byte CA D0 FD 88 D0 FA 60 A9 00 8D B3 FF 4C F2 FF 98   ; 17FEB
  FFFB  .byte FF F2 FF 78 FF                                    ; 17FFB
