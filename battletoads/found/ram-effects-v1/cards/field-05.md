# Object table field 5 (field 5): $040C–$041A, one cell per slot

Code and play ($040C), named so far `obj_field_5` (the object table (game.json): field array, slot):
- code: written by 10 routines (obj_any_move_5 ×4, obj_k25_handler ×2, l6_frame_update ×2), read by 12; an indexed base ×41, the index using 0…14 (15 values)
- play: changed on 145 of 436617 frames (+1 73, −1 42, other 30), 9 values, levels 0,1,2,3,4,5,7,8,9,10,11,12,13
- values in play (the lowest 10 of 9): 0 1 2 3 4 5 23 31 32 63

Code and play ($040E), named so far `obj_field_5+2` (the object table (game.json): field array, slot):
- play: changed on 2157 of 436617 frames (+1 115, −1 85, other 1957), 10 values, levels 0,1,2,3,4,5,6,7,8,9,10,11,12,13,255
- values in play (the lowest 14 of 10): 0 1 2 3 4 5 18 23 31 32 39 50 63 255

Code and play ($040F), named so far `obj_field_5+3` (the object table (game.json): field array, slot):
- play: changed on 1255 of 436617 frames (+1 91, −1 70, other 1094), 13 values, levels 0,1,2,3,4,5,7,8,9,10,11,12,13
- values in play (the lowest 16 of 13): 0 1 2 16 23 30 31 32 38 55 63 64 66 68 70 72

Changed in the moments the game read it (of each change: moments with any effect; with an effect outside the RAM and the code; the game stopped running):
- $040C slot 0: read in 68 moments; hold 3/3/0 (sq1 1, scroll 1, nametable 1, chr 3, oam 3, objects 3, proven 2; levels 9,10); other 67/67/1 (sq1 33, sq2 32, tri 11, noise 31, dmc 25, scroll 40, mask 11, palette 1, nametable 48, chr 53, oam 67, objects 67, proven 49; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 68/64/3 (sq1 30, sq2 30, tri 11, noise 31, dmc 25, scroll 37, mask 11, palette 2, nametable 46, chr 50, oam 64, objects 64, proven 46; levels 1,2,3,4,5,6,7,8,9,10,11,12,13)
- $040E slot 2: read in 46 moments; hold 8/8/0 (dmc 1, palette 4, chr 1, oam 3, objects 8; levels 9,10,12,13); other 28/27/0 (noise 1, dmc 5, scroll 1, palette 4, nametable 1, chr 7, oam 19, objects 27, proven 2; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 16/13/2 (dmc 3, scroll 1, palette 4, nametable 1, chr 5, oam 8, objects 13, proven 1; levels 1,3,4,5,6,8,11,12)
- $040F slot 3: read in 53 moments; hold 9/9/0 (sq1 2, sq2 1, noise 1, dmc 2, scroll 2, palette 1, nametable 3, chr 5, oam 9, objects 9, proven 1; levels 5,7,8,9,10,11); other 49/47/0 (sq1 5, sq2 2, tri 1, noise 9, dmc 14, scroll 8, palette 2, nametable 9, chr 20, oam 46, objects 47, proven 8; levels 1,2,3,4,5,6,7,8,9,11,12,13); poke 38/35/1 (sq1 3, tri 1, noise 8, dmc 10, scroll 7, palette 1, nametable 7, chr 14, oam 33, objects 35, proven 7; levels 1,2,4,5,6,7,8,9,11,12,13)
- $0410 slot 4: read in 57 moments; hold 16/16/0 (sq1 1, noise 2, dmc 4, scroll 2, palette 10, nametable 1, chr 4, oam 7, objects 7, proven 1; levels 5,8,9,10,11,13); other 55/54/0 (sq1 5, sq2 6, noise 9, dmc 13, scroll 9, palette 10, nametable 10, chr 23, oam 43, objects 44, proven 11; levels 1,2,3,4,5,6,7,8,9,10,11,12,13); poke 43/41/2 (sq1 2, sq2 4, noise 4, dmc 7, scroll 6, palette 8, nametable 7, chr 19, oam 31, objects 32, proven 9; levels 1,2,3,4,5,6,7,8,9,10,11,12)
- $0411 slot 5: read in 54 moments; hold 8/8/0 (sq1 1, sq2 1, tri 1, noise 3, dmc 3, scroll 1, nametable 1, chr 3, oam 6, objects 8, proven 1; levels 2,4,5,6,7,9,10); other 49/48/0 (sq1 7, sq2 4, tri 2, noise 11, dmc 12, scroll 10, palette 1, nametable 10, chr 20, oam 46, objects 48, proven 11; levels 1,2,3,4,5,6,7,8,9,10,11,12); poke 43/38/3 (sq1 6, sq2 4, tri 2, noise 10, dmc 9, scroll 8, palette 1, nametable 8, chr 16, oam 36, objects 38, proven 8; levels 1,2,3,4,5,7,9,10,11,12)
- $0412 slot 6: read in 37 moments; hold 5/5/0 (dmc 4, chr 3, oam 5, objects 5; levels 5,7,9,11); other 32/31/0 (sq1 1, noise 3, dmc 11, scroll 4, nametable 2, chr 11, oam 28, objects 31, proven 7; levels 1,2,3,4,5,6,7,8,9,11,12); poke 24/23/0 (sq1 2, sq2 1, noise 2, dmc 7, scroll 5, nametable 3, chr 9, oam 21, objects 23, proven 7; levels 1,2,4,5,6,7,8,9,11,12)
- $0413 slot 7: read in 25 moments; hold 10/10/0 (noise 1, dmc 5, scroll 2, nametable 2, chr 4, oam 7, objects 10, proven 2; levels 2,4,5,6,7,11); other 24/24/0 (sq1 1, noise 2, dmc 5, scroll 2, nametable 2, chr 10, oam 22, objects 24, proven 2; levels 1,2,3,4,5,6,7,9,11,12); poke 9/9/0 (sq1 1, chr 6, oam 9, objects 9; levels 1,4,5,7,9,11)
- $0414 slot 8: read in 14 moments; hold 6/5/0 (dmc 3, oam 4, objects 5; levels 2,5,11); other 13/12/0 (dmc 3, scroll 1, nametable 1, chr 3, oam 10, objects 12, proven 1; levels 2,5,6,7,9,11); poke 6/6/0 (scroll 1, nametable 1, chr 3, oam 6, objects 6, proven 1; levels 6,7,9,11)
- $0415 slot 9: read in 10 moments; hold 2/2/0 (noise 1, dmc 1, scroll 1, nametable 1, chr 1, oam 2, objects 2, proven 1; levels 4,5); other 9/9/0 (noise 1, dmc 1, scroll 2, nametable 2, chr 4, oam 9, objects 9, proven 2; levels 4,5,6,7,11); poke 5/5/0 (scroll 1, nametable 1, chr 3, oam 5, objects 5, proven 1; levels 4,7,11)
- $0416 slot 10: read in 2 moments; hold 1/1/0 (chr 1, oam 1, objects 1; levels 7); other 1/1/0 (chr 1, oam 1, objects 1; levels 7); poke 0/0/0
- $0417 slot 11: read in 4 moments; hold 3/3/0 (chr 1, oam 3, objects 3; levels 4,7,11); other 3/3/0 (chr 1, oam 3, objects 3; levels 4,7,11); poke 0/0/0
- $0418 slot 12: read in 3 moments; hold 1/1/0 (chr 1, oam 1, objects 1; levels 7); other 3/3/0 (sq1 1, sq2 2, noise 2, nametable 1, chr 2, oam 3, objects 3, proven 2; levels 2,4,7); poke 2/2/0 (sq1 1, sq2 2, noise 2, nametable 1, chr 1, oam 2, objects 2, proven 2; levels 2,4)
- $041A slot 14: read in 1 moments; hold 0/0/0; other 1/1/0 (sq2 1, noise 1, oam 1, objects 1, proven 1; levels 2); poke 1/1/0 (sq2 1, noise 1, oam 1, objects 1; levels 2)

The clearest cases:
- **hold**: $0410 (slot 4, kind 25) held at 58 (its value then), moment 82 (level 10, player in play), 120 frames; the game still running at the end.
  - changed: palette from frame 10 (92 frames)
  - palette at frame 18 (4 background then 4 sprite palettes; the high digit is brightness): alone 0F 00 10 20 0F 07 05 15 0F 10 00 27 0F 03 13 23 00 0F 0A 1A 00 0F 17 27 00 18 28 20 00 0F 3A 20; changed 0F 00 10 20 0F 07 05 15 0F 10 00 27 0F 03 13 23 00 0F 0A 1A 00 0F 17 27 00 18 28 20 00 0F 3A 3A
  - picture `field-05-hold.png`: frames 10, 25, 55, 119; the top row left alone, the bottom row changed.
- **other**: $0410 (slot 4, kind 25) read as 74, moment 82 (level 10, player in play), 120 frames; the game still running at the end.
  - changed: palette from frame 1 (119 frames)
  - palette at frame 9 (4 background then 4 sprite palettes; the high digit is brightness): alone 0F 00 10 20 0F 07 05 15 0F 10 00 27 0F 03 13 23 00 0F 0A 1A 00 0F 17 27 00 18 28 20 00 0F 2A 3A; changed 0F 00 10 20 0F 07 05 15 0F 10 00 27 0F 03 13 23 00 0F 0A 1A 00 0F 17 27 00 18 28 20 00 0F 2A 0A
  - picture `field-05-other.png`: frames 1, 16, 46, 119; the top row left alone, the bottom row changed.
