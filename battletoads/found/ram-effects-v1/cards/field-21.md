# Object table field 21 (field 21): $04FC–$050A, one cell per slot

Code and play ($04FC), named so far `obj_field_21` (the object table (game.json): field array, slot):
- code: written by 18 routines (obj_vehicle_handler ×2, obj_any_move_16 ×2, obj_vehicle_update_3 ×1), read by 25; an indexed base ×91, the index using 0…14 (15 values)
- play: changed on 3241 of 436617 frames (+1 20, −1 0, other 3221), 22 values, levels 0,1,2,3,4,5,6,7,9,10,11,12,13
- values in play (the lowest 16 of 22): 0 2 4 6 8 10 12 14 18 20 22 24 26 28 44 54

Code and play ($04FE), named so far `obj_field_21+2` (the object table (game.json): field array, slot):
- play: changed on 170 of 436617 frames (+1 82, −1 0, other 88), 66 values, levels 0,1,3,6
- values in play (the lowest 16 of 66): 0 1 2 3 4 5 6 7 8 9 10 11 24 60 102 104

Code and play ($04FF), named so far `obj_field_21+3` (the object table (game.json): field array, slot):
- play: changed on 4745 of 436617 frames (+1 168, −1 1523, other 3054), 256 values, levels 0,1,2,3,4,5,6,7,8,9,11,12
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 16 24 60 88

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $04FC slot 0: read in 67 moments; hold 23/23/0 (sq1 4, sq2 4, tri 1, noise 10, dmc 10, scroll 13, palette 1, nametable 16, chr 23, oam 23, objects 23, proven 16; levels 1,2,3,4,5,6,9,10,11,12,13); other 66/65/0 (sq1 20, sq2 21, tri 1, noise 22, dmc 21, scroll 38, palette 3, nametable 44, chr 65, oam 64, objects 64, proven 45; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 66/62/3 (sq1 14, sq2 13, noise 19, dmc 17, scroll 34, palette 2, nametable 39, chr 62, oam 61, objects 61, proven 41; levels 1,2,3,4,5,6,7,8,9,10,11,12,13)
- $04FE slot 2: read in 2 moments; hold 1/1/0 (oam 1, objects 1; levels 6); other 2/2/0 (dmc 1, scroll 1, nametable 1, chr 2, oam 2, objects 2, proven 1; levels 3,6); poke 2/2/0 (dmc 1, chr 1, oam 2, objects 2; levels 3,6)
- $04FF slot 3: read in 16 moments; hold 3/3/0 (scroll 1, nametable 1, oam 1, objects 2; levels 2,4,8); other 11/11/0 (sq1 2, noise 3, dmc 3, scroll 4, nametable 4, chr 3, oam 9, objects 10, proven 3; levels 1,2,4,6,8,9,11,13); poke 10/10/0 (dmc 3, scroll 3, nametable 2, chr 3, oam 10, objects 10, proven 2; levels 1,2,4,6,8,9,11,13)
- $0500 slot 4: read in 17 moments; hold 6/5/0 (noise 1, dmc 2, scroll 3, nametable 2, chr 3, oam 4, objects 5, proven 2; levels 4,7,8,11); other 12/12/0 (noise 1, dmc 3, scroll 6, nametable 5, chr 5, oam 10, objects 12, proven 3; levels 1,2,4,5,7,8,11); poke 10/9/0 (noise 1, dmc 2, scroll 3, nametable 2, chr 3, oam 7, objects 8, proven 2; levels 1,2,4,7,8,11)
- $0501 slot 5: read in 18 moments; hold 3/3/0 (dmc 2, scroll 1, chr 1, oam 3, objects 3, proven 1; levels 9,11,12); other 8/8/0 (noise 3, dmc 5, scroll 3, nametable 2, chr 4, oam 8, objects 8, proven 3; levels 1,5,9,10,11,12); poke 8/8/0 (noise 2, dmc 5, scroll 2, nametable 1, chr 4, oam 8, objects 8, proven 2; levels 1,5,9,10,11,12)
- $0502 slot 6: read in 5 moments; hold 2/2/0 (dmc 1, scroll 1, chr 1, oam 2, objects 2, proven 1; levels 7,11); other 3/3/0 (dmc 1, scroll 1, chr 1, oam 3, objects 3, proven 1; levels 1,7,11); poke 3/3/0 (dmc 1, scroll 1, chr 2, oam 3, objects 3, proven 1; levels 1,7,11)
- $0503 slot 7: read in 9 moments; hold 2/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7); other 3/3/0 (noise 1, dmc 1, chr 1, oam 2, objects 3; levels 2,7); poke 2/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7)
- $0504 slot 8: read in 5 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 3/3/0 (noise 1, dmc 1, chr 1, oam 2, objects 3; levels 2,7); poke 2/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7)
- $0505 slot 9: read in 5 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 4/4/0 (sq2 1, noise 1, dmc 1, scroll 1, nametable 1, chr 2, oam 4, objects 4, proven 1; levels 2,4,7,11); poke 3/3/0 (sq2 1, noise 1, dmc 1, scroll 1, nametable 1, chr 2, oam 3, objects 3, proven 1; levels 2,7,11)
- $0506 slot 10: read in 2 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 2/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7); poke 2/2/0 (noise 1, chr 1, oam 1, objects 2; levels 2,7)
- $0507 slot 11: read in 3 moments; hold 0/0/0; other 2/2/0 (chr 1, oam 2, objects 2; levels 7,11); poke 2/2/0 (chr 1, oam 1, objects 2; levels 4,7)
- $0508 slot 12: read in 1 moments; hold 1/1/0 (noise 1, oam 1, objects 1; levels 2); other 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (sq2 1, noise 1, oam 1, objects 1; levels 2)
- $0509 slot 13: read in 1 moments; hold 0/0/0; other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (noise 1, objects 1; levels 2)

The clearest cases:
- **hold**: $04FF (slot 3, kind 10 fly) held at 0 (its value then), moment 7 (level 4, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 12 (108 frames)
  - object slot 3 (kind 10 fly), field 11 ($0469), every 6 frames from frame 12: alone 24 160 136 208 120 128 232 176 216 96; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 3 (kind 10 fly), field 18 ($04D2), every 6 frames from frame 12: alone 24 168 56 200 88 232 120 8 152 40; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 3 (kind 10 fly), y ($043C), every 6 frames from frame 12: alone 148 150 156 165 178 194 213 236 6 36; changed 148 148 148 148 148 148 148 148 148 148
  - object slot 3 (kind 10 fly), field 14 ($0496), every 6 frames from frame 12: alone 239 225 207 186 161 133 102 77 51 21; changed 239 227 215 203 191 179 167 165 165 165
  - object slot 3 (kind 10 fly), field 17 ($04C3), every 6 frames from frame 12: alone 0 0 1 1 2 2 3 4 4 5; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 3 (kind 10 fly), field 7 ($042D), every 6 frames from frame 12: alone 24 24 24 24 24 24 24 24 25 25; changed 24 24 24 24 24 24 24 24 24 24
- **other**: $04FF (slot 3, kind 10 fly) read as 16, moment 7 (level 4, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 3 (kind 10 fly), field 11 ($0469), every 6 frames from frame 0: alone 0 0 24 160 136 208 120 128 232 176; changed 16 192 176 224 80 0 240 32 144 64
  - object slot 3 (kind 10 fly), field 18 ($04D2), every 6 frames from frame 0: alone 0 0 24 168 56 200 88 232 120 8; changed 16 112 208 48 144 240 80 176 16 112
  - object slot 3 (kind 10 fly), y ($043C), every 6 frames from frame 0: alone 148 148 148 150 156 165 178 194 213 236; changed 148 149 153 159 168 179 191 207 224 244
  - object slot 3 (kind 10 fly), field 14 ($0496), every 6 frames from frame 0: alone 7 251 239 225 207 186 161 133 102 77; changed 7 250 234 216 195 172 148 120 91 69
  - object slot 3 (kind 10 fly), field 17 ($04C3), every 6 frames from frame 0: alone 0 0 0 0 1 1 2 2 3 4; changed 0 0 0 1 1 1 2 2 3 3
  - object slot 3 (kind 10 fly), field 7 ($042D), every 6 frames from frame 0: alone 24 24 24 24 24 24 24 24 24 24; changed 24 24 24 24 24 24 24 24 24 24
