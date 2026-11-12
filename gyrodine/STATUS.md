# Gyrodine (Japan): the map

Crux (the 1984 arcade original) for Taito, Famicom 1986 (who ported it is disputed), NROM-256. The map is gathered from the user's own playthrough
(2026-11-12, nes-explorer's player; its pads are `runs/play-20261112-1219`: 74 513 frames, immortal from frame 609 by the
game's own invincibility held — bit 2 of the player's `$53`, the timer's high byte `$0122` = 4), replayed on
nes-explorer's core, which equals FCEUX. The ROM stays in `~/roms/dendy` (`src/rom.ts`); the core comes from a
checkout of xrom-nes-explorer (`src/explorer.ts`), whose replay must know `latePins` `bits`.

## 1. The field

The field only scrolls vertically, half a pixel a frame upward through the map, over one nametable's 30 rows
(vertical mirroring: `$2800` is `$2000`). The two nametables side by side make it 512 px wide; the camera's x
stays between 99 and 155, so the player sees about x 99-410 of it. The field starts to move on frame 799 (Start
on the title ~469, Game Start's tune from 534, its 255 frames' wait).

## 2. The map (`src/record.ts`, `src/render.ts`)

One row each time the field moves 8 px, read two rows under the screen's top, both nametables, with the
attribute palettes and the background palette of that frame; the opening screen's 28 rows under it. NOT decoded
from the ROM's level data. `runs/rows.json`, `out/map.png` (512 × 35 520, the first flown at the bottom).

## 3. The loop

One pass is 4 440 rows (35 520 px, 71 040 frames, 19.7 minutes): rows 4 440-4 491, the run's last, equal rows
0-51. (A 100-row stretch from row 3 568 repeats rows 28-127: the game reuses pieces of the field.)

## 4. The check

On every frame from 799 to the end (73 714 frames), rows 2-29 of the screen, both nametables, were compared with
the map at the camera: 0 of 132 095 488 cells differ. Nothing the player bombs changes the background.

## 5. On the site

`src/public.ts` → xrom.dev/games/gyrodine/maps (2026-11-12): the shared maps page with `out/whole.png`, no run
over it.
