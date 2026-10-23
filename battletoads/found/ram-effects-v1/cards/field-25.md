# Object table field 25 (field 25): $0538–$0546, one cell per slot

Code and play ($0538), named so far `obj_field_25` (the object table (game.json): field array, slot):
- code: written by 9 routines (obj_vehicle_update_2 ×1, obj_vehicle_update_3 ×1, obj_any_update_4 ×1), read by 20; an indexed base ×59, the index using 0…14 (12 values)
- play: changed on 83 of 436617 frames (+1 0, −1 0, other 83), 9 values, levels 1,3,4,6,8,9,10,11,12
- values in play (the lowest 15 of 9): 0 67 68 69 70 71 72 76 132 133 134 135 136 138 140

Code and play ($053B), named so far `obj_field_25+3` (the object table (game.json): field array, slot):
- play: changed on 16 of 436617 frames (+1 0, −1 0, other 16), 2 values, levels 1,2,4,5
- values in play (the lowest 3 of 2): 0 64 129

Code and play ($053C), named so far `obj_field_25+4` (the object table (game.json): field array, slot):
- play: changed on 34 of 436617 frames (+1 20, −1 0, other 14), 2 values, levels 0,1,3,4,5
- values in play (the lowest 3 of 2): 0 64 129

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $0538 slot 0: read in 67 moments; hold 0/0/0; other 54/54/0 (sq1 13, sq2 12, tri 6, noise 25, dmc 18, scroll 29, mask 2, palette 1, nametable 32, chr 54, oam 54, objects 54, proven 34; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 54/51/3 (sq1 12, sq2 11, tri 6, noise 24, dmc 17, scroll 28, mask 2, palette 1, nametable 31, chr 49, oam 51, objects 51, proven 32; levels 1,2,3,4,5,6,7,8,9,10,11,12,13)
- $053B slot 3: read in 4 moments; hold 0/0/0; other 2/2/0 (oam 1, objects 2; levels 12); poke 0/0/0
- $053C slot 4: read in 4 moments; hold 0/0/0; other 3/3/0 (noise 1, dmc 2, scroll 1, nametable 1, chr 1, oam 3, objects 3, proven 1; levels 2,3,12); poke 2/2/0 (noise 1, dmc 2, scroll 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 2,12)
- $053D slot 5: read in 8 moments; hold 0/0/0; other 7/7/0 (sq1 1, sq2 1, noise 3, dmc 3, scroll 1, nametable 4, chr 4, oam 7, objects 7, proven 3; levels 5,12); poke 5/5/0 (sq1 1, sq2 1, noise 4, dmc 3, scroll 1, nametable 3, chr 4, oam 5, objects 5, proven 3; levels 5,12)
- $053E slot 6: read in 3 moments; hold 0/0/0; other 2/2/0 (noise 1, oam 2, objects 2; levels 5,12); poke 2/2/0 (noise 1, oam 2, objects 2; levels 5,12)
- $053F slot 7: read in 3 moments; hold 0/0/0; other 2/2/0 (sq1 1, sq2 1, noise 2, scroll 1, nametable 1, chr 2, oam 1, objects 2, proven 1; levels 2,12); poke 2/2/0 (sq1 1, sq2 1, noise 2, scroll 1, nametable 1, chr 2, oam 1, objects 2, proven 1; levels 2,12)
- $0540 slot 8: read in 2 moments; hold 0/0/0; other 1/1/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 2)
- $0541 slot 9: read in 1 moments; hold 0/0/0; other 1/1/0 (noise 1, chr 1, objects 1; levels 2); poke 1/1/0 (noise 1, chr 1, objects 1; levels 2)
- $0542 slot 10: read in 1 moments; hold 0/0/0; other 1/1/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 2)

The clearest cases:
- **other**: $053B (slot 3, empty) read as 64, moment 8 (level 12, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 105 (7 frames)
  - object slot 3 (kind 108 water_spray), field 11 ($0469), every 6 frames from frame 105: alone 217 188 0 0 0 0 0 0 0 0; changed 233 124 0 0 0 0 0 0 0 0
  - object slot 3 (kind 108 water_spray), field 18 ($04D2), every 6 frames from frame 105: alone 217 239 0 0 0 0 0 0 0 0; changed 233 95 0 0 0 0 0 0 0 0
  - object slot 3 (kind 108 water_spray), y ($043C), every 6 frames from frame 105: alone 82 90 0 0 0 0 0 0 0 0; changed 82 92 0 0 0 0 0 0 0 0
  - object slot 3 (kind 108 water_spray), field 14 ($0496), every 6 frames from frame 105: alone 146 139 0 0 0 0 0 0 0 0; changed 146 137 0 0 0 0 0 0 0 0
  - object slot 3 (kind 108 water_spray), field 17 ($04C3), every 6 frames from frame 105: alone 1 0 0 0 0 0 0 0 0 0; changed 1 1 0 0 0 0 0 0 0 0
