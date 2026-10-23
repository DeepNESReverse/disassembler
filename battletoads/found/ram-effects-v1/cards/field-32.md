# Object table field 32 (counter_32): $05A1–$05AF, one cell per slot

Code and play ($05A1), named so far `obj_counter_32` (the object table (game.json): field array, slot):
- code: written by 27 routines (l13_obj_dark_queen_handler ×5, obj_any_update_21 ×3, obj_toad_handler ×2), read by 21; an indexed base ×94, the index using 0…14 (14 values)
- play: changed on 43 of 436617 frames (+1 22, −1 20, other 1), 3 values, levels 0,1,254
- values in play (the lowest 3 of 3): 0 1 39

Code and play ($05A4), named so far `obj_counter_32+3` (the object table (game.json): field array, slot):
- play: changed on 20338 of 436617 frames (+1 16118, −1 3449, other 771), 256 values, levels 0,1,2,4,5,6,7,8,9,11,12,13,254
- values in play (the lowest 13 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12

Code and play ($05A5), named so far `obj_counter_32+4` (the object table (game.json): field array, slot):
- play: changed on 16507 of 436617 frames (+1 10490, −1 5473, other 544), 256 values, levels 0,1,2,3,4,5,6,7,8,9,11,12
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $05A1 slot 0: read in 3 moments; hold 0/0/0; other 3/3/3 (noise 3, scroll 3, mask 3, palette 3, chr 3, oam 3, objects 3, proven 3; levels 0); poke 3/3/3 (noise 3, scroll 3, mask 3, palette 3, chr 3, oam 3, objects 3, proven 3; levels 0)
- $05A4 slot 3: read in 17 moments; hold 8/8/0 (sq1 2, sq2 1, tri 1, noise 2, dmc 2, scroll 3, nametable 2, chr 4, oam 7, objects 8, proven 3; levels 1,7,8,9,11,12,13); other 15/15/0 (sq1 3, sq2 2, tri 1, noise 3, dmc 4, scroll 3, nametable 2, chr 7, oam 14, objects 15, proven 4; levels 1,5,7,8,9,11,12,13); poke 13/13/0 (sq1 2, sq2 2, tri 1, noise 3, dmc 4, scroll 2, nametable 1, chr 4, oam 12, objects 13, proven 2; levels 1,5,7,8,9,11,12,13)
- $05A5 slot 4: read in 14 moments; hold 10/10/0 (sq2 2, noise 1, dmc 2, scroll 3, nametable 3, chr 5, oam 8, objects 10, proven 4; levels 3,5,7,8,11); other 14/14/0 (sq1 1, sq2 2, noise 3, dmc 4, scroll 5, palette 1, nametable 5, chr 8, oam 12, objects 14, proven 6; levels 3,5,7,8,9,11); poke 12/11/1 (sq1 2, sq2 2, noise 3, dmc 4, scroll 5, palette 1, nametable 6, chr 6, oam 10, objects 11, proven 6; levels 5,7,8,11)
- $05A6 slot 5: read in 15 moments; hold 9/9/0 (sq1 1, sq2 1, noise 4, dmc 3, scroll 2, palette 1, nametable 1, chr 3, oam 8, objects 9, proven 2; levels 7,9,10,11,12); other 14/14/0 (sq1 2, sq2 3, noise 6, dmc 5, scroll 3, palette 1, nametable 4, chr 7, oam 14, objects 14, proven 5; levels 5,7,9,10,11,12); poke 14/13/1 (sq1 1, sq2 2, noise 6, dmc 5, scroll 3, palette 1, nametable 2, chr 5, oam 13, objects 13, proven 4; levels 5,7,9,10,11,12)
- $05A7 slot 6: read in 8 moments; hold 4/4/0 (noise 1, dmc 2, scroll 1, oam 4, objects 4, proven 1; levels 11,12); other 7/7/0 (noise 1, dmc 3, scroll 1, oam 7, objects 7, proven 1; levels 5,11,12); poke 7/7/0 (noise 1, dmc 3, scroll 1, oam 7, objects 7, proven 1; levels 5,11,12)
- $05A8 slot 7: read in 2 moments; hold 2/2/0 (oam 2, objects 2; levels 4,12); other 2/2/0 (oam 2, objects 2; levels 4,12); poke 1/1/0 (oam 1, objects 1; levels 4)
- $05A9 slot 8: read in 1 moments; hold 0/0/0; other 1/1/0 (objects 1; levels 4); poke 1/1/0 (objects 1; levels 4)
- $05AA slot 9: read in 1 moments; hold 1/1/0 (objects 1; levels 11); other 1/1/0 (objects 1; levels 11); poke 1/1/0 (objects 1; levels 11)
- $05AC slot 11: read in 2 moments; hold 2/2/0 (oam 2, objects 2; levels 4,11); other 2/2/0 (oam 2, objects 2; levels 4,11); poke 1/1/0 (nametable 1, chr 1, oam 1, objects 1, proven 1; levels 4)
- $05AD slot 12: read in 2 moments; hold 2/2/0 (sq1 2, sq2 2, noise 2, nametable 2, chr 2, oam 2, objects 2, proven 2; levels 2,4); other 2/2/0 (sq1 1, sq2 2, noise 2, nametable 1, chr 1, oam 2, objects 2, proven 2; levels 2,4); poke 1/1/0 (noise 1, oam 1, objects 1; levels 2)
- $05AE slot 13: read in 1 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (noise 1, objects 1; levels 2)
- $05AF slot 14: read in 1 moments; hold 1/1/0 (noise 1, oam 1, objects 1; levels 2); other 1/1/0 (noise 1, oam 1, objects 1; levels 2); poke 0/0/0

The clearest cases:
- **other**: $05AA (slot 9, kind 112 shark) read as 32, moment 29 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 44 (76 frames)
  - object slot 4 (kind 111 fish), field 2 ($03E3), every 6 frames from frame 44: alone 148 12 132 252 116 176 176 176 176 176; changed 140 212 28 100 172 208 208 208 208 208
  - object slot 4 (kind 111 fish), x ($0401), every 6 frames from frame 44: alone 71 66 61 57 54 52 52 52 52 52; changed 72 69 67 65 63 62 62 62 62 62
  - object slot 4 (kind 111 fish), x_sub ($044C), every 6 frames from frame 44: alone 184 88 152 120 56 208 208 208 208 208; changed 48 128 32 32 128 208 208 208 208 208
  - object slot 4 (kind 111 fish), field 10 ($045B), every 6 frames from frame 44: alone 152 216 248 184 24 240 240 240 240 240; changed 88 248 248 88 8 112 112 112 112 112
  - object slot 4 (kind 111 fish), screen_x ($0488), every 6 frames from frame 44: alone 71 66 61 57 54 52 52 52 52 52; changed 72 69 67 65 63 62 62 62 62 62
  - object slot 4 (kind 111 fish), field 28 ($0569), every 6 frames from frame 44: alone 79 79 79 79 79 79 79 79 79 79; changed 46 46 46 46 46 46 46 46 46 46
  - code run only when left alone: l9_obj_any_update_3 (16), obj_any_check_5 (2)
- **hold**: $05A5 (slot 4, kind 54) held at 12 (its value then), moment 90 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 4 (116 frames)
  - object slot 4 (kind 54), field 22 ($050F), every 6 frames from frame 4: alone 0 0 0 0 0 0 0 0 0 0; changed 2 2 2 2 2 2 2 2 2 2
  - code run only when left alone: obj_any_move_19 (4)
