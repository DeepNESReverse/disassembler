# Object table field 3 (x_hi): $03EE–$03FC, one cell per slot

Code and play ($03EE), named so far `obj_x_hi` (the object table (game.json): field array, slot):
- code: written by 17 routines (obj_any_move_5 ×4, l4_obj_any_spawn_or_free ×4, sub_B5_8015 ×3), read by 29; an indexed base ×68, the index using 0…14 (15 values)
- play: changed on 1387 of 436617 frames (+1 1083, −1 272, other 32), 256 values, levels 0,1,2,3,4,5,6,8,9,10,11,12,13
- values in play (the lowest 13 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 255

Code and play ($03F0), named so far `obj_x_hi+2` (the object table (game.json): field array, slot):
- play: changed on 600 of 436617 frames (+1 384, −1 89, other 127), 255 values, levels 1,2,3,4,5,6,8,9,10,11,12,13
- values in play (the lowest 14 of 255): 0 1 2 3 4 5 6 7 8 9 10 11 15 19

Code and play ($03F1), named so far `obj_x_hi+3` (the object table (game.json): field array, slot):
- play: changed on 1319 of 436617 frames (+1 458, −1 381, other 480), 90 values, levels 1,2,3,4,5,6,7,8,9,11,12
- values in play (the lowest 16 of 90): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 15 255

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $03EE slot 0: read in 66 moments; hold 22/22/0 (sq1 7, sq2 8, noise 9, dmc 2, scroll 9, nametable 10, chr 14, oam 22, objects 22, proven 11; levels 1,3,4,5,6,10,11,12); other 63/61/2 (sq1 28, sq2 26, tri 3, noise 22, dmc 17, scroll 32, mask 3, palette 1, nametable 42, chr 45, oam 61, objects 61, proven 40; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 58/56/4 (sq1 26, sq2 24, tri 3, noise 21, dmc 17, scroll 29, mask 3, palette 1, nametable 40, chr 39, oam 56, objects 56, proven 38; levels 1,2,3,4,5,6,7,8,9,10,11,12,13)
- $03F0 slot 2: read in 61 moments; hold 7/7/0 (dmc 1, scroll 1, nametable 1, chr 2, oam 6, objects 7, proven 1; levels 3,6,10,11); other 38/37/0 (noise 3, dmc 8, scroll 4, palette 4, nametable 3, chr 16, oam 27, objects 33, proven 6; levels 1,2,3,4,6,7,8,9,10,11,12,13); poke 26/23/2 (noise 1, dmc 6, scroll 4, palette 4, nametable 2, chr 13, oam 15, objects 19, proven 4; levels 1,3,4,6,7,8,9,11,12)
- $03F1 slot 3: read in 65 moments; hold 16/16/0 (sq1 1, noise 2, dmc 2, chr 3, oam 13, objects 15; levels 3,4,5,6,8,9,11,12); other 46/43/0 (sq1 7, sq2 4, tri 2, noise 12, dmc 11, scroll 9, nametable 9, chr 17, oam 41, objects 43, proven 10; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 33/28/2 (sq1 5, sq2 2, tri 2, noise 9, dmc 7, scroll 6, nametable 6, chr 12, oam 26, objects 28, proven 7; levels 1,2,4,6,7,8,9,11,12,13)
- $03F2 slot 4: read in 62 moments; hold 17/17/0 (sq1 3, sq2 2, noise 3, dmc 3, scroll 2, palette 1, nametable 4, chr 4, oam 15, objects 17, proven 2; levels 1,3,4,5,8,10,11,12); other 55/53/0 (sq1 5, sq2 5, noise 8, dmc 10, scroll 8, palette 9, nametable 10, chr 18, oam 41, objects 44, proven 8; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 42/39/2 (sq1 2, sq2 2, noise 5, dmc 5, scroll 5, palette 8, nametable 7, chr 13, oam 28, objects 31, proven 5; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $03F3 slot 5: read in 58 moments; hold 12/12/0 (noise 3, dmc 2, scroll 1, nametable 1, chr 2, oam 11, objects 12, proven 1; levels 3,4,5,6,8,10,11,12); other 51/51/0 (sq1 4, sq2 3, tri 2, noise 11, dmc 11, scroll 6, palette 1, nametable 4, chr 19, oam 43, objects 51, proven 6; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 39/35/3 (sq1 5, sq2 4, tri 2, noise 9, dmc 7, scroll 4, palette 1, nametable 4, chr 15, oam 30, objects 35, proven 4; levels 1,2,3,4,5,7,8,9,10,11,12)
- $03F4 slot 6: read in 39 moments; hold 10/10/0 (noise 2, dmc 2, chr 1, oam 8, objects 10; levels 3,5,6,7,11,12); other 31/31/0 (noise 3, dmc 9, scroll 6, nametable 3, chr 13, oam 25, objects 31, proven 6; levels 1,2,3,4,5,6,7,8,9,11,12); poke 21/21/0 (sq1 1, sq2 1, noise 2, dmc 5, scroll 6, nametable 4, chr 11, oam 17, objects 21, proven 6; levels 1,2,4,5,7,8,9,11,12)
- $03F5 slot 7: read in 27 moments; hold 11/11/0 (sq1 1, sq2 1, noise 2, dmc 1, nametable 1, chr 2, oam 10, objects 11, proven 2; levels 3,5,6,7,11,12); other 22/22/0 (sq1 2, sq2 1, noise 3, dmc 3, nametable 1, chr 8, oam 20, objects 22, proven 1; levels 1,2,3,4,5,6,7,9,11,12); poke 9/9/0 (sq1 1, noise 1, chr 5, oam 8, objects 9; levels 1,2,4,7,9,11)
- $03F6 slot 8: read in 16 moments; hold 8/8/0 (dmc 2, oam 7, objects 8; levels 5,6,11); other 14/14/0 (sq1 1, sq2 1, tri 1, noise 2, dmc 3, scroll 1, mask 1, nametable 1, chr 3, oam 10, objects 14, proven 1; levels 2,4,5,6,7,9,11); poke 7/7/0 (sq1 1, sq2 1, tri 1, noise 2, scroll 1, mask 1, nametable 1, chr 3, oam 5, objects 7, proven 1; levels 2,6,7,9,11)
- $03F7 slot 9: read in 12 moments; hold 4/4/0 (oam 3, objects 4; levels 4,6); other 9/9/0 (sq1 1, noise 1, scroll 1, nametable 1, chr 3, oam 8, objects 9, proven 1; levels 2,4,6,7,11); poke 6/6/0 (noise 1, scroll 1, nametable 1, chr 3, oam 5, objects 6, proven 1; levels 2,4,7,11)
- $03F8 slot 10: read in 6 moments; hold 0/0/0; other 2/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7); poke 1/1/0 (noise 1, objects 1; levels 2)
- $03F9 slot 11: read in 4 moments; hold 2/2/0 (oam 2, objects 2; levels 4,11); other 4/4/0 (noise 1, chr 1, oam 3, objects 4; levels 2,4,7,11); poke 1/1/0 (noise 1, objects 1; levels 2)
- $03FA slot 12: read in 3 moments; hold 0/0/0; other 3/3/0 (sq1 2, sq2 2, noise 2, nametable 1, chr 2, oam 3, objects 3, proven 2; levels 2,4,7); poke 2/2/0 (sq1 2, sq2 2, noise 2, nametable 1, chr 1, oam 2, objects 2, proven 2; levels 2,4)
- $03FB slot 13: read in 1 moments; hold 0/0/0; other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (noise 1, objects 1; levels 2)
- $03FC slot 14: read in 1 moments; hold 0/0/0; other 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (sq2 1, noise 1, oam 1, objects 1; levels 2)

The clearest cases:
- **hold**: $03F1 (slot 3, kind 114 duck) held at 5 (its value then), moment 29 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 16 (104 frames)
  - object slot 3 (kind 114 duck), field 14 ($0496), every 6 frames from frame 16: alone 193 193 193 193 193 193 193 193 193 193; changed 192 188 172 152 129 105 94 93 95 97
  - object slot 4 (kind 111 fish), field 2 ($03E3), every 6 frames from frame 16: alone 87 153 219 29 95 188 52 172 36 156; changed 87 153 219 29 95 179 25 127 229 75
  - object slot 4 (kind 111 fish), x_sub ($044C), every 6 frames from frame 16: alone 16 32 0 0 16 216 184 24 88 56; changed 16 32 0 0 16 192 192 144 128 80
  - object slot 4 (kind 111 fish), field 10 ($045B), every 6 frames from frame 16: alone 216 248 8 120 120 152 40 120 120 248; changed 216 248 8 120 120 80 40 0 0 40
  - object slot 4 (kind 111 fish), field 19 ($04E2), every 6 frames from frame 16: alone 1 1 1 1 1 1 1 1 1 1; changed 1 1 1 1 1 255 255 255 255 255
  - object slot 4 (kind 111 fish), field 27 ($055A), every 6 frames from frame 16: alone 251 127 133 139 145 151 157 163 169 175; changed 251 127 133 139 145 145 139 133 127 121
  - code run only when changed (routine, instruction starts): obj_any_move_5 (17), l9_obj_any_move (1)
  - code run only when left alone: obj_any_update_56 (17), obj_any_move_26 (1)
- **other**: $03F1 (slot 3, kind 107 chasing_gear) read as 18, moment 72 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 4 (kind 107 chasing_gear), x_hi ($03F2), every 6 frames from frame 0: alone 2 2 2 2 2 2 2 2 2 2; changed 18 18 18 18 18 18 18 18 18 18
