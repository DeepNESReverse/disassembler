# Object table field 22 (field 22): $050B–$0519, one cell per slot

Code and play ($050B), named so far `obj_field_22` (the object table (game.json): field array, slot):
- code: written by 19 routines (obj_any_move_8 ×2, obj_delayed_spawner_handler ×2, obj_any_move_19 ×2), read by 11; an indexed base ×55, the index using 0…14 (15 values)
- play: changed on 33490 of 436617 frames (+1 20787, −1 3170, other 9533), 133 values, levels 0,1,2,3,4,5,6,7,9,10,11,12,13,254
- values in play (the lowest 12 of 133): 0 1 2 3 4 5 6 7 8 9 10 11

Code and play ($050D), named so far `obj_field_22+2` (the object table (game.json): field array, slot):
- play: changed on 2581 of 436617 frames (+1 499, −1 1897, other 185), 198 values, levels 0,1,3,6,10,13
- values in play (the lowest 16 of 198): 0 1 2 3 4 5 6 7 8 9 10 11 13 14 15 19

Code and play ($050E), named so far `obj_field_22+3` (the object table (game.json): field array, slot):
- play: changed on 10303 of 436617 frames (+1 590, −1 8985, other 728), 192 values, levels 0,1,2,3,4,5,6,7,8,9,11,12
- values in play (the lowest 16 of 192): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $050B slot 0: read in 26 moments; hold 23/23/0 (sq1 3, sq2 3, noise 8, dmc 12, scroll 16, palette 1, nametable 17, chr 23, oam 23, objects 23, proven 17; levels 1,2,3,4,5,6,9,10,11,12,13); other 26/26/0 (sq1 2, sq2 2, noise 7, dmc 11, scroll 15, palette 1, nametable 17, chr 24, oam 24, objects 26, proven 17; levels 1,2,3,4,5,6,9,10,11,12,13); poke 14/14/0 (noise 1, dmc 7, scroll 7, nametable 6, chr 11, oam 12, objects 14, proven 7; levels 1,2,3,4,5,9,10,11)
- $050D slot 2: read in 3 moments; hold 2/2/0 (oam 2, objects 2; levels 6,13); other 2/2/0 (oam 2, objects 2; levels 6,13); poke 0/0/0
- $050E slot 3: read in 9 moments; hold 1/1/0 (noise 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 2); other 1/1/0 (oam 1, objects 1; levels 2); poke 1/1/0 (oam 1, objects 1; levels 2)
- $050F slot 4: read in 14 moments; hold 7/7/0 (sq2 2, noise 1, dmc 4, scroll 2, nametable 2, chr 5, oam 7, objects 7, proven 5; levels 5,7,9,11); other 7/7/0 (sq2 2, noise 1, dmc 4, scroll 2, nametable 2, chr 6, oam 7, objects 7, proven 5; levels 5,7,9,11); poke 1/1/0 (dmc 1, chr 1, oam 1, objects 1; levels 9)
- $0510 slot 5: read in 13 moments; hold 3/2/0 (dmc 1, scroll 1, chr 1, oam 2, objects 2, proven 1; levels 9,11); other 6/6/0 (sq2 1, dmc 2, scroll 3, nametable 1, chr 1, oam 4, objects 6, proven 1; levels 6,9,11,12); poke 2/2/0 (sq2 1, scroll 1, nametable 1, oam 1, objects 2; levels 6)
- $0511 slot 6: read in 8 moments; hold 3/3/0 (dmc 1, scroll 1, chr 1, oam 3, objects 3, proven 1; levels 4,7,11); other 3/3/0 (dmc 1, scroll 1, chr 1, oam 3, objects 3, proven 1; levels 4,7,11); poke 0/0/0
- $0512 slot 7: read in 8 moments; hold 3/3/0 (noise 1, chr 1, oam 2, objects 3; levels 2,5,7); other 4/4/0 (sq2 1, noise 1, nametable 1, chr 1, oam 3, objects 4; levels 2,5,6,7); poke 2/2/0 (sq2 1, noise 1, nametable 1, oam 1, objects 2; levels 2,6)
- $0513 slot 8: read in 4 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (noise 1, objects 1; levels 2)
- $0514 slot 9: read in 5 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (noise 1, objects 1; levels 2)
- $0515 slot 10: read in 4 moments; hold 1/1/0 (noise 1, objects 1; levels 2); other 1/1/0 (noise 1, objects 1; levels 2); poke 0/0/0
- $0517 slot 12: read in 1 moments; hold 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); other 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (sq2 1, noise 1, oam 1, objects 1; levels 2)

The clearest cases:
- **other**: $050B (slot 0, kind 1 toad) read as 16, moment 32 (level 10, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 1 (119 frames)
  - object slot 0 (kind 1 toad), field 1 ($03D0), every 6 frames from frame 1: alone 61 61 61 61 61 61 61 61 61 61; changed 62 62 62 62 62 62 62 62 62 62
  - code run only when changed (routine, instruction starts): l3_obj_toad_check (3)
  - code run only when left alone: l3_obj_toad_check (7)
- **hold**: $0512 (slot 7, kind 45 wall_claw) held at 14 (its value then), moment 47 (level 2, player in play), 120 frames; the game still running at the end.
  - changed: noise from frame 22 (36 frames), objects from frame 1 (113 frames)
  - noise, frames 22–69 (period p, volume v, duty d; "off": the channel disabled):
    - alone: off n4 v1 · off n7 v10 · off n4 v6 ×3 · off n7 v10 · off n4 v4 ×3 · off n7 v10 · off n4 v4 ×3 · off n7 v10 · off n4 v2 ×5 · off n7 v10 · off n4 v1 ×4 · off n4 v6 ×6 · off n4 v4 ×7 · off n7 v10 · off n4 v2 ×4 · off n4 v1 ×3 · off n7 v10 · off n4 v1 · off n4 v6
    - changed: off n4 v6 ×6 · off n4 v4 ×6 · off n4 v2 ×6 · off n4 v1 ×6 · off n4 v6 ×5 · off n7 v10 · off n4 v4 ×7 · off n7 v10 · off n4 v2 ×4 · off n4 v1 ×5 · off n4 v6
  - object slot 7 (kind 45 wall_claw), field 1 ($03D7), every 6 frames from frame 1: alone 94 93 93 93 94 93 93 93 93 93; changed 93 93 93 93 93 93 93 93 93 93
  - object slot 7 (kind 45 wall_claw), x ($0404), every 6 frames from frame 1: alone 75 75 57 46 64 75 75 72 49 46; changed 75 75 75 75 75 75 75 75 75 75
  - object slot 7 (kind 45 wall_claw), y ($0440), every 6 frames from frame 1: alone 136 136 150 150 144 138 136 142 154 148; changed 136 136 136 136 136 136 136 136 136 136
  - object slot 7 (kind 45 wall_claw), x_sub ($044F), every 6 frames from frame 1: alone 192 192 40 0 152 192 192 8 184 0; changed 192 192 192 192 192 192 192 192 192 192
  - object slot 7 (kind 45 wall_claw), screen_x ($048B), every 6 frames from frame 1: alone 79 79 61 50 68 79 79 76 53 50; changed 79 79 79 79 79 79 79 79 79 79
  - object slot 7 (kind 45 wall_claw), field 14 ($049A), every 6 frames from frame 1: alone 51 45 25 19 19 19 15 3 241 241; changed 51 45 39 33 27 21 15 9 3 253
