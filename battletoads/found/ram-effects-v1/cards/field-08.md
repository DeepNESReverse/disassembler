# Object table field 8 (y): $0439–$0447, one cell per slot

Code and play ($0439), named so far `obj_y` (the object table (game.json): field array, slot):
- code: written by 25 routines (l6_frame_update ×3, l4_obj_any_spawn_or_free ×3, obj_k25_handler ×2), read by 41; an indexed base ×136, the index using 0…14 (15 values)
- play: changed on 133381 of 436617 frames (+1 37027, −1 30610, other 65744), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 12 of 256): 0 1 2 3 4 5 6 7 8 9 10 11

Code and play ($043B), named so far `obj_y+2` (the object table (game.json): field array, slot):
- code: written by 2 routines (l1_frame_update_2 ×5, sub_B6_9D08 ×1), read by 3
- play: changed on 42551 of 436617 frames (+1 4614, −1 30037, other 7900), 256 values, levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 14 15 16

Code and play ($043C), named so far `obj_y+3` (the object table (game.json): field array, slot):
- play: changed on 49780 of 436617 frames (+1 11571, −1 7350, other 30859), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $0439 slot 0: read in 66 moments; hold 58/56/0 (sq1 14, sq2 15, noise 19, dmc 10, scroll 27, mask 3, palette 3, nametable 31, chr 48, oam 55, objects 56, proven 34; levels 0,1,2,3,4,5,6,7,9,10,11,12,13); other 66/66/0 (sq1 16, sq2 19, tri 2, noise 25, dmc 16, scroll 34, mask 5, palette 5, nametable 40, chr 61, oam 66, objects 66, proven 44; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13); poke 65/63/2 (sq1 6, sq2 7, tri 2, noise 16, dmc 15, scroll 22, mask 5, palette 3, nametable 22, chr 51, oam 62, objects 63, proven 27; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13)
- $043B slot 2: read in 63 moments; hold 19/19/0 (noise 4, dmc 4, scroll 5, palette 4, nametable 3, chr 2, oam 14, objects 19, proven 1; levels 1,2,3,6,7,8,9,10,11,12,13); other 51/48/0 (noise 4, dmc 4, scroll 5, palette 4, nametable 3, chr 6, oam 21, objects 48, proven 1; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 41/34/4 (noise 3, dmc 3, scroll 4, palette 4, nametable 2, chr 4, oam 10, objects 34; levels 1,3,4,5,6,7,8,9,11,12)
- $043C slot 3: read in 65 moments; hold 29/28/0 (sq1 2, sq2 2, tri 1, noise 4, dmc 4, scroll 3, nametable 4, chr 7, oam 25, objects 28, proven 5; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 55/48/0 (sq1 3, sq2 2, tri 1, noise 5, dmc 7, scroll 6, nametable 7, chr 14, oam 43, objects 48, proven 6; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 44/36/2 (sq1 3, sq2 2, tri 1, noise 4, dmc 7, scroll 6, nametable 5, chr 10, oam 31, objects 36, proven 4; levels 1,2,4,5,6,7,8,9,10,11,12,13)
- $043D slot 4: read in 62 moments; hold 43/42/0 (sq1 2, sq2 3, noise 3, dmc 6, scroll 12, palette 9, nametable 7, chr 13, oam 36, objects 42, proven 7; levels 1,2,3,4,5,7,8,9,10,11,12,13); other 61/57/0 (sq1 3, sq2 6, noise 4, dmc 8, scroll 14, palette 9, nametable 11, chr 17, oam 48, objects 56, proven 7; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 50/44/2 (sq1 1, sq2 5, noise 4, dmc 7, scroll 13, palette 8, nametable 11, chr 15, oam 36, objects 43, proven 6; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $043E slot 5: read in 58 moments; hold 38/36/0 (sq1 3, sq2 2, noise 6, dmc 7, scroll 7, palette 1, nametable 5, chr 10, oam 31, objects 36, proven 6; levels 1,2,3,4,5,6,7,8,9,10,11,12); other 56/55/0 (sq1 5, sq2 2, noise 7, dmc 11, scroll 12, palette 1, nametable 12, chr 18, oam 47, objects 55, proven 13; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 50/45/3 (sq1 3, sq2 1, noise 5, dmc 7, scroll 9, palette 1, nametable 7, chr 15, oam 38, objects 45, proven 9; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $043F slot 6: read in 39 moments; hold 21/21/0 (dmc 3, scroll 2, nametable 1, chr 5, oam 17, objects 21, proven 2; levels 1,2,3,5,6,7,8,9,11,12); other 35/35/0 (dmc 6, scroll 3, nametable 4, chr 6, oam 25, objects 35, proven 4; levels 1,2,3,4,5,6,7,8,9,11,12); poke 27/26/0 (dmc 4, scroll 2, nametable 4, chr 5, oam 19, objects 26, proven 3; levels 1,2,4,5,7,8,9,11,12)
- $0440 slot 7: read in 27 moments; hold 23/23/0 (sq1 1, sq2 1, noise 4, dmc 4, scroll 1, nametable 2, chr 5, oam 18, objects 23, proven 2; levels 1,2,3,4,5,6,7,9,11,12); other 25/25/0 (sq1 3, sq2 2, noise 4, dmc 4, scroll 3, nametable 4, chr 8, oam 21, objects 25, proven 3; levels 1,2,3,4,5,6,7,9,11,12); poke 12/11/0 (sq1 1, noise 1, scroll 1, nametable 1, chr 3, oam 9, objects 11; levels 1,2,4,5,6,7,9,11)
- $0441 slot 8: read in 16 moments; hold 8/8/0 (noise 1, dmc 1, oam 4, objects 8; levels 2,4,5,6,11); other 15/14/0 (sq1 1, noise 1, dmc 1, scroll 1, nametable 1, chr 2, oam 10, objects 14; levels 2,4,5,6,7,9,11); poke 8/7/0 (sq1 1, noise 1, scroll 2, nametable 2, chr 2, oam 5, objects 7, proven 1; levels 2,6,7,9,11)
- $0442 slot 9: read in 12 moments; hold 7/7/0 (sq1 3, sq2 2, noise 5, dmc 1, scroll 2, nametable 2, chr 5, oam 5, objects 7, proven 2; levels 2,4,5,6,11); other 11/10/0 (sq1 2, sq2 2, noise 4, dmc 1, scroll 1, nametable 1, chr 5, oam 7, objects 10, proven 1; levels 2,4,5,6,7,11); poke 7/6/0 (noise 1, chr 2, oam 3, objects 6; levels 2,4,7,11)
- $0443 slot 10: read in 6 moments; hold 3/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7); other 5/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7); poke 4/1/0 (noise 1, objects 1; levels 2)
- $0444 slot 11: read in 4 moments; hold 4/4/1 (sq1 1, sq2 1, tri 1, noise 1, dmc 1, scroll 1, mask 1, nametable 1, chr 2, oam 3, objects 4, proven 1; levels 2,4,7,11); other 4/4/0 (noise 1, chr 1, oam 3, objects 4; levels 2,4,7,11); poke 1/1/0 (noise 1, objects 1; levels 2)
- $0445 slot 12: read in 3 moments; hold 3/3/0 (nametable 2, chr 2, oam 3, objects 3, proven 1; levels 2,4,7); other 3/3/0 (sq1 1, sq2 1, noise 1, nametable 2, chr 2, oam 3, objects 3, proven 1; levels 2,4,7); poke 2/2/0 (sq1 1, sq2 1, noise 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 2,4)
- $0446 slot 13: read in 1 moments; hold 1/1/0 (objects 1; levels 2); other 1/1/0 (objects 1; levels 2); poke 1/1/0 (objects 1; levels 2)
- $0447 slot 14: read in 1 moments; hold 1/1/0 (sq2 1, oam 1, objects 1, proven 1; levels 2); other 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (oam 1, objects 1; levels 2)

The clearest cases:
- **other**: $043B (slot 2, kind 66 restore_point) read as 206, moment 24 (level 7, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 2 (kind 66 restore_point), field 14 ($0495), every 6 frames from frame 0: alone 44 52 58 64 70 76 80 82 88 98; changed 28 36 42 48 54 60 64 66 72 82
- **hold**: $043C (slot 3, kind 114 duck) held at 27 (its value then), moment 29 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 3 (kind 114 duck), field 14 ($0496), every 6 frames from frame 0: alone 191 193 193 193 193 193 193 193 193 193; changed 190 190 190 190 190 190 190 190 190 190
