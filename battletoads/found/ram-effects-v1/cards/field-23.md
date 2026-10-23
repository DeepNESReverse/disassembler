# Object table field 23 (health_or_timer): $051A–$0528, one cell per slot

Code and play ($051A), named so far `obj_health_or_timer` (the object table (game.json): field array, slot):
- code: written by 15 routines (obj_delayed_spawner_handler ×2, obj_any_damage ×1, obj_any_set_health_or_timer_3 ×1), read by 19; an indexed base ×77, the index using 0…14 (15 values)
- play: changed on 121 of 436617 frames (+1 0, −1 0, other 121), 9 values, levels 1,2,3,4,5,6,7,8,9,10,11,12,13,255
- values in play (the lowest 9 of 9): 0 7 15 23 31 35 39 43 47

Code and play ($051B), named so far `obj_health_or_timer+1` (the object table (game.json): field array, slot):
- code: written by 0 routines (), read by 1
- values in play (the lowest 1 of 1): 0

Code and play ($051D), named so far `obj_health_or_timer+3` (the object table (game.json): field array, slot):
- play: changed on 2713 of 436617 frames (+1 37, −1 1053, other 1623), 229 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 229): 0 1 2 3 4 5 6 7 8 9 10 11 15 23 31 39

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $051A slot 0: read in 4 moments; hold 0/0/0; other 4/4/0 (nametable 4; levels 1,2,3); poke 4/4/0 (nametable 4; levels 1,2,3)
- $051B slot 1: read in 42 moments; hold 0/0/0; other 41/41/0 (nametable 41; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 41/38/3 (nametable 38; levels 1,2,3,4,5,6,7,9,10,11,12,13)
- $051D slot 3: read in 11 moments; hold 2/2/0 (noise 1, nametable 1, oam 2, objects 2; levels 8,12); other 5/4/0 (sq1 1, noise 1, dmc 1, scroll 1, nametable 2, chr 1, oam 4, objects 4, proven 1; levels 8,12,13); poke 3/2/0 (sq1 1, dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 8,13)
- $051E slot 4: read in 8 moments; hold 2/2/0 (dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 2, proven 1; levels 5,8); other 3/3/0 (sq1 2, sq2 1, tri 1, noise 2, dmc 1, scroll 3, mask 1, palette 1, nametable 3, chr 3, oam 3, objects 3, proven 3; levels 5,8); poke 3/3/0 (sq1 2, sq2 1, tri 1, noise 2, dmc 1, scroll 3, mask 1, palette 1, nametable 3, chr 3, oam 3, objects 3, proven 3; levels 5,8)
- $051F slot 5: read in 10 moments; hold 0/0/0; other 3/3/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 3, objects 3, proven 1; levels 9,12); poke 2/2/0 (sq1 1, sq2 1, noise 2, dmc 1, scroll 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 9,12)
- $0520 slot 6: read in 4 moments; hold 0/0/0; other 2/2/0 (dmc 1, oam 1, objects 2; levels 4); poke 2/2/0 (dmc 1, oam 1, objects 2; levels 4)
- $0525 slot 11: read in 1 moments; hold 1/1/0 (objects 1; levels 4); other 1/1/0 (objects 1; levels 4); poke 0/0/0
- $0526 slot 12: read in 1 moments; hold 0/0/0; other 1/1/0 (oam 1, objects 1; levels 2); poke 1/1/0 (oam 1, objects 1; levels 2)
- $0528 slot 14: read in 1 moments; hold 1/1/0 (noise 1, oam 1, objects 1; levels 2); other 1/1/0 (noise 1, oam 1, objects 1; levels 2); poke 1/1/0 (noise 1, oam 1, objects 1; levels 2)

The clearest cases:
- **hold**: $0525 (slot 11, empty) held at 0 (its value then), moment 55 (level 4, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 17 (103 frames)
  - object slot 11 (kind 34 delayed_spawner), field 21 ($0507), every 6 frames from frame 17: alone 0 0 0 0 0 0 0 0 0 0; changed 255 249 243 237 231 225 219 213 207 201
  - code run only when left alone: obj_delayed_spawner_handler (2)
- **other**: $051B (slot 1, empty) read as 1, moment 82 (level 10, player in play), 120 frames; the game still running at the end.
  - changed: nametable from frame 3 (117 frames)
  - picture `field-23-other.png`: frames 3, 18, 48, 119; the top row left alone, the bottom row changed.
