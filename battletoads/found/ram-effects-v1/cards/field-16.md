# Object table field 16 (field 16): $04B1–$04BF, one cell per slot

Code and play ($04B1), named so far `obj_field_16` (the object table (game.json): field array, slot):
- code: written by 15 routines (obj_any_update_13 ×1, obj_any_spawn_or_free_7 ×1, obj_any_damage_2 ×1), read by 28; an indexed base ×68, the index using 0…14 (15 values)
- play: changed on 1777 of 436617 frames (+1 0, −1 0, other 1777), 9 values, levels 1,2,3,4,5,6,7,9,10,11,12,13
- values in play (the lowest 12 of 9): 0 16 32 48 64 80 96 128 144 160 176 192

Code and play ($04B3), named so far `obj_field_16+2` (the object table (game.json): field array, slot):
- play: changed on 90 of 436617 frames (+1 0, −1 0, other 90), 3 values, levels 1,3,6
- values in play (the lowest 3 of 3): 0 64 128

Code and play ($04B4), named so far `obj_field_16+3` (the object table (game.json): field array, slot):
- play: changed on 254 of 436617 frames (+1 20, −1 0, other 234), 3 values, levels 0,1,2,3,4,5,6,7,9,11,12,13
- values in play (the lowest 3 of 3): 0 64 128

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $04B1 slot 0: read in 68 moments; hold 13/11/0 (noise 2, dmc 7, scroll 5, palette 1, nametable 4, chr 10, oam 10, objects 10, proven 5; levels 3,4,5,9,12,13); other 57/55/0 (sq1 24, sq2 20, noise 10, dmc 14, scroll 29, palette 2, nametable 40, chr 42, oam 51, objects 55, proven 37; levels 3,4,5,6,7,8,9,10,11,12,13); poke 55/50/3 (sq1 1, sq2 1, noise 3, dmc 10, scroll 8, nametable 9, chr 28, oam 40, objects 49, proven 16; levels 4,5,6,7,8,9,10,11,13)
- $04B3 slot 2: read in 12 moments; hold 1/1/0 (dmc 1, oam 1, objects 1; levels 3); other 3/3/0 (dmc 2, scroll 1, nametable 1, chr 2, oam 2, objects 2, proven 1; levels 3,4,11); poke 5/3/2 (dmc 2, scroll 1, nametable 1, chr 2, oam 2, objects 2, proven 1; levels 3,4,11)
- $04B4 slot 3: read in 38 moments; hold 2/0/0; other 10/7/0 (noise 1, dmc 4, scroll 2, nametable 2, chr 3, oam 3, objects 4, proven 3; levels 2,4,7,9,11,13); poke 8/4/1 (noise 1, dmc 2, nametable 1, oam 1, objects 2, proven 1; levels 2,4,11)
- $04B5 slot 4: read in 39 moments; hold 2/2/0 (noise 1, dmc 2, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 2,5); other 7/6/0 (dmc 3, scroll 2, nametable 2, chr 3, oam 4, objects 5, proven 2; levels 2,4,5,11); poke 8/6/1 (dmc 3, scroll 2, nametable 2, chr 3, oam 4, objects 5, proven 2; levels 2,4,5,11)
- $04B6 slot 5: read in 44 moments; hold 3/3/0 (noise 1, dmc 3, scroll 1, chr 1, oam 2, objects 2, proven 1; levels 5,9); other 12/10/0 (noise 4, dmc 6, scroll 5, palette 1, nametable 4, chr 8, oam 8, objects 9, proven 5; levels 4,5,7,9,10,11,12); poke 10/6/2 (noise 2, dmc 4, scroll 3, palette 1, nametable 3, chr 4, oam 5, objects 6, proven 3; levels 4,5,10,11,12)
- $04B7 slot 6: read in 22 moments; hold 0/0/0; other 4/4/0 (dmc 3, scroll 3, nametable 2, chr 3, oam 3, objects 4, proven 3; levels 2,4,7,11); poke 4/4/0 (dmc 3, scroll 3, nametable 2, chr 3, oam 3, objects 4, proven 3; levels 2,4,7,11)
- $04B8 slot 7: read in 19 moments; hold 0/0/0; other 3/3/0 (dmc 1, oam 1, objects 2; levels 4,11); poke 3/3/0 (dmc 1, oam 1, objects 2; levels 4,11)
- $04B9 slot 8: read in 7 moments; hold 0/0/0; other 2/2/0 (dmc 1, objects 1; levels 4,11); poke 2/2/0 (dmc 1, objects 1; levels 4,11)
- $04BA slot 9: read in 6 moments; hold 0/0/0; other 2/2/0 (dmc 1, objects 1; levels 4,11); poke 2/2/0 (dmc 1, objects 1; levels 4,11)

The clearest cases:
- **other**: $04B1 (slot 0, kind 1 toad) read as 16, moment 66 (level 6, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 0 (kind 1 toad), height ($0475), every 6 frames from frame 0: alone 8 8 8 8 8 8 8 8 8 8; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 0 (kind 1 toad), field 14 ($0493), every 6 frames from frame 0: alone 180 180 168 156 144 132 120 108 96 86; changed 172 172 160 148 136 124 112 100 88 78
  - object slot 0 (kind 1 toad), facing ($04A2), every 6 frames from frame 0: alone 8 8 8 8 8 8 8 8 8 8; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 5 (kind 26), field 19 ($04E3), every 6 frames from frame 0: alone 0 0 0 0 0 0 0 0 0 0; changed 0 0 0 8 7 5 4 2 1 0
  - code run only when changed (routine, instruction starts): obj_any_move_26 (57), obj_any_spawn_or_free_21 (6), l12_obj_any_spawn_or_free (2)
  - code run only when left alone: l12_obj_any_spawn_or_free (11), load_palette_2 (10)
- **hold**: $04B6 (slot 5, empty) held at 0 (its value then), moment 88 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: dmc from frame 104 (4 frames)
  - DMC, frames 104–119 (period p, volume v, duty d; "off": the channel disabled):
    - alone: off rate0 atC000 len1 ×16
    - changed: off rate0 atC000 len1 ×16
  - code run only when left alone: obj_any_move_17 (3), l12_obj_golden_brute_update (3)
