# Object table field 24 (field 24): $0529–$0537, one cell per slot

Code and play ($0529), named so far `obj_field_24` (the object table (game.json): field array, slot):
- code: written by 8 routines (obj_vehicle_update_2 ×1, obj_vehicle_update_3 ×1, obj_any_update_4 ×1), read by 22; an indexed base ×54, the index using 0…14 (15 values)
- play: changed on 10 of 436617 frames (+1 0, −1 0, other 10), 5 values, levels 5
- values in play (the lowest 5 of 5): 0 132 133 134 136

Code and play ($052B), named so far `obj_field_24+2` (the object table (game.json): field array, slot):
- play: changed on 8 of 436617 frames (+1 0, −1 0, other 8), 2 values, levels 1,3,10
- values in play (the lowest 2 of 2): 0 65

Code and play ($052C), named so far `obj_field_24+3` (the object table (game.json): field array, slot):
- play: changed on 30 of 436617 frames (+1 20, −1 0, other 10), 3 values, levels 0,1,4,8,9,12
- values in play (the lowest 3 of 3): 0 65 129

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $0529 slot 0: read in 68 moments; hold 1/1/0 (sq1 1, sq2 1, nametable 1, chr 1, oam 1, objects 1, proven 1; levels 5); other 68/68/0 (sq1 15, sq2 14, noise 17, dmc 18, scroll 43, palette 1, nametable 45, chr 68, oam 68, objects 68, proven 48; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 68/65/3 (sq1 14, sq2 13, noise 17, dmc 18, scroll 41, palette 1, nametable 42, chr 65, oam 65, objects 65, proven 46; levels 1,2,3,4,5,6,7,8,9,10,11,12,13)
- $052B slot 2: read in 26 moments; hold 0/0/0; other 26/17/0 (noise 1, dmc 6, scroll 3, nametable 8, chr 9, oam 15, objects 15, proven 8; levels 1,2,3,4,5,9,10,11); poke 26/16/1 (noise 1, dmc 6, scroll 3, nametable 7, chr 8, oam 14, objects 14, proven 7; levels 1,2,3,4,5,9,10,11)
- $052C slot 3: read in 29 moments; hold 0/0/0; other 28/24/0 (sq1 2, sq2 1, noise 2, dmc 7, scroll 4, nametable 15, chr 9, oam 21, objects 22, proven 16; levels 1,2,3,4,5,9,10,11,13); poke 27/23/1 (sq1 2, sq2 1, noise 2, dmc 7, scroll 4, nametable 14, chr 8, oam 20, objects 21, proven 15; levels 1,2,3,4,5,9,10,11,13)
- $052D slot 4: read in 19 moments; hold 0/0/0; other 16/11/0 (noise 1, dmc 4, scroll 3, nametable 3, chr 8, oam 10, objects 10, proven 3; levels 1,2,4,5,9,11); poke 16/11/0 (noise 1, dmc 4, scroll 3, nametable 3, chr 8, oam 10, objects 10, proven 3; levels 1,2,4,5,9,11)
- $052E slot 5: read in 21 moments; hold 0/0/0; other 7/7/0 (sq2 1, noise 2, dmc 1, nametable 1, chr 2, oam 7, objects 7, proven 1; levels 1,4,5,6,11); poke 7/7/0 (sq2 1, noise 2, dmc 1, nametable 1, chr 2, oam 7, objects 7, proven 1; levels 1,4,5,6,11)
- $052F slot 6: read in 15 moments; hold 0/0/0; other 15/13/0 (dmc 5, scroll 1, nametable 3, chr 5, oam 10, objects 10, proven 3; levels 1,2,4,5,6,9,11); poke 15/13/0 (dmc 5, scroll 1, nametable 3, chr 5, oam 10, objects 10, proven 3; levels 1,2,4,5,6,9,11)
- $0530 slot 7: read in 9 moments; hold 0/0/0; other 7/7/0 (sq2 1, dmc 1, nametable 1, chr 2, oam 6, objects 6; levels 2,4,6,11); poke 6/6/0 (sq2 1, nametable 1, chr 2, oam 6, objects 6; levels 4,6,11)
- $0531 slot 8: read in 6 moments; hold 0/0/0; other 1/1/0 (oam 1, objects 1; levels 4); poke 1/1/0 (oam 1, objects 1; levels 4)

The clearest cases:
- **hold**: $0529 (slot 0, kind 1 toad) held at 0 (its value then), moment 40 (level 5, player in play), 120 frames; the game still running at the end.
  - changed: sq1 from frame 115 (4 frames), sq2 from frame 115 (4 frames), nametable from frame 67 (53 frames), chr from frame 66 (54 frames), oam from frame 66 (54 frames), objects from frame 65 (55 frames), proven from frame 66 (54 frames)
  - square 1, frames 115–119 (period p, volume v, duty d; "off": the channel disabled):
    - alone: off D3 p761 v5 d2 ×2 · off D3 p761 v4 d2 ×3
    - changed: off D3 p761 v5 d2 · off A4 p256 v15 d2 ×4
  - square 2, frames 115–119 (period p, volume v, duty d; "off": the channel disabled):
    - alone: off A#2 p959 v5 d2 ×2 · off A#2 p959 v4 d2 ×3
    - changed: off A#2 p959 v5 d2 · off A4 p256 v15 d2 ×4
  - object slot 0 (kind 1 toad), field 1 ($03D0), every 6 frames from frame 65: alone 94 94 94 94 94 94 94 94 94 94; changed 45 45 45 5 5 5 5 5 5 22
  - object slot 0 (kind 1 toad), field 2 ($03DF), every 6 frames from frame 65: alone 0 0 0 0 0 0 0 0 0 0; changed 202 202 202 202 202 202 202 202 202 202
  - object slot 0 (kind 1 toad), x ($03FD), every 6 frames from frame 65: alone 32 32 32 32 32 32 32 32 32 32; changed 26 36 47 56 63 68 70 71 71 71
  - object slot 0 (kind 1 toad), y ($0439), every 6 frames from frame 65: alone 24 24 24 24 24 24 24 24 24 24; changed 32 39 40 31 12 244 220 196 172 148
  - object slot 0 (kind 1 toad), x_sub ($0448), every 6 frames from frame 65: alone 160 160 80 0 160 32 32 32 32 32; changed 240 112 208 248 232 144 232 40 40 40
  - object slot 0 (kind 1 toad), field 11 ($0466), every 6 frames from frame 65: alone 130 233 52 118 118 118 118 118 118 118; changed 170 73 68 179 19 19 19 19 19 19
  - camera_nametable_row ($0083), every 8 frames from frame 66: alone 80 80 80 80 80 80 80 80; changed 79 71 66 66 66 66 66 66
  - camera_y_lo ($0089), every 8 frames from frame 66: alone 80 80 80 80 80 80 80 80; changed 79 71 66 66 66 66 66 66
  - built_row ($0094), every 8 frames from frame 66: alone 87 87 87 87 87 87 87 87; changed 79 71 71 71 71 71 71 71
  - camera_hold ($00B2), every 8 frames from frame 110: alone 0 0 0 0 0 0 0 0; changed 5 0 0 0 0 0 0 0
  - code run only when changed (routine, instruction starts): start_sound_15 (233), obj_toad_handler (59), call_state_04 (46), l4_obj_any_spawn_or_free (46), obj_any_damage (18), write_nametable (14)
  - code run only when left alone: obj_any_spawn_or_free_7 (30), obj_any_move_10 (5), obj_any_spawn_or_free_4 (4), obj_any_spawn_or_free_6 (4), obj_vehicle_move (4), obj_any_move_9 (4)
  - picture `field-24-hold.png`: frames 65, 80, 110, 119; the top row left alone, the bottom row changed.
- **other**: $052C (slot 3, kind 110) read as 65, moment 74 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 71 (49 frames)
  - object slot 3 (kind 110), x ($0400), every 6 frames from frame 71: alone 196 204 211 217 221 225 225 225 225 225; changed 192 176 162 150 141 145 147 147 147 147
  - object slot 3 (kind 110), y ($043C), every 6 frames from frame 71: alone 116 131 143 154 162 168 170 170 170 170; changed 114 117 120 122 124 125 125 125 125 125
  - object slot 3 (kind 110), x_sub ($044B), every 6 frames from frame 71: alone 240 208 144 48 176 16 240 240 240 240; changed 176 72 80 224 136 96 48 48 48 48
  - object slot 3 (kind 110), screen_x ($0487), every 6 frames from frame 71: alone 104 112 119 125 129 133 133 129 124 124; changed 100 84 70 58 49 53 55 51 46 46
  - object slot 3 (kind 110), facing ($04A5), every 6 frames from frame 71: alone 137 137 137 137 137 137 129 129 129 129; changed 201 201 201 201 201 137 129 129 129 129
  - object slot 3 (kind 110), field 17 ($04C3), every 6 frames from frame 71: alone 3 3 2 2 1 1 1 1 1 1; changed 1 1 1 0 0 0 0 0 0 0
