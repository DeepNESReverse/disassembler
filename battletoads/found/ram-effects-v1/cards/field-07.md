# Object table field 7 (field 7): $042A–$0438, one cell per slot

Code and play ($042A), named so far `obj_field_7` (the object table (game.json): field array, slot):
- code: written by 23 routines (l6_frame_update ×2, frame_update_29 ×2, obj_any_move_3 ×1), read by 24; an indexed base ×67, the index using 0…14 (15 values)
- play: changed on 1077 of 436617 frames (+1 501, −1 520, other 56), 66 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,254
- values in play (the lowest 16 of 66): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Code and play ($042C), named so far `obj_field_7+2` (the object table (game.json): field array, slot):
- code: written by 1 routines (sub_B6_9D08 ×1), read by 1
- play: changed on 234 of 436617 frames (+1 37, −1 75, other 122), 32 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,254,255
- values in play (the lowest 16 of 32): 0 1 2 4 5 6 7 8 9 10 11 12 13 15 17 21

Code and play ($042D), named so far `obj_field_7+3` (the object table (game.json): field array, slot):
- play: changed on 1481 of 436617 frames (+1 245, −1 169, other 1067), 112 values, levels 0,1,2,3,4,5,6,7,8,9,11,12,13
- values in play (the lowest 16 of 112): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $042A slot 0: read in 66 moments; hold 18/18/1 (sq1 8, sq2 9, tri 1, noise 9, dmc 2, scroll 12, mask 4, palette 4, nametable 13, chr 16, oam 18, objects 18, proven 15; levels 0,1,2,4,5,6,7,9,11); other 66/66/0 (sq1 13, sq2 12, noise 21, dmc 14, scroll 34, mask 3, palette 5, nametable 36, chr 56, oam 66, objects 66, proven 42; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13); poke 66/63/2 (sq1 12, sq2 11, noise 21, dmc 14, scroll 33, mask 3, palette 4, nametable 35, chr 54, oam 63, objects 63, proven 41; levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13)
- $042C slot 2: read in 63 moments; hold 5/5/0 (noise 1, chr 2, oam 2, objects 5; levels 1,2,7,9,11); other 33/29/0 (noise 1, dmc 5, scroll 1, palette 4, nametable 1, chr 9, oam 21, objects 25, proven 1; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 20/14/2 (dmc 3, scroll 1, palette 4, nametable 1, chr 7, oam 9, objects 10, proven 1; levels 1,3,4,5,6,8,11,12)
- $042D slot 3: read in 65 moments; hold 15/14/0 (sq1 1, sq2 2, noise 1, dmc 3, scroll 3, nametable 3, chr 7, oam 13, objects 14, proven 2; levels 1,2,4,5,7,8,9,11); other 53/47/0 (sq1 5, sq2 3, tri 2, noise 8, dmc 14, scroll 9, nametable 10, chr 19, oam 46, objects 47, proven 9; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 41/34/2 (sq1 4, sq2 1, tri 2, noise 7, dmc 10, scroll 7, nametable 8, chr 14, oam 32, objects 34, proven 8; levels 1,2,4,5,6,7,8,9,11,12,13)
- $042E slot 4: read in 62 moments; hold 14/14/0 (sq1 1, sq2 1, noise 1, dmc 4, scroll 1, palette 1, nametable 1, chr 6, oam 12, objects 13, proven 1; levels 1,2,4,5,7,8,9,10,11); other 58/54/0 (sq1 13, sq2 14, tri 4, noise 17, dmc 16, scroll 17, mask 2, palette 9, nametable 19, chr 30, oam 51, objects 52, proven 19; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 47/41/2 (sq1 10, sq2 11, tri 5, noise 13, dmc 10, scroll 15, mask 2, palette 8, nametable 17, chr 26, oam 39, objects 40, proven 17; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $042F slot 5: read in 58 moments; hold 11/10/0 (sq1 1, sq2 1, noise 3, dmc 4, scroll 3, nametable 2, chr 5, oam 7, objects 10, proven 3; levels 1,2,4,5,6,7,9,10); other 52/47/0 (sq1 4, sq2 3, noise 11, dmc 12, scroll 9, palette 1, nametable 9, chr 23, oam 46, objects 47, proven 11; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 46/39/3 (sq1 4, sq2 3, noise 8, dmc 9, scroll 7, palette 1, nametable 7, chr 18, oam 38, objects 39, proven 8; levels 1,2,3,4,5,6,7,9,10,11,12)
- $0430 slot 6: read in 39 moments; hold 7/6/0 (dmc 4, scroll 1, chr 3, oam 5, objects 6, proven 1; levels 1,5,7,9,11); other 31/29/0 (noise 3, dmc 11, scroll 7, nametable 4, chr 11, oam 26, objects 29, proven 7; levels 1,2,3,4,5,6,7,8,9,11,12); poke 23/21/0 (noise 2, dmc 7, scroll 6, nametable 4, chr 8, oam 19, objects 21, proven 6; levels 1,2,4,5,7,8,9,11,12)
- $0431 slot 7: read in 27 moments; hold 11/11/0 (sq1 1, sq2 1, noise 2, dmc 5, scroll 2, nametable 3, chr 5, oam 8, objects 11, proven 3; levels 2,4,5,6,7,11); other 23/23/0 (sq1 1, sq2 1, noise 3, dmc 5, scroll 3, nametable 4, chr 10, oam 21, objects 23, proven 4; levels 1,2,3,4,5,6,7,9,11,12); poke 10/9/0 (scroll 1, nametable 1, chr 5, oam 9, objects 9, proven 1; levels 1,4,5,6,7,9,11)
- $0432 slot 8: read in 16 moments; hold 7/6/0 (dmc 3, chr 1, oam 5, objects 6; levels 2,5,9,11); other 14/12/0 (dmc 3, scroll 1, nametable 1, chr 3, oam 9, objects 12, proven 1; levels 2,4,5,6,7,9,11); poke 7/5/0 (scroll 1, nametable 1, chr 3, oam 5, objects 5, proven 1; levels 6,7,9,11)
- $0433 slot 9: read in 12 moments; hold 4/3/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 3, objects 3, proven 1; levels 4,5,11); other 10/9/0 (noise 1, dmc 1, scroll 2, nametable 2, chr 4, oam 9, objects 9, proven 2; levels 4,5,6,7,11); poke 6/5/0 (scroll 1, nametable 1, chr 3, oam 5, objects 5, proven 1; levels 4,7,11)
- $0434 slot 10: read in 6 moments; hold 2/1/0 (chr 1, oam 1, objects 1; levels 7); other 4/1/0 (chr 1, oam 1, objects 1; levels 7); poke 3/0/0
- $0435 slot 11: read in 4 moments; hold 3/3/0 (chr 1, oam 3, objects 3; levels 4,7,11); other 3/3/0 (chr 1, oam 3, objects 3; levels 4,7,11); poke 0/0/0
- $0436 slot 12: read in 3 moments; hold 3/3/0 (sq1 1, sq2 1, noise 1, nametable 1, chr 2, oam 3, objects 3, proven 1; levels 2,4,7); other 3/3/0 (sq1 1, sq2 2, noise 2, nametable 1, chr 2, oam 3, objects 3, proven 2; levels 2,4,7); poke 2/2/0 (sq1 1, sq2 2, noise 2, nametable 1, chr 1, oam 2, objects 2, proven 2; levels 2,4)
- $0438 slot 14: read in 1 moments; hold 0/0/0; other 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (sq2 1, noise 1, oam 1, objects 1; levels 2)

The clearest cases:
- **hold**: $042D (slot 3, kind 10 fly) held at 0 (its value then), moment 1 (level 1, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 47 (69 frames)
  - object slot 3 (kind 10 fly), depth ($041E), every 6 frames from frame 47: alone 24 30 36 40 40 40 40 40 40 40; changed 23 30 36 40 40 40 40 40 40 40
  - object slot 3 (kind 10 fly), y ($043C), every 6 frames from frame 47: alone 2 26 52 80 111 143 178 209 242 19; changed 112 113 117 123 131 141 154 168 185 205
  - object slot 3 (kind 10 fly), height ($0478), every 6 frames from frame 47: alone 146 170 196 224 255 8 8 8 8 8; changed 0 1 5 11 19 29 42 56 73 93
  - object slot 3 (kind 10 fly), field 17 ($04C3), every 6 frames from frame 47: alone 3 4 4 4 5 5 5 5 5 5; changed 0 0 0 1 1 1 2 2 3 3
  - object slot 3 (kind 10 fly), field 18 ($04D2), every 6 frames from frame 47: alone 192 32 128 224 64 160 0 96 192 32; changed 0 96 192 32 128 224 64 160 0 96
  - object slot 3 (kind 10 fly), field 11 ($0469), every 6 frames from frame 47: alone 96 48 64 144 32 240 0 80 224 176; changed 96 176 64 16 32 112 0 208 224 48
  - code run only when changed (routine, instruction starts): l12_obj_any_spawn_or_free (15)
- **other**: $042D (slot 3, kind 107 chasing_gear) read as 47, moment 72 (level 11, player in play), 120 frames; the game still running at the end.
  - changed: objects from frame 0 (120 frames)
  - object slot 4 (kind 107 chasing_gear), field 7 ($042E), every 6 frames from frame 0: alone 31 31 31 31 31 31 31 31 31 31; changed 47 47 47 47 47 47 47 47 47 47
  - code run only when changed (routine, instruction starts): obj_any_move_26 (1)
  - code run only when left alone: obj_any_check_3 (15), l12_obj_golden_brute_handler (8), obj_any_check_5 (7), obj_any_spawn_or_free_20 (6)
