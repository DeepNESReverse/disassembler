# Object table field 31 (field 31): $0592–$05A0, one cell per slot

Code and play ($0592), named so far `obj_field_31` (the object table (game.json): field array, slot):
- code: written by 16 routines (obj_any_spawn_or_free_7 ×4, obj_delayed_spawner_handler ×3, l9_obj_propeller_handler ×2), read by 20; an indexed base ×80, the index using 0…14 (14 values)
- play: changed on 24 of 436617 frames (+1 12, −1 4, other 8), 4 values, levels 2,3,5,8,9,10,11,12
- values in play (the lowest 6 of 4): 0 1 2 3 4 255

Code and play ($0593), named so far `obj_field_31+1` (the object table (game.json): field array, slot):
- code: written by 1 routines (l9_obj_propeller_handler ×1), read by 1
- play: changed on 7 of 436617 frames (+1 1, −1 3, other 3), 3 values, levels 9,11
- values in play (the lowest 3 of 3): 0 1 255

Code and play ($0594), named so far `obj_field_31+2` (the object table (game.json): field array, slot):
- play: changed on 5619 of 436617 frames (+1 1078, −1 1330, other 3211), 231 values, levels 0,1,2,3
- values in play (the lowest 16 of 231): 0 4 6 8 13 14 15 16 17 18 19 20 21 22 23 59

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $0592 slot 0: read in 6 moments; hold 0/0/0; other 4/4/0 (noise 3, chr 3, oam 3, objects 4; levels 10,12); poke 4/3/1 (noise 3, chr 3, oam 3, objects 3; levels 12)
- $0593 slot 1: read in 1 moments; hold 0/0/0; other 1/1/0 (objects 1; levels 10); poke 1/0/1
- $0594 slot 2: read in 2 moments; hold 0/0/0; other 2/2/0 (dmc 1, scroll 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 3,6); poke 1/1/0 (dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 3)
- $0595 slot 3: read in 11 moments; hold 2/2/0 (dmc 1, chr 2, oam 2, objects 2; levels 7,11); other 6/5/0 (chr 1, oam 4, objects 5, proven 1; levels 6,11,12); poke 2/1/0 (objects 1; levels 11)
- $0596 slot 4: read in 11 moments; hold 1/1/0 (sq1 1, chr 1, oam 1, objects 1; levels 9); other 10/10/0 (sq1 1, dmc 2, scroll 1, nametable 3, chr 5, oam 7, objects 8, proven 1; levels 1,2,5,7,8,9,11); poke 7/7/0 (sq1 1, dmc 1, nametable 2, chr 4, oam 4, objects 5; levels 1,7,8,9,11)
- $0597 slot 5: read in 12 moments; hold 1/1/0 (dmc 1, chr 1, oam 1, objects 1; levels 7); other 11/11/0 (sq1 2, sq2 2, noise 4, dmc 3, scroll 3, nametable 3, chr 4, oam 11, objects 11, proven 3; levels 1,4,5,6,9,10,12); poke 3/3/0 (sq1 2, sq2 1, noise 1, dmc 1, scroll 1, chr 2, oam 3, objects 3, proven 1; levels 1,9,10)
- $0598 slot 6: read in 6 moments; hold 2/2/0 (dmc 1, chr 2, oam 2, objects 2; levels 7); other 6/6/0 (sq2 1, noise 1, dmc 1, chr 4, oam 5, objects 6; levels 7,9,11,12); poke 3/3/0 (sq2 1, chr 2, oam 2, objects 3; levels 9,11)
- $0599 slot 7: read in 4 moments; hold 1/1/0 (chr 1, oam 1, objects 1; levels 7); other 3/3/0 (sq2 1, noise 1, nametable 1, oam 3, objects 3; levels 6,11,12); poke 1/1/0 (oam 1, objects 1; levels 11)
- $059A slot 8: read in 2 moments; hold 2/2/0 (noise 2, objects 1; levels 6); other 2/2/0 (noise 2, objects 1; levels 6); poke 0/0/0
- $059B slot 9: read in 2 moments; hold 2/2/0 (noise 2; levels 6); other 2/2/0 (noise 2; levels 6); poke 2/2/0 (noise 2; levels 6)
- $059C slot 10: read in 1 moments; hold 0/0/0; other 1/1/0 (objects 1; levels 11); poke 0/0/0
- $059E slot 12: read in 1 moments; hold 0/0/0; other 1/1/0 (oam 1, objects 1; levels 2); poke 0/0/0
- $059F slot 13: read in 1 moments; hold 0/0/0; other 1/1/0 (noise 1, objects 1; levels 2); poke 1/1/0 (noise 1, objects 1; levels 2)

The clearest cases:
- **hold**: $059B (slot 9, empty) held at 0 (its value then), moment 67 (level 6, player in play), 120 frames; the game still running at the end.
  - changed: noise from frame 12 (36 frames)
  - noise, frames 12–59 (period p, volume v, duty d; "off": the channel disabled):
    - alone: off n3 v5 · off n8 v4 ×3 · off n10 v8 ×3 · off n12 v7 ×3 · off n13 v6 ×3 · off n14 v5 ×3 · off n14 v4 ×3 · off n14 v2 ×3 · off n15 v1 ×3 · off n3 v5 ×8 · off n8 v4 ×3 · off n10 v8 ×3 · off n12 v7 ×3 · off n13 v6 ×3 · off n14 v5 ×3
    - changed: off n3 v5 ×3 · off n15 v10 ×7 · off n3 v5 ×7 · off n6 v1 ×8 · off n3 v5 ×8 · off n8 v4 ×3 · off n10 v8 ×3 · off n12 v7 ×3 · off n13 v6 ×3 · off n14 v5 ×3
- **other**: $0595 (slot 3, kind 107 chasing_gear) read as 16, moment 72 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 3 (kind 107 chasing_gear), field 1 ($03D3), every 6 frames from frame 0: alone 208 208 208 208 208 208 208 208 208 208; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 4 (kind 107 chasing_gear), field 1 ($03D4), every 6 frames from frame 0: alone 208 208 208 208 208 208 208 208 208 208; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 3 (kind 107 chasing_gear), x_hi ($03F1), every 6 frames from frame 0: alone 2 2 2 2 2 2 2 2 2 2; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 4 (kind 107 chasing_gear), x_hi ($03F2), every 6 frames from frame 0: alone 2 2 2 2 2 2 2 2 2 2; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 3 (kind 107 chasing_gear), x ($0400), every 6 frames from frame 0: alone 128 128 128 128 128 128 128 128 128 128; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 4 (kind 107 chasing_gear), x ($0401), every 6 frames from frame 0: alone 128 128 128 128 128 128 128 128 128 128; changed 0 0 0 0 0 0 0 0 0 0
  - code run only when left alone: l12_obj_golden_brute_handler (31), obj_any_check_3 (15), obj_any_check_5 (7), obj_any_check_8 (7), obj_any_spawn_or_free_20 (3)
