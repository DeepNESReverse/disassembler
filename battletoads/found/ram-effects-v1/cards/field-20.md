# Object table field 20 (timer_20): $04ED–$04FB, one cell per slot

Code and play ($04ED), named so far `obj_timer_20` (the object table (game.json): field array, slot):
- code: written by 20 routines (obj_any_update_21 ×3, obj_any_move_8 ×2, obj_delayed_spawner_handler ×2), read by 13; an indexed base ×90, the index using 2…14 (13 values)
- play: changed on 402 of 436617 frames (+1 202, −1 198, other 2), 11 values, levels 0,254
- values in play (the lowest 11 of 11): 0 1 2 3 4 5 6 7 8 254 255

Code and play ($04EF), named so far `obj_timer_20+2` (the object table (game.json): field array, slot):
- play: changed on 30530 of 436617 frames (+1 350, −1 29169, other 1011), 234 values, levels 0,1,2,3,6,10,13
- values in play (the lowest 14 of 234): 0 1 2 3 4 5 6 7 8 9 10 11 13 39

Code and play ($04F0), named so far `obj_timer_20+3` (the object table (game.json): field array, slot):
- play: changed on 47057 of 436617 frames (+1 285, −1 45146, other 1626), 256 values, levels 1,2,3,4,5,6,7,8,9,11,12,13,254
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $04ED slot 0: read in 3 moments; hold 0/0/0; other 3/3/0 (oam 3, objects 3; levels 0); poke 3/3/1 (noise 1, scroll 1, mask 1, palette 1, nametable 1, chr 1, oam 3, objects 3, proven 1; levels 0)
- $04EF slot 2: read in 12 moments; hold 8/8/0 (chr 1, oam 5, objects 6; levels 2,6,13); other 11/11/0 (chr 2, oam 8, objects 7; levels 1,2,6,13); poke 6/6/0 (chr 2, oam 2, objects 6; levels 1,6)
- $04F0 slot 3: read in 21 moments; hold 11/11/0 (sq1 2, noise 2, dmc 1, scroll 1, nametable 1, chr 4, oam 5, objects 11, proven 1; levels 4,6,8,9,11); other 19/19/0 (sq1 2, sq2 1, noise 3, dmc 3, scroll 4, nametable 4, chr 9, oam 14, objects 19, proven 4; levels 1,4,5,6,7,8,9,11); poke 16/16/0 (sq1 2, sq2 1, noise 2, dmc 3, scroll 4, nametable 3, chr 8, oam 12, objects 16, proven 4; levels 1,4,5,6,7,8,9,11)
- $04F1 slot 4: read in 30 moments; hold 19/18/0 (sq1 2, sq2 1, noise 2, dmc 1, scroll 2, palette 6, nametable 3, chr 3, oam 5, objects 18, proven 2; levels 4,5,6,8,10,11); other 30/29/0 (sq1 3, sq2 4, noise 2, dmc 3, scroll 3, palette 10, nametable 4, chr 7, oam 13, objects 29, proven 5; levels 1,4,5,6,7,8,9,10,11); poke 25/23/1 (sq1 2, sq2 3, noise 1, dmc 2, scroll 3, palette 9, nametable 3, chr 5, oam 10, objects 23, proven 4; levels 1,4,5,6,7,8,10,11)
- $04F2 slot 5: read in 17 moments; hold 7/7/0 (sq1 2, sq2 3, noise 2, dmc 1, scroll 2, nametable 2, chr 2, oam 4, objects 7, proven 2; levels 4,6,7,9,10,11); other 17/17/0 (sq1 5, sq2 3, noise 2, dmc 4, scroll 8, nametable 6, chr 6, oam 11, objects 17, proven 5; levels 1,4,6,7,9,10,11,12); poke 14/14/0 (sq1 4, sq2 3, noise 3, dmc 4, scroll 7, nametable 5, chr 6, oam 11, objects 14, proven 4; levels 1,4,6,7,9,10,11,12)
- $04F3 slot 6: read in 8 moments; hold 5/5/0 (oam 2, objects 5; levels 4,5,11); other 8/8/0 (sq1 1, scroll 1, nametable 1, chr 1, oam 5, objects 8, proven 1; levels 1,4,5,7,11); poke 4/4/0 (sq1 1, scroll 1, nametable 1, chr 1, oam 3, objects 4, proven 1; levels 1,4,7)
- $04F4 slot 7: read in 9 moments; hold 6/6/0 (sq2 1, scroll 1, nametable 2, chr 1, oam 5, objects 6; levels 4,5,6,9,11); other 9/9/0 (sq1 1, sq2 1, noise 1, dmc 1, scroll 1, nametable 2, chr 1, oam 7, objects 9, proven 1; levels 2,4,5,6,9,11); poke 4/4/0 (sq1 1, sq2 1, noise 1, scroll 1, nametable 2, chr 1, oam 3, objects 4; levels 2,4,6,9)
- $04F5 slot 8: read in 6 moments; hold 3/3/0 (scroll 1, nametable 1, chr 1, oam 2, objects 3; levels 4,9,11); other 6/6/0 (sq1 1, noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 4, objects 6; levels 2,4,9,11); poke 3/3/0 (sq1 1, noise 1, scroll 1, nametable 1, chr 1, oam 2, objects 3; levels 2,4,9)
- $04F6 slot 9: read in 6 moments; hold 3/3/0 (dmc 1, oam 1, objects 3; levels 4,11); other 6/6/0 (noise 1, dmc 2, oam 2, objects 6; levels 2,4,11); poke 4/4/0 (noise 1, dmc 2, oam 1, objects 4; levels 2,4,11)
- $04F7 slot 10: read in 4 moments; hold 1/1/0 (objects 1; levels 11); other 3/3/0 (noise 1, dmc 1, oam 1, objects 3; levels 2,4,11); poke 3/3/0 (noise 1, dmc 1, oam 1, objects 3; levels 2,4,11)
- $04F9 slot 12: read in 1 moments; hold 0/0/0; other 1/1/0 (sq1 1, scroll 1, nametable 1, chr 1, oam 1, objects 1; levels 7); poke 1/1/0 (sq1 1, scroll 1, nametable 1, chr 1, oam 1, objects 1; levels 7)

The clearest cases:
- **other**: $04F1 (slot 4, kind 10 fly) read as 16, moment 7 (level 4, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 4 (kind 10 fly), field 27 ($055A), every 6 frames from frame 0: alone 128 128 128 0 0 0 0 0 0 0; changed 144 240 80 96 192 32 128 224 64 160
  - object slot 4 (kind 10 fly), facing ($04A6), every 6 frames from frame 0: alone 192 192 192 128 128 128 128 128 128 128; changed 192 128 128 192 192 128 192 128 128 192
  - object slot 4 (kind 10 fly), x ($0401), every 6 frames from frame 0: alone 161 161 161 173 185 197 209 221 233 245; changed 161 161 161 166 156 164 163 157 167 159
  - object slot 4 (kind 10 fly), depth ($041F), every 6 frames from frame 0: alone 216 216 216 216 216 216 216 216 216 216; changed 216 216 216 207 209 215 205 213 211 206
  - object slot 4 (kind 10 fly), x_sub ($044C), every 6 frames from frame 0: alone 0 0 0 0 0 0 0 0 0 0; changed 0 0 0 120 184 248 0 136 72 8
  - object slot 4 (kind 10 fly), field 10 ($045B), every 6 frames from frame 0: alone 0 0 0 0 0 0 0 0 0 0; changed 0 0 0 192 184 48 112 176 184 64
  - code run only when changed (routine, instruction starts): obj_any_move_5 (37), l3_obj_toad_check (1)
- **hold**: $04F1 (slot 4, kind 62 brown_column) held at 6 (its value then), moment 66 (level 6, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 6 (114 frames)
  - object slot 4 (kind 62 brown_column), x ($0401), every 6 frames from frame 6: alone 223 217 211 205 199 193 187 181 175 169; changed 225 231 237 243 249 255 5 11 17 23
  - object slot 4 (kind 62 brown_column), screen_x ($0488), every 6 frames from frame 6: alone 1 227 197 167 137 107 77 47 17 243; changed 3 241 223 205 187 169 151 133 115 97
  - object slot 4 (kind 62 brown_column), field 27 ($055A), every 6 frames from frame 6: alone 128 128 128 128 128 128 128 128 128 128; changed 0 0 0 0 0 0 0 0 0 0
  - object slot 4 (kind 62 brown_column), x_hi ($03F2), every 6 frames from frame 6: alone 6 6 6 6 6 6 6 6 6 6; changed 6 6 6 6 6 6 7 7 7 7
