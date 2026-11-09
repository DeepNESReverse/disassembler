# Xevious (USA): the map

The sixteen areas drawn whole. No run: the user asked for the map only (2026-11-09).
The ROM stays in `~/roms/dendy` (`src/rom.ts`) and is never copied here.

## 1. Getting into the game

Start is taken on frame 320; earlier the title ignores it and the demo plays. The field starts to
move at once, under PLAYER 1 READY, whose text is sprites.

## 2. Flying without dying (`src/flight.ts`)

`$3B` is the explosion counter read by the routine at `$F700`, which takes a life at `$F73C`. Held at
0 every frame from 341, nothing kills the Solvalou: 0 deaths in 200 000 frames.

The field only moves vertically, half a pixel a frame, over two stacked nametables (horizontal
mirroring). The camera is the game's last `$2005` y plus 240 by PPUCTRL bit 1.

## 3. The map (`src/record.ts`, `src/render.ts`)

The map is gathered from what the game itself writes to the nametables: one row per 8 pixels moved,
read four rows below the top of the screen. It is NOT decoded from the ROM's level data; there is no
decoder yet.

- Area 1 is the opening screen's 25 rows plus rows 0-258; every other area is 260 rows (2080 px).
- Sixteen areas, 33 472 px, about 18.5 minutes of flight.
- Ground installations are in the nametable, so they are on the map. Air enemies are sprites and are not.
- Palettes 2 and 3 of the background cycle in play; each area is drawn in the colours it shows most.

## 4. The loop

After area 16 the game plays areas 7-16 again. Compared row for row with the first pass (2600 rows),
42 rows differ, all in the first rows of an area and all between tiles 84-87 (`$54-$57`), the forest's
random texture. So forest cells at the start of an area are not the same on every pass.

## 5. The check (`src/check.ts`)

On every one of the 66 613 frames of the flight over the sixteen areas, all 30 screen rows were compared
with the map at the camera, tile and palette, cell by cell: 0 of about 64 million cells differ.

The check flies the same way as the recording (nothing pressed, nothing shot), so it proves that the
map is what the screen shows on that flight. It says nothing of what a destroyed installation leaves
behind.

## Not done

- A decoder of the level data in the ROM.
- A run. The user does not want one for now.
- Publishing. Nothing is pushed.
