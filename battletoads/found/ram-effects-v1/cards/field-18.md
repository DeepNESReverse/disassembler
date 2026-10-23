# Object table field 18 (field 18): $04CF–$04DD, one cell per slot

Code and play ($04CF), named so far `obj_field_18` (the object table (game.json): field array, slot):
- code: written by 27 routines (obj_toad_handler ×4, obj_any_spawn_or_free_7 ×4, obj_any_update_3 ×3), read by 6; an indexed base ×55, the index using 0…14 (15 values)
- play: changed on 122067 of 436617 frames (+1 28, −1 70, other 121969), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Code and play ($04D1), named so far `obj_field_18+2` (the object table (game.json): field array, slot):
- code: written by 2 routines (sub_B6_9D08 ×1, l1_frame_update_2 ×1), read by 0
- play: changed on 8690 of 436617 frames (+1 5, −1 0, other 8685), 242 values, levels 1,3,6,12,13,254,255
- values in play (the lowest 16 of 242): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 15 16

Code and play ($04D2), named so far `obj_field_18+3` (the object table (game.json): field array, slot):
- play: changed on 34193 of 436617 frames (+1 3, −1 15, other 34175), 245 values, levels 1,2,3,4,5,6,7,9,11,12,13
- values in play (the lowest 16 of 245): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 15 16

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $04CF slot 0: read in 58 moments; hold 48/48/0 (sq1 7, sq2 7, noise 9, dmc 10, scroll 18, nametable 24, chr 33, oam 44, objects 48, proven 26; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 51/51/0 (sq1 7, sq2 8, noise 10, dmc 11, scroll 19, nametable 26, chr 35, oam 47, objects 51, proven 27; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 38/37/1 (sq1 1, noise 6, dmc 8, scroll 7, nametable 7, chr 13, oam 32, objects 37, proven 9; levels 1,3,4,5,6,7,8,9,11,12)
- $04D1 slot 2: read in 2 moments; hold 2/2/0 (dmc 1, scroll 1, nametable 1, chr 2, oam 2, objects 2, proven 1; levels 3,6); other 2/2/0 (dmc 1, scroll 1, nametable 1, chr 2, oam 2, objects 2, proven 1; levels 3,6); poke 1/1/0 (dmc 1, oam 1, objects 1; levels 3)
- $04D2 slot 3: read in 15 moments; hold 15/15/0 (sq1 2, sq2 1, tri 1, noise 4, dmc 2, scroll 1, nametable 1, chr 3, oam 13, objects 15, proven 2; levels 1,2,4,6,7,9,11,12,13); other 15/15/0 (sq1 2, sq2 1, tri 1, noise 4, dmc 2, scroll 1, nametable 1, chr 3, oam 13, objects 15, proven 2; levels 1,2,4,6,7,9,11,12,13); poke 11/11/0 (noise 3, dmc 2, scroll 1, chr 1, oam 8, objects 11, proven 1; levels 1,2,4,9,11,12,13)
- $04D3 slot 4: read in 20 moments; hold 17/17/0 (sq1 1, sq2 1, noise 4, dmc 4, scroll 1, chr 5, oam 15, objects 17, proven 3; levels 1,2,3,4,5,7,9,11,12); other 20/20/0 (sq1 1, sq2 2, noise 4, dmc 4, scroll 1, nametable 1, chr 6, oam 18, objects 20, proven 4; levels 1,2,3,4,5,7,9,11,12); poke 16/15/1 (sq2 1, noise 1, dmc 2, nametable 1, chr 4, oam 13, objects 15, proven 1; levels 1,2,4,5,7,9,11,12)
- $04D4 slot 5: read in 25 moments; hold 23/23/0 (sq1 1, sq2 1, noise 8, dmc 5, scroll 6, palette 1, nametable 3, chr 6, oam 15, objects 23, proven 4; levels 1,2,4,5,6,9,10,11,12); other 24/24/0 (sq1 1, sq2 1, noise 8, dmc 5, scroll 6, palette 1, nametable 2, chr 5, oam 15, objects 24, proven 4; levels 1,2,4,5,6,7,9,10,11,12); poke 22/21/1 (noise 2, dmc 2, scroll 2, chr 3, oam 10, objects 21; levels 1,2,4,5,6,7,9,10,11,12)
- $04D5 slot 6: read in 8 moments; hold 8/8/0 (sq1 1, sq2 1, noise 3, dmc 1, scroll 1, nametable 1, chr 2, oam 7, objects 8, proven 1; levels 1,2,11,12); other 8/8/0 (sq1 1, sq2 1, noise 3, dmc 1, scroll 1, nametable 1, chr 2, oam 7, objects 8, proven 1; levels 1,2,11,12); poke 7/7/0 (noise 1, chr 1, oam 3, objects 7; levels 1,2,11,12)
- $04D6 slot 7: read in 4 moments; hold 3/3/0 (noise 1, oam 3, objects 3; levels 4,5,12); other 4/4/0 (noise 1, oam 4, objects 4; levels 2,4,5,12); poke 2/2/0 (oam 2, objects 2; levels 5,12)
- $04D7 slot 8: read in 3 moments; hold 2/2/0 (objects 2; levels 4,11); other 3/3/0 (oam 1, objects 3; levels 2,4,11); poke 3/3/0 (oam 1, objects 3; levels 2,4,11)
- $04D8 slot 9: read in 1 moments; hold 1/1/0 (objects 1; levels 4); other 1/1/0 (objects 1; levels 4); poke 0/0/0
- $04D9 slot 10: read in 1 moments; hold 1/1/0 (objects 1; levels 11); other 1/1/0 (objects 1; levels 11); poke 1/1/0 (objects 1; levels 11)
- $04DA slot 11: read in 1 moments; hold 1/1/0 (objects 1; levels 2); other 1/1/0 (objects 1; levels 2); poke 1/1/0 (objects 1; levels 2)
- $04DB slot 12: read in 2 moments; hold 2/2/0 (noise 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 2,4); other 2/2/0 (noise 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 2,4); poke 1/1/0 (oam 1, objects 1; levels 2)
- $04DC slot 13: read in 1 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (objects 1; levels 2)

The clearest cases:
- **hold**: $04CF (slot 0, kind 1 toad) held at 0 (its value then), moment 37 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 0 (kind 1 toad), field 11 ($0466), every 6 frames from frame 0: alone 102 140 178 216 254 36 74 112 150 188; changed 181 181 181 181 181 181 181 181 181 181
- **other**: $04CF (slot 0, kind 1 toad) read as 16, moment 37 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 0 (kind 1 toad), field 11 ($0466), every 6 frames from frame 0: alone 102 140 178 216 254 36 74 112 150 188; changed 197 37 133 229 69 165 5 101 197 37
