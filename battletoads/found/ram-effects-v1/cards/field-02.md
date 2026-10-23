# Object table field 2 (field 2): $03DF–$03ED, one cell per slot

Code and play ($03DF), named so far `obj_field_2` (the object table (game.json): field array, slot):
- code: written by 15 routines (obj_any_spawn_or_free_7 ×8, obj_any_move_8 ×3, l6_frame_update ×3), read by 19; an indexed base ×77, the index using 0…14 (14 values)
- play: changed on 69413 of 436617 frames (+1 902, −1 11, other 68500), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Code and play ($03E1), named so far `obj_field_2+2` (the object table (game.json): field array, slot):
- play: changed on 2407 of 436617 frames (+1 813, −1 706, other 888), 136 values, levels 1,2,3
- values in play (the lowest 16 of 136): 0 1 2 3 4 5 6 7 8 9 10 11 16 32 48 64

Code and play ($03E2), named so far `obj_field_2+3` (the object table (game.json): field array, slot):
- play: changed on 44701 of 436617 frames (+1 7124, −1 578, other 36999), 256 values, levels 1,2,3,4,5,7,8,9,11,12,13
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 16

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $03DF slot 0: read in 40 moments; hold 38/37/0 (noise 1, dmc 7, chr 37, oam 37, objects 37; levels 2,3,4,5,6,7,8,9,10,11,12,13); other 38/37/0 (noise 1, dmc 7, chr 37, oam 37, objects 37; levels 2,3,4,5,6,7,8,9,10,11,12,13); poke 18/13/2 (dmc 1, chr 13, oam 13, objects 13; levels 4,5,6,7,9,10,11,12)
- $03E1 slot 2: read in 4 moments; hold 3/3/0 (dmc 1, scroll 1, nametable 1, chr 1, oam 3, objects 3, proven 1; levels 1,2); other 4/4/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 4, objects 4, proven 1; levels 1,2); poke 0/0/0
- $03E2 slot 3: read in 13 moments; hold 9/9/0 (noise 1, dmc 1, nametable 1, chr 1, oam 7, objects 9, proven 1; levels 2,4,5,9,11,13); other 12/12/0 (sq1 1, noise 3, dmc 1, nametable 3, chr 2, oam 10, objects 12, proven 1; levels 2,4,5,8,9,11,13); poke 11/11/0 (sq1 1, noise 2, dmc 3, scroll 1, nametable 2, chr 2, oam 9, objects 11, proven 1; levels 2,4,5,8,9,11,13)
- $03E3 slot 4: read in 14 moments; hold 11/11/0 (noise 2, dmc 2, scroll 2, nametable 2, chr 5, oam 9, objects 11, proven 2; levels 1,2,5,7,8,9,11); other 13/13/0 (sq1 1, noise 3, dmc 2, scroll 3, palette 1, nametable 4, chr 6, oam 11, objects 13, proven 3; levels 1,2,5,7,8,9,11); poke 12/12/0 (sq1 1, noise 2, dmc 2, scroll 3, palette 1, nametable 3, chr 4, oam 11, objects 12, proven 2; levels 1,2,5,7,8,9,11)
- $03E4 slot 5: read in 29 moments; hold 23/23/0 (noise 3, dmc 3, chr 4, oam 16, objects 23; levels 1,2,4,5,9,10,11); other 27/27/0 (sq1 1, sq2 1, noise 4, dmc 4, scroll 2, palette 1, nametable 2, chr 7, oam 20, objects 27, proven 2; levels 1,2,4,5,6,9,10,11,12); poke 25/24/1 (sq1 1, sq2 1, noise 4, dmc 4, scroll 2, palette 1, nametable 2, chr 7, oam 20, objects 24, proven 2; levels 1,4,5,6,9,10,11,12)
- $03E5 slot 6: read in 7 moments; hold 6/6/0 (dmc 2, oam 3, objects 6; levels 2,5,11); other 7/7/0 (dmc 2, oam 4, objects 7; levels 2,5,11); poke 6/6/0 (noise 1, dmc 2, oam 4, objects 6; levels 5,11)
- $03E6 slot 7: read in 6 moments; hold 5/5/0 (noise 1, scroll 1, nametable 1, chr 2, oam 4, objects 5, proven 1; levels 5,7,9,11); other 6/6/0 (noise 1, scroll 1, nametable 1, chr 2, oam 4, objects 6, proven 1; levels 5,7,9,11); poke 6/6/0 (chr 2, oam 4, objects 6; levels 5,7,9,11)
- $03E7 slot 8: read in 2 moments; hold 1/1/0 (chr 1, oam 1, objects 1; levels 11); other 2/2/0 (chr 1, oam 1, objects 2; levels 5,11); poke 2/2/0 (chr 1, oam 1, objects 2; levels 5,11)
- $03E8 slot 9: read in 2 moments; hold 2/2/0 (chr 1, oam 1, objects 2; levels 11); other 2/2/0 (chr 1, oam 1, objects 2; levels 11); poke 2/2/0 (chr 1, oam 1, objects 2; levels 11)
- $03EA slot 11: read in 2 moments; hold 2/2/0 (oam 1, objects 2; levels 2,11); other 2/2/0 (oam 1, objects 2; levels 2,11); poke 0/0/0

The clearest cases:
- **other**: $03E4 (slot 5, kind 116 propeller) read as 18, moment 29 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 5 (kind 116 propeller), field 1 ($03D5), every 6 frames from frame 0: alone 235 234 235 234 235 234 235 234 235 234; changed 31 31 31 31 31 31 31 31 31 31
  - object slot 5 (kind 116 propeller), facing ($04A7), every 6 frames from frame 0: alone 192 128 192 128 192 128 192 128 192 128; changed 132 132 132 132 132 132 132 132 132 132
  - object slot 4 (kind 111 fish), field 2 ($03E3), every 6 frames from frame 0: alone 123 213 43 109 175 241 51 117 228 92; changed 123 213 43 109 175 241 51 117 178 238
  - object slot 4 (kind 111 fish), x ($0401), every 6 frames from frame 0: alone 70 74 79 82 82 79 76 73 68 63; changed 70 74 79 82 82 79 76 73 70 67
  - object slot 4 (kind 111 fish), x_sub ($044C), every 6 frames from frame 0: alone 176 224 16 16 16 0 0 32 24 24; changed 176 224 16 16 16 0 0 32 72 72
  - object slot 4 (kind 111 fish), field 10 ($045B), every 6 frames from frame 0: alone 8 24 120 232 248 24 200 216 184 120; changed 8 24 120 232 248 24 200 216 0 192
  - code run only when changed (routine, instruction starts): obj_any_move_5 (17), l9_obj_any_move (1)
- **hold**: $03E3 (slot 4, kind 19 raven) held at 128 (its value then), moment 47 (level 2, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 1 (90 frames)
  - object slot 4 (kind 19 raven), field 1 ($03D4), every 6 frames from frame 1: alone 29 30 29 28 29 30 29 28 29 30; changed 30 30 30 30 30 30 30 30 30 30
