# Object table field 6 (depth): $041B–$0429, one cell per slot

Code and play ($041B), named so far `obj_depth` (the object table (game.json): field array, slot):
- code: written by 21 routines (obj_any_move_5 ×4, l12_obj_golden_brute_handler ×2, l6_frame_update ×2), read by 29; an indexed base ×94, the index using 0…14 (15 values)
- play: changed on 12324 of 436617 frames (+1 1741, −1 1994, other 8589), 220 values, levels 1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 220): 0 1 2 3 4 5 6 7 8 9 10 11 12 14 16 18

Code and play ($041C), named so far `obj_depth+1` (the object table (game.json): field array, slot):
- code: written by 1 routines (l11_obj_chasing_orb_handler ×1), read by 0
- play: changed on 26 of 436617 frames (+1 20, −1 0, other 6), 4 values, levels 0,1,2,3,5,10
- values in play (the lowest 5 of 4): 0 8 32 220 238

Code and play ($041D), named so far `obj_depth+2` (the object table (game.json): field array, slot):
- play: changed on 13215 of 436617 frames (+1 1142, −1 1300, other 10773), 195 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,255
- values in play (the lowest 16 of 195): 0 1 2 3 4 5 6 7 8 9 10 11 12 14 16 18

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $041B slot 0: read in 94 moments; hold 9/9/0 (sq1 4, sq2 3, noise 1, scroll 1, nametable 5, chr 6, oam 9, objects 9, proven 5; levels 1,3,6,9,10,12); other 94/85/2 (sq1 10, sq2 8, tri 2, noise 13, dmc 27, scroll 28, mask 2, palette 3, nametable 38, chr 46, oam 70, objects 68, proven 44; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255); poke 93/81/4 (sq1 6, sq2 4, noise 10, dmc 25, scroll 25, palette 1, nametable 34, chr 42, oam 66, objects 64, proven 37; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255)
- $041C slot 1: read in 94 moments; hold 0/0/0; other 94/73/2 (noise 6, dmc 25, scroll 4, nametable 4, chr 32, oam 46, objects 47, proven 5; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255); poke 94/72/4 (noise 6, dmc 25, scroll 4, nametable 4, chr 31, oam 46, objects 47, proven 5; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255)
- $041D slot 2: read in 94 moments; hold 15/14/0 (chr 5, oam 12, objects 14, proven 1; levels 1,3,6,8,9,10,13); other 94/80/2 (noise 6, dmc 25, scroll 5, nametable 4, chr 30, oam 48, objects 61, proven 6; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255); poke 94/73/4 (noise 6, dmc 25, scroll 4, nametable 3, chr 29, oam 41, objects 52, proven 4; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255)
- $041E slot 3: read in 94 moments; hold 31/28/0 (sq1 1, sq2 1, noise 2, dmc 5, scroll 2, nametable 4, chr 10, oam 22, objects 27, proven 3; levels 1,3,4,5,6,7,8,9,10,11,12,13); other 94/79/2 (sq1 2, sq2 2, noise 8, dmc 25, scroll 10, nametable 11, chr 34, oam 54, objects 60, proven 11; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255); poke 91/75/4 (sq1 1, sq2 1, noise 8, dmc 25, scroll 7, nametable 6, chr 31, oam 49, objects 56, proven 7; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255)
- $041F slot 4: read in 50 moments; hold 18/17/0 (sq1 1, noise 1, dmc 5, scroll 2, nametable 2, chr 7, oam 16, objects 17, proven 2; levels 1,3,5,6,7,8,9,11,13); other 47/47/0 (sq1 1, noise 2, dmc 9, scroll 6, nametable 5, chr 16, oam 43, objects 46, proven 5; levels 1,2,3,4,5,6,7,8,9,11,12,13); poke 36/35/1 (noise 2, dmc 5, scroll 3, nametable 2, chr 10, oam 31, objects 34, proven 2; levels 1,2,3,4,5,6,7,8,9,11,12)
- $0420 slot 5: read in 54 moments; hold 22/22/0 (sq1 1, sq2 1, tri 1, noise 5, dmc 3, scroll 1, nametable 1, chr 5, oam 18, objects 22, proven 1; levels 1,3,4,5,6,7,9,10,11,12); other 54/54/0 (sq1 3, sq2 3, tri 3, noise 11, dmc 11, scroll 8, palette 2, nametable 8, chr 17, oam 44, objects 54, proven 8; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 45/42/3 (sq1 2, sq2 2, tri 2, noise 8, dmc 6, scroll 6, palette 1, nametable 6, chr 11, oam 33, objects 42, proven 6; levels 1,2,3,4,5,7,8,9,10,11,12)
- $0421 slot 6: read in 37 moments; hold 13/13/0 (noise 1, dmc 5, scroll 1, nametable 1, chr 5, oam 11, objects 13, proven 1; levels 3,5,6,7,9,11,12); other 35/35/0 (noise 1, dmc 7, scroll 2, nametable 2, chr 7, oam 28, objects 35, proven 4; levels 1,2,3,4,5,6,7,8,9,11,12); poke 26/26/0 (dmc 3, nametable 1, chr 2, oam 21, objects 26, proven 2; levels 1,2,4,5,7,8,9,11,12)
- $0422 slot 7: read in 25 moments; hold 14/14/0 (noise 2, dmc 4, scroll 2, nametable 2, chr 4, oam 10, objects 14, proven 2; levels 3,4,5,6,7,11,12); other 25/25/0 (noise 2, dmc 5, scroll 3, nametable 4, chr 7, oam 22, objects 25, proven 3; levels 1,2,3,4,5,6,7,9,11,12); poke 10/10/0 (nametable 1, chr 3, oam 9, objects 10; levels 1,2,4,5,7,9,11)
- $0423 slot 8: read in 14 moments; hold 6/6/0 (dmc 2, oam 3, objects 6; levels 4,5,6,11); other 14/14/0 (sq1 1, sq2 2, noise 1, dmc 3, scroll 1, nametable 2, chr 3, oam 9, objects 14, proven 1; levels 2,4,5,6,7,9,11); poke 7/7/0 (sq2 2, nametable 1, chr 2, oam 5, objects 7; levels 2,6,7,9,11)
- $0424 slot 9: read in 10 moments; hold 6/6/0 (sq2 2, noise 2, dmc 1, scroll 1, nametable 1, chr 2, oam 5, objects 6, proven 1; levels 4,5,6,11); other 10/10/0 (sq1 1, sq2 2, noise 3, dmc 1, scroll 2, nametable 2, chr 4, oam 8, objects 10, proven 2; levels 2,4,5,6,7,11); poke 6/6/0 (chr 2, oam 3, objects 6; levels 2,4,7,11)
- $0425 slot 10: read in 2 moments; hold 1/1/0 (chr 1, oam 1, objects 1; levels 7); other 2/2/0 (chr 1, oam 1, objects 2; levels 2,7); poke 1/1/0 (objects 1; levels 2)
- $0426 slot 11: read in 4 moments; hold 3/3/0 (chr 1, oam 3, objects 3; levels 4,7,11); other 4/4/0 (noise 1, chr 1, oam 3, objects 4; levels 2,4,7,11); poke 1/1/0 (noise 1, objects 1; levels 2)
- $0427 slot 12: read in 3 moments; hold 1/1/0 (nametable 1, chr 1, oam 1, objects 1; levels 7); other 3/3/0 (noise 1, nametable 1, chr 1, oam 3, objects 3; levels 2,4,7); poke 2/2/0 (noise 1, oam 2, objects 2; levels 2,4)
- $0428 slot 13: read in 1 moments; hold 0/0/0; other 1/1/0 (objects 1; levels 2); poke 1/1/0 (objects 1; levels 2)
- $0429 slot 14: read in 1 moments; hold 0/0/0; other 1/1/0 (noise 1, oam 1, objects 1; levels 2); poke 1/1/0 (oam 1, objects 1; levels 2)

The clearest cases:
- **hold**: $0422 (slot 7, kind 110) held at 216 (its value then), moment 74 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 7 (kind 110), y ($0440), every 6 frames from frame 0: alone 157 154 153 151 150 149 148 148 139 124; changed 158 158 158 158 158 158 158 158 158 158
  - object slot 7 (kind 110), field 17 ($04C7), every 6 frames from frame 0: alone 255 255 0 0 0 0 0 0 253 254; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 3 (kind 110), x ($0400), every 6 frames from frame 0: alone 226 222 221 218 213 209 204 201 199 196; changed 226 222 221 218 213 209 204 201 199 196
  - object slot 3 (kind 110), x_sub ($044B), every 6 frames from frame 0: alone 128 240 240 144 112 0 128 112 8 248; changed 128 240 240 144 112 0 128 112 8 248
  - object slot 3 (kind 110), screen_x ($0487), every 6 frames from frame 0: alone 164 160 159 156 151 147 138 130 123 114; changed 164 160 159 156 151 147 138 130 123 114
  - object slot 3 (kind 110), facing ($04A5), every 6 frames from frame 0: alone 201 201 201 201 201 201 201 201 201 201; changed 201 201 201 201 201 201 201 201 201 201
- **other**: $041D (slot 2, kind 66 restore_point) read as 232, moment 89 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 2 (kind 66 restore_point), field 14 ($0495), every 6 frames from frame 0: alone 13 13 13 13 13 13 13 13 13 13; changed 29 29 29 29 29 29 29 29 29 29
