# Object table field 13 (screen_x): $0484–$0492, one cell per slot

Code and play ($0484), named so far `obj_screen_x` (the object table (game.json): field array, slot):
- code: written by 5 routines (frame_update_28 ×5, sub_B0_87C2 ×2, obj_vehicle_handler ×1), read by 8; an indexed base ×39, the index using 0…14 (15 values)
- play: changed on 114100 of 436617 frames (+1 35438, −1 33517, other 45145), 251 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 251): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Code and play ($0486), named so far `obj_screen_x+2` (the object table (game.json): field array, slot):
- code: written by 1 routines (l1_frame_update_2 ×1), read by 1
- play: changed on 101989 of 436617 frames (+1 28580, −1 31346, other 42063), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,255
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Code and play ($0487), named so far `obj_screen_x+3` (the object table (game.json): field array, slot):
- play: changed on 130766 of 436617 frames (+1 26050, −1 29354, other 75362), 256 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13
- values in play (the lowest 16 of 256): 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $0484 slot 0: read in 68 moments; hold 52/52/0 (sq1 4, sq2 3, noise 4, dmc 10, scroll 21, nametable 19, chr 25, oam 52, objects 32, proven 22; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 68/68/0 (sq1 5, sq2 4, noise 9, dmc 15, scroll 25, nametable 23, chr 34, oam 68, objects 41, proven 26; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 23/21/2 (sq1 1, noise 1, dmc 5, scroll 15, nametable 9, chr 11, oam 21, objects 21, proven 15; levels 1,4,5,6,7,8,10,11)
- $0486 slot 2: read in 22 moments; hold 14/12/0 (dmc 1, chr 1, oam 12, objects 5; levels 1,2,3,6,10,13); other 19/16/0 (chr 2, oam 16, objects 7; levels 1,2,3,6,8,10,13); poke 2/0/2
- $0487 slot 3: read in 43 moments; hold 36/36/0 (noise 2, dmc 4, scroll 1, nametable 1, chr 7, oam 36, objects 10, proven 1; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); other 43/43/0 (noise 1, dmc 2, chr 3, oam 43, objects 8; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 1/0/1
- $0488 slot 4: read in 41 moments; hold 34/34/0 (noise 1, dmc 6, scroll 2, nametable 2, chr 5, oam 34, objects 9, proven 2; levels 1,2,3,4,5,6,7,8,9,11,13); other 40/40/0 (sq1 1, sq2 1, noise 2, dmc 2, scroll 1, nametable 1, chr 4, oam 40, objects 8, proven 1; levels 1,2,3,4,5,6,7,8,9,11,12,13); poke 1/0/1
- $0489 slot 5: read in 44 moments; hold 40/40/0 (noise 3, dmc 3, chr 4, oam 40, objects 9; levels 1,2,3,4,5,6,7,8,9,10,11,12); other 44/43/0 (sq1 1, sq2 1, noise 3, dmc 3, scroll 2, nametable 2, chr 5, oam 43, objects 10, proven 2; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 1/0/1
- $048A slot 6: read in 28 moments; hold 22/20/0 (noise 2, dmc 5, chr 2, oam 20, objects 6; levels 1,2,3,4,5,7,9,11,12); other 26/23/0 (noise 2, dmc 2, chr 1, oam 23, objects 3; levels 1,2,3,4,5,7,8,9,11,12); poke 0/0/0
- $048B slot 7: read in 22 moments; hold 18/17/0 (noise 2, dmc 4, scroll 2, nametable 2, chr 3, oam 17, objects 4, proven 2; levels 1,2,3,4,5,6,7,9,11,12); other 22/21/0 (dmc 1, oam 21, objects 1; levels 1,2,3,4,5,6,7,9,11,12); poke 0/0/0
- $048C slot 8: read in 11 moments; hold 11/9/0 (dmc 3, oam 9, objects 1; levels 2,5,6,7,9,11); other 11/10/0 (chr 1, oam 10, objects 1; levels 2,5,6,7,9,11); poke 0/0/0
- $048D slot 9: read in 8 moments; hold 7/6/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 6, objects 2, proven 1; levels 4,5,6,7,11); other 8/7/0 (chr 1, oam 7, objects 2; levels 4,5,6,7,11); poke 0/0/0
- $048E slot 10: read in 1 moments; hold 1/1/0 (chr 1, oam 1, objects 1; levels 7); other 1/1/0 (oam 1; levels 7); poke 0/0/0
- $048F slot 11: read in 3 moments; hold 3/3/0 (chr 1, oam 3, objects 1; levels 4,7,11); other 3/3/0 (oam 3; levels 4,7,11); poke 0/0/0
- $0490 slot 12: read in 3 moments; hold 2/2/0 (oam 2; levels 2,7); other 3/3/0 (oam 3; levels 2,4,7); poke 0/0/0
- $0492 slot 14: read in 1 moments; hold 1/1/0 (noise 1, oam 1, objects 1; levels 2); other 1/1/0 (noise 1, oam 1, objects 1; levels 2); poke 0/0/0

The clearest cases:
- **other**: $0484 (slot 0, kind 1 toad) read as 38, moment 8 (level 12, player in play), 120 frames; the game still running at the end.
  - changed: oam from frame 1 (119 frames)
  - picture `field-13-other.png`: frames 1, 16, 46, 119; the top row left alone, the bottom row changed.
- **hold**: $0484 (slot 0, kind 1 toad) held at 26 (its value then), moment 64 (level 6, player in play), 120 frames; the game still running at the end.
  - changed: oam from frame 1 (119 frames)
  - picture `field-13-hold.png`: frames 1, 16, 46, 119; the top row left alone, the bottom row changed.
