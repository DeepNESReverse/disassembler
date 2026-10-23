# Object table field 10 (field 10): $0457–$0465, one cell per slot

Code and play ($0457), named so far `obj_field_10` (the object table (game.json): field array, slot):
- code: written by 1 routines (obj_any_move_5 ×4), read by 2; an indexed base ×8, the index using 0…14 (14 values)
- play: changed on 6321 of 436617 frames (+1 20, −1 0, other 6301), 32 values, levels 0,1,2,3,6,8,12
- values in play (the lowest 14 of 32): 0 8 16 24 32 40 48 56 64 72 80 88 96 104

Code and play ($0459), named so far `obj_field_10+2` (the object table (game.json): field array, slot):
- play: changed on 722 of 436617 frames (+1 0, −1 0, other 722), 28 values, levels 1,3,6
- values in play (the lowest 16 of 28): 0 8 16 24 32 40 48 56 64 72 80 88 96 104 112 120

Code and play ($045A), named so far `obj_field_10+3` (the object table (game.json): field array, slot):
- play: changed on 17074 of 436617 frames (+1 0, −1 0, other 17074), 32 values, levels 1,3,6,7,11,12,13
- values in play (the lowest 16 of 32): 0 8 16 24 32 40 48 56 64 72 80 88 96 112 128 144

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $0457 slot 0: read in 94 moments; hold 4/4/0 (sq1 2, sq2 2, nametable 2, chr 3, oam 4, objects 4, proven 2; levels 3,6); other 94/71/2 (sq1 3, sq2 3, noise 6, dmc 25, scroll 5, nametable 7, chr 31, oam 43, objects 44, proven 8; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255); poke 94/70/4 (sq1 1, sq2 1, noise 6, dmc 25, scroll 5, nametable 5, chr 30, oam 42, objects 44, proven 6; levels 1,2,3,4,5,6,7,8,9,10,11,12,13,254,255)
- $0459 slot 2: read in 2 moments; hold 1/1/0 (oam 1, objects 1; levels 6); other 1/1/0 (oam 1, objects 1; levels 6); poke 0/0/0
- $045A slot 3: read in 18 moments; hold 6/6/0 (noise 2, chr 1, oam 4, objects 6; levels 6,11,12,13); other 6/6/0 (noise 2, chr 2, oam 5, objects 6; levels 6,11,12,13); poke 4/4/0 (noise 2, oam 3, objects 4; levels 11,12,13)
- $045B slot 4: read in 19 moments; hold 5/4/0 (noise 1, chr 2, oam 4, objects 4; levels 1,7,11); other 5/4/0 (chr 1, oam 3, objects 4; levels 1,7,11); poke 4/2/1 (oam 1, objects 2; levels 1,11)
- $045C slot 5: read in 24 moments; hold 11/11/0 (noise 3, chr 2, oam 10, objects 11; levels 1,10,11,12); other 11/11/0 (noise 3, chr 2, oam 10, objects 11; levels 1,10,11,12); poke 12/11/1 (oam 9, objects 11; levels 1,10,11,12)
- $045D slot 6: read in 7 moments; hold 3/3/0 (dmc 1, scroll 1, chr 2, oam 3, objects 3, proven 1; levels 7,11); other 3/3/0 (dmc 1, scroll 1, chr 1, oam 2, objects 3, proven 1; levels 7,11); poke 2/2/0 (oam 1, objects 2; levels 11)
- $045E slot 7: read in 9 moments; hold 3/3/0 (chr 1, oam 3, objects 3; levels 7,11); other 3/3/0 (chr 1, oam 3, objects 3; levels 7,11); poke 2/2/0 (oam 1, objects 2; levels 11)
- $0460 slot 9: read in 4 moments; hold 2/2/0 (chr 1, oam 1, objects 2; levels 11); other 2/2/0 (chr 1, oam 1, objects 2; levels 11); poke 2/2/0 (oam 1, objects 2; levels 11)
- $0462 slot 11: read in 2 moments; hold 1/1/0 (oam 1, objects 1; levels 11); other 1/1/0 (oam 1, objects 1; levels 11); poke 0/0/0

The clearest cases:
- **hold**: $0460 (slot 9, kind 112 shark) held at 112 (its value then), moment 29 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 1 (119 frames)
  - object slot 9 (kind 112 shark), y ($0442), every 6 frames from frame 1: alone 53 45 37 29 22 15 8 1 250 241; changed 54 48 42 36 30 24 18 12 6 0
  - object slot 9 (kind 112 shark), field 14 ($049C), every 6 frames from frame 1: alone 176 184 192 200 199 186 169 152 140 148; changed 175 181 187 193 191 177 159 141 128 133
  - object slot 9 (kind 112 shark), field 17 ($04C9), every 6 frames from frame 1: alone 254 254 254 254 254 255 255 255 255 254; changed 255 255 255 255 255 255 255 255 255 255
  - object slot 9 (kind 112 shark), field 7 ($0433), every 6 frames from frame 1: alone 25 25 25 25 25 25 25 25 24 24; changed 25 25 25 25 25 25 25 25 25 25
- **other**: $045B (slot 4, kind 110) read as 208, moment 74 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (92 frames)
  - object slot 4 (kind 110), y ($043D), every 6 frames from frame 0: alone 179 178 177 176 176 175 175 184 197 198; changed 178 175 175 175 175 175 175 181 191 198
  - object slot 4 (kind 110), field 17 ($04C4), every 6 frames from frame 0: alone 0 0 0 0 0 255 0 3 3 0; changed 255 0 0 0 0 0 0 2 2 0
  - object slot 3 (kind 110), x ($0400), every 6 frames from frame 0: alone 226 222 221 218 213 209 204 201 199 196; changed 226 222 221 218 213 209 204 201 199 196
  - object slot 3 (kind 110), y ($043C), every 6 frames from frame 0: alone 49 49 49 57 69 80 91 99 105 110; changed 49 49 49 57 69 80 91 99 105 110
  - object slot 3 (kind 110), x_sub ($044B), every 6 frames from frame 0: alone 128 240 240 144 112 0 128 112 8 248; changed 128 240 240 144 112 0 128 112 8 248
  - object slot 3 (kind 110), field 10 ($045A), every 6 frames from frame 0: alone 96 160 160 144 32 72 56 160 200 184; changed 96 160 160 144 32 72 56 160 200 184
  - code run only when changed (routine, instruction starts): l9_obj_propeller_handler (11)
