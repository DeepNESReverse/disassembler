# Object table field 4 (x): $03FD–$040B, one cell per slot

Code and play ($03FD), named so far `obj_x` (the object table (game.json): field array, slot):
- code: written by 32 routines (l4_obj_any_spawn_or_free ×6, obj_any_move_5 ×4, obj_any_spawn_or_free_14 ×3), read by 56; an indexed base ×186, the index using 0…14 (15 values)
- play: changed on 161206 of 436617 frames (+1 31905, −1 25652, other 103649), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,254
- values in play (the lowest 12 of 256): 0 1 2 3 4 5 6 7 8 9 10 11

Code and play ($03FE), named so far `obj_x+1` (the object table (game.json): field array, slot):
- play: changed on 27556 of 436617 frames (+1 458, −1 0, other 27098), 256 values, levels 0,1,2,3,6,8,12
- values in play (the lowest 12 of 256): 0 1 2 3 4 5 6 7 8 9 10 11

Code and play ($03FF), named so far `obj_x+2` (the object table (game.json): field array, slot):
- code: written by 1 routines (sub_B6_9A15 ×1), read by 1
- play: changed on 57330 of 436617 frames (+1 17571, −1 16989, other 22770), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,254,255
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 16

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $03FD slot 0: read in 91 moments; hold 60/60/0 (sq1 14, sq2 13, noise 10, dmc 16, scroll 32, palette 2, nametable 37, chr 40, oam 60, objects 57, proven 39; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13); other 91/85/2 (sq1 21, sq2 18, tri 1, noise 18, dmc 29, scroll 39, palette 3, nametable 42, chr 57, oam 71, objects 66, proven 47; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,254,255); poke 91/80/4 (sq1 11, sq2 10, noise 16, dmc 26, scroll 29, palette 2, nametable 33, chr 49, oam 65, objects 60, proven 35; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,254,255)
- $03FE slot 1: read in 10 moments; hold 7/7/0 (objects 7; levels 3,6,12); other 10/7/0 (objects 7; levels 3,6,12); poke 10/7/1 (objects 7; levels 3,6,12)
- $03FF slot 2: read in 61 moments; hold 26/26/0 (dmc 3, scroll 1, palette 4, nametable 1, chr 1, oam 13, objects 26, proven 2; levels 1,2,3,6,7,8,9,10,11,12,13); other 60/59/0 (sq1 1, sq2 1, noise 1, dmc 6, scroll 1, palette 4, nametable 2, chr 5, oam 19, objects 59, proven 3; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 49/46/2 (dmc 4, palette 4, chr 3, oam 7, objects 46; levels 1,3,4,5,6,7,8,9,11,12)
- $0400 slot 3: read in 65 moments; hold 37/36/0 (sq1 3, sq2 2, tri 1, noise 5, dmc 6, scroll 5, nametable 7, chr 9, oam 28, objects 36, proven 7; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 64/64/0 (sq1 4, sq2 3, tri 1, noise 7, dmc 12, scroll 8, nametable 11, chr 16, oam 42, objects 64, proven 11; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 53/51/2 (sq1 1, noise 3, dmc 7, scroll 2, nametable 4, chr 7, oam 31, objects 51, proven 2; levels 1,2,3,4,5,6,7,8,9,10,11,12,13)
- $0401 slot 4: read in 62 moments; hold 46/46/0 (sq1 3, sq2 3, noise 4, dmc 10, scroll 5, palette 9, nametable 7, chr 14, oam 33, objects 46, proven 5; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 62/62/0 (sq1 3, sq2 4, noise 6, dmc 9, scroll 6, palette 9, nametable 9, chr 20, oam 43, objects 62, proven 7; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 50/48/2 (sq1 1, sq2 2, noise 2, dmc 4, scroll 2, palette 8, nametable 6, chr 14, oam 31, objects 47, proven 4; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $0402 slot 5: read in 58 moments; hold 41/41/0 (sq1 7, sq2 4, tri 2, noise 11, dmc 10, scroll 13, palette 2, nametable 10, chr 16, oam 39, objects 41, proven 13; levels 1,2,3,4,5,6,7,8,9,10,11,12); other 58/58/0 (sq1 7, sq2 3, tri 2, noise 10, dmc 13, scroll 12, nametable 10, chr 19, oam 47, objects 58, proven 13; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 49/47/3 (sq1 8, sq2 4, tri 2, noise 10, dmc 8, scroll 7, palette 1, nametable 8, chr 17, oam 35, objects 47, proven 7; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $0403 slot 6: read in 39 moments; hold 22/22/0 (sq1 1, noise 2, dmc 4, scroll 3, nametable 1, chr 5, oam 20, objects 22, proven 3; levels 1,2,3,4,5,6,7,9,11,12); other 39/39/0 (sq1 1, noise 2, dmc 7, scroll 4, nametable 2, chr 8, oam 25, objects 39, proven 4; levels 1,2,3,4,5,6,7,8,9,11,12); poke 30/30/0 (sq1 1, sq2 1, noise 1, dmc 4, scroll 2, nametable 2, chr 4, oam 17, objects 30, proven 3; levels 1,2,4,5,6,7,8,9,11,12)
- $0404 slot 7: read in 27 moments; hold 22/22/0 (sq1 2, sq2 1, noise 2, dmc 5, scroll 2, nametable 3, chr 5, oam 18, objects 22, proven 3; levels 2,3,4,5,6,7,9,11,12); other 27/27/0 (sq1 3, sq2 2, noise 3, dmc 5, scroll 3, nametable 4, chr 6, oam 20, objects 27, proven 4; levels 1,2,3,4,5,6,7,9,11,12); poke 12/12/0 (sq1 1, scroll 1, nametable 1, chr 3, oam 7, objects 12; levels 1,2,4,5,7,9,11)
- $0405 slot 8: read in 16 moments; hold 11/11/0 (sq1 1, dmc 3, scroll 1, nametable 1, chr 3, oam 7, objects 11; levels 2,4,5,6,7,9,11); other 16/16/0 (sq1 1, dmc 2, scroll 2, nametable 2, chr 2, oam 9, objects 16, proven 1; levels 2,4,5,6,7,9,11); poke 9/9/0 (sq1 1, nametable 1, chr 3, oam 5, objects 9; levels 2,4,6,7,9,11)
- $0406 slot 9: read in 12 moments; hold 9/9/0 (sq1 2, sq2 2, nametable 1, chr 4, oam 7, objects 9; levels 2,4,5,6,7,11); other 12/12/0 (sq1 2, sq2 2, noise 2, nametable 1, chr 3, oam 8, objects 12; levels 2,4,5,6,7,11); poke 8/8/0 (chr 2, oam 4, objects 8; levels 2,4,7,11)
- $0407 slot 10: read in 6 moments; hold 3/3/0 (chr 1, oam 1, objects 3; levels 2,7,11); other 6/6/0 (chr 1, oam 1, objects 6; levels 2,4,7,11); poke 4/4/0 (objects 4; levels 2,4,11)
- $0408 slot 11: read in 4 moments; hold 3/3/0 (chr 1, oam 3, objects 3; levels 4,7,11); other 4/4/0 (chr 1, oam 3, objects 4; levels 2,4,7,11); poke 1/1/0 (objects 1; levels 2)
- $0409 slot 12: read in 3 moments; hold 2/2/0 (sq1 1, scroll 1, nametable 1, chr 1, oam 2, objects 2; levels 2,7); other 3/3/0 (sq1 2, sq2 1, noise 2, scroll 1, nametable 2, chr 2, oam 3, objects 3, proven 1; levels 2,4,7); poke 2/2/0 (sq1 1, sq2 1, noise 2, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 2,4)
- $040A slot 13: read in 1 moments; hold 0/0/0; other 1/1/0 (objects 1; levels 2); poke 1/1/0 (objects 1; levels 2)
- $040B slot 14: read in 1 moments; hold 1/1/0 (noise 1, oam 1, objects 1; levels 2); other 1/1/0 (noise 1, oam 1, objects 1; levels 2); poke 1/1/0 (noise 1, oam 1, objects 1; levels 2)

The clearest cases:
- **hold**: $03FF (slot 2, kind 62 brown_column) held at 131 (its value then), moment 64 (level 6, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 2 (kind 62 brown_column), screen_x ($0486), every 6 frames from frame 0: alone 148 154 160 166 172 178 184 190 196 202; changed 147 147 147 147 147 147 147 147 147 147
- **other**: $03FE (slot 1, empty) read as 250, moment 67 (level 6, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 1 (empty), x_hi ($03EF), every 6 frames from frame 0: alone 130 131 131 131 131 131 132 132 132 132; changed 131 137 143 149 155 161 167 173 179 185
