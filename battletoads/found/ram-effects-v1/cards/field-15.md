# Object table field 15 (facing): $04A2–$04B0, one cell per slot

Code and play ($04A2), named so far `obj_facing` (the object table (game.json): field array, slot):
- code: written by 47 routines (obj_any_spawn_or_free_7 ×7, sub_B0_87C2 ×5, obj_toad_handler ×4), read by 69; an indexed base ×262, the index using 0…14 (15 values)
- play: changed on 8655 of 436617 frames (+1 0, −1 0, other 8655), 21 values, levels 1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 21): 0 4 8 12 16 20 24 40 44 56 64 68 72 76 80 88

Code and play ($04A3), named so far `obj_facing+1` (the object table (game.json): field array, slot):
- code: written by 0 routines (), read by 1
- play: changed on 63 of 436617 frames (+1 0, −1 0, other 63), 2 values, levels 1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 2 of 2): 0 128

Code and play ($04A4), named so far `obj_facing+2` (the object table (game.json): field array, slot):
- play: changed on 934 of 436617 frames (+1 122, −1 0, other 812), 12 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 12): 0 1 2 3 8 10 32 64 66 72 96 128 130 136 138 160

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $04A2 slot 0: read in 68 moments; hold 41/41/0 (sq1 3, sq2 2, noise 6, dmc 12, scroll 13, palette 1, nametable 15, chr 26, oam 41, objects 27, proven 15; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 62/62/0 (sq1 18, sq2 17, noise 19, dmc 16, scroll 34, palette 2, nametable 35, chr 46, oam 57, objects 60, proven 38; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 54/41/2 (sq1 7, sq2 5, noise 10, dmc 8, scroll 13, palette 1, nametable 14, chr 24, oam 35, objects 38, proven 16; levels 1,2,4,5,6,7,8,9,10,11,12,13)
- $04A3 slot 1: read in 68 moments; hold 2/1/0 (chr 1; levels 9); other 66/50/0 (sq1 2, sq2 2, noise 8, dmc 15, scroll 3, nametable 3, chr 20, oam 38, objects 42, proven 4; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 2/0/2
- $04A4 slot 2: read in 68 moments; hold 13/11/0 (dmc 4, chr 2, oam 7, objects 9; levels 1,5,6,7,8,11,13); other 22/19/0 (dmc 4, chr 2, oam 15, objects 9; levels 1,3,5,6,7,8,10,11,13); poke 8/6/2 (oam 6; levels 1,3,6,8)
- $04A5 slot 3: read in 68 moments; hold 34/32/0 (sq1 2, sq2 1, tri 1, noise 1, dmc 9, scroll 3, nametable 4, chr 10, oam 31, objects 18, proven 3; levels 1,2,3,4,5,6,7,8,9,11,12,13); other 36/32/0 (sq1 2, sq2 1, tri 1, noise 1, dmc 9, scroll 3, nametable 4, chr 10, oam 31, objects 18, proven 3; levels 1,2,3,4,5,6,7,8,9,11,12,13); poke 7/0/2
- $04A6 slot 4: read in 68 moments; hold 31/29/0 (sq1 1, noise 1, dmc 9, scroll 3, nametable 2, chr 11, oam 29, objects 22, proven 5; levels 1,2,3,4,5,7,8,9,11,13); other 36/29/0 (sq1 1, noise 2, dmc 10, scroll 4, nametable 3, chr 11, oam 29, objects 22, proven 6; levels 1,2,3,4,5,7,8,9,11,13); poke 9/1/2 (noise 1, chr 1, oam 1, objects 1; levels 1)
- $04A7 slot 5: read in 68 moments; hold 30/28/0 (sq1 3, sq2 1, noise 4, dmc 7, scroll 2, chr 9, oam 25, objects 16, proven 3; levels 1,2,3,4,5,6,7,8,9,10,11,12); other 40/29/0 (sq1 3, sq2 1, noise 5, dmc 8, scroll 3, nametable 1, chr 10, oam 26, objects 17, proven 4; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 20/1/3 (chr 1, oam 1, objects 1; levels 1)
- $04A8 slot 6: read in 68 moments; hold 27/20/0 (noise 2, dmc 7, chr 6, oam 16, objects 11; levels 1,2,3,4,5,7,8,9,11,12); other 31/20/0 (noise 2, dmc 7, chr 6, oam 16, objects 11; levels 1,2,3,4,5,7,8,9,11,12); poke 16/0/2
- $04A9 slot 7: read in 68 moments; hold 20/18/0 (noise 2, dmc 5, scroll 2, nametable 2, chr 8, oam 15, objects 13, proven 2; levels 1,2,3,4,5,6,7,9,11,12); other 20/18/0 (noise 2, dmc 5, scroll 2, nametable 2, chr 8, oam 15, objects 13, proven 2; levels 1,2,3,4,5,6,7,9,11,12); poke 7/0/2
- $04AA slot 8: read in 68 moments; hold 13/10/0 (dmc 3, chr 3, oam 8, objects 6; levels 2,5,6,7,9,11); other 15/10/0 (dmc 3, chr 3, oam 8, objects 6; levels 2,5,6,7,9,11); poke 7/0/2
- $04AB slot 9: read in 68 moments; hold 10/8/0 (noise 3, dmc 1, scroll 1, nametable 1, chr 4, oam 7, objects 6, proven 1; levels 4,5,6,7,9,11); other 12/8/0 (noise 3, dmc 1, scroll 1, nametable 1, chr 4, oam 7, objects 6, proven 1; levels 4,5,6,7,9,11); poke 6/0/2
- $04AC slot 10: read in 68 moments; hold 4/3/0 (chr 2, oam 1, objects 2; levels 7,9,11); other 7/4/0 (noise 1, chr 2, oam 1, objects 3; levels 2,7,9,11); poke 5/1/2 (noise 1, objects 1; levels 2)
- $04AD slot 11: read in 68 moments; hold 5/4/0 (chr 2, oam 3, objects 1; levels 4,7,9,11); other 5/4/0 (chr 2, oam 3, objects 1; levels 4,7,9,11); poke 2/0/2
- $04AE slot 12: read in 68 moments; hold 4/3/0 (chr 2, oam 2, objects 1; levels 2,7,9); other 5/4/0 (sq2 1, chr 2, oam 3, objects 2; levels 2,4,7,9); poke 4/2/2 (oam 2, objects 1; levels 2,4)
- $04AF slot 13: read in 68 moments; hold 2/1/0 (chr 1; levels 9); other 3/2/0 (noise 1, chr 1, oam 1, objects 1; levels 2,9); poke 2/0/2
- $04B0 slot 14: read in 68 moments; hold 3/2/0 (noise 1, chr 1, oam 1, objects 1; levels 2,9); other 3/2/0 (noise 1, chr 1, oam 1, objects 1; levels 2,9); poke 3/0/2

The clearest cases:
- **other**: $04A2 (slot 0, kind 1 toad) read as 16, moment 1 (level 1, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 2 (kind 23 dragon), facing ($04A4), every 6 frames from frame 0: alone 8 8 8 8 8 8 8 8 8 8; changed 24 24 24 24 24 24 24 24 24 24
  - code run only when changed (routine, instruction starts): obj_toad_handler (10), obj_toad_update_2 (7)
- **hold**: $04A4 (slot 2, kind 66 restore_point) held at 128 (its value then), moment 89 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 2 (kind 66 restore_point), screen_x ($0486), every 6 frames from frame 0: alone 0 0 0 0 0 0 0 0 0 0; changed 255 255 255 255 255 255 255 255 255 255
  - code run only when changed (routine, instruction starts): read_vram (2)
