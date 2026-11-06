# Spelunker (Japan) — the cave drawn whole, with a TAS over it: status

Same plan as ~/alien3-levels and ~/circus-charlie-levels. Format only from the cartridge; every
claim below with the tool that shows it. The ROM is read in place from `~/spelunker-tas/` (`src/rom.ts`),
never copied here.

The TAS: yuigenron2's (TASVideos, FCEUX 2.1.4a, Spelunker (J) [!], 16 141 frames, 7 900 rerecords),
captured in FCEUX by the user with `fceux/movie_capture.lua` (2026-11-07) → `fceux/movie_capture.play.txt`.

## 1. The TAS replays here exactly — with both pads (`src/sync-explorer.ts`, `src/movie.ts`)
The movie presses pad 2 too (left on it, with right on pad 1: the game ORs both pads). movie_capture.lua
logs pad 1 only, so `movie.ts` takes pad 2 from the .fm2 itself (frame N = its N-th input line). On
nes-explorer's core with `port2` on, the whole RAM equals FCEUX's after **every one of 16 141 frames**
(the stack page aside). Without pad 2 it parts at frame 406. xrom-libs' NES needed FCEUX's RAM laid
over (lead 4) to stay in the game.

## 2. The cave: decoded from the cartridge (`src/level.ts`)
- The nametables are written only from a queue flushed in the NMI ($BBC5: 8-byte entries at ($36) —
  VRAM address, source pointer, end and start index; the bytes go out at $BBF9).
- The row builder ($BC54) reads a map row through ($10) with $8D7B, 14 bytes, and puts each metatile's
  8 bytes from $C64B + 8·index into $0400 (top tiles) and $0440 (bottom tiles); $BA7F steps ($10).
  Over the whole run (and 3 000 frames after it) ($10) takes 150 row starts, $BE17 to $C63D, all 14
  apart (`runs/map-range.ts`): **the map is 150 × 14 bytes at $BE17**, the metatiles follow at $C64B.
- A byte ≥ $B0 is a thing that changes: `$94A6[n]` picks its state cell in $07C0-; n ≥ $30 → metatile
  `$94F6[2(n-$30) + (state = 0)]`; else state 0 → $80, negative → $53, else $82 + (state & $30)/16.
- Attributes ($BD6B, buffer $0480 by $BD91): 14 bytes a row at $CAEB, the upper half ($0F) for an
  even row of a screen, the lower ($F0) for an odd one. The world is 10 screens of 15 map rows (the
  nametable's 30 tile rows); attribute row = 8·screen + (row mod 15)/2 (`runs/attr-map.ts`: 14 → 7,
  15 → 8, 16 → 8). World: 56 × 300 tiles, 448 × 2 400 px; $2000 holds columns 0-31, $2400 32-55.
- `src/render.ts` → `out/cave.png`, with the background table ($1000) and palette of frame 100.

## 3. Checked against the game, every frame (`src/check.ts`)
No split: every line of every frame continues the one above (the status bar is sprites). Each shown
plane row R is matched to world row 30k + R. Over frames 50-16 141: 15 468 480 cells shown, 98 331
differ, every one accounted for:

| world → game | cells | what |
|---|---|---|
| 0 → $B1/$B3 | 48 090 | lift cables, written where the lifts are ($BC9A, by $0244) |
| $D0-$D7 → another of them | 26 556 | animated tiles (eight, rotating) |
| 0 → $0B | 22 247 | the start lift's cable, column 3 ($BCE6, by $41/$42) |
| another screen's row | 1 278 | a row at the screen's edge not rebuilt yet |
| others | ~60 | one-frame writes in play ($9A-$9D, $C0-$C3, $86-$8B …): things drawn at the spot |

## 4. The sound: music and effects told apart from the code (`src/sound-sites.ts`)
The driver keeps one slot a channel, its stream at ($D4+c, $D8+c); it writes every channel through
$DB1D/$DB28/$DB97-$DBAB (X = the channel). A sound starts where the game sets a stream pointer to an
immediate: `LDA #lo / STA $D4+c / LDA #hi / STA $D8+c`, scanned over the PRG. Back to back (8 bytes
apart) they are one start; a start of two or more channels is a song, one channel an effect: **10
songs** (Title $8092, BGM $8380, Invincibility $8422, Power-Up $8434, Multiplier $8446, Ghost $935F,
Lose a Life $954E, Checkpoint $9CDE, Ending $AABA/$AB64, Game Over $ABBC) and **22 effects** — the
same split as the "with SFX" NSF rip (32 songs, 1-10 on two or three channels, 11-32 on one), read
here from the cartridge alone.

## 5. The run packed, the page (`src/take-pack.ts`, `src/play/`)
`take-pack.ts` → `out/cave/take.bin.gz` (0.55 MB): per frame the camera (world x = plane x; world y
= 240·screen + plane y, the screen whose rows the plane holds at line 0), the plane scroll, sprite
memory, palette, both nametables; the sound writes with their owner. The screen is chosen over the
whole picture (30 rows), a tie to the nearest of the frame before: chosen by line 0's row alone it
flipped 240 px on 904 frames (rows alike in two screens) and the page's view shook; now the camera
moves more than 8 px in a frame 5 times, each a life lost and the spelunker back at a checkpoint
(`runs/cam-jumps.py`). **The writes equal FCEUX's on
every frame.** 16 122 frames show the cave. `out/cave/tas.json`: the spelunker's way (top-left of
the palette-0 sprites below the status bar, tiles under $D0 — the ceiling's drops $DA-$DF are
palette 0 too and pulled the path up to them; 6 pieces, broken at the five lives lost; his left-right wiggle on the first lift is the TAS's).
`src/play/server.ts` → http://127.0.0.1:4326/: the shared page (`src/maps-run`) with the cave
(`out/cave/cave.png`), the run window, the path, sound with music/effects apart.

## 6. The items (`src/items.py` → `out/cave/items.json`, the page's "items" layer)
The object table: 251 entries of 8 bytes at $AE46 — world y, world x, width, height, a parameter, the
type — ending at $B61E (y 2400, x $FFFF); the reader ($96B4-$9781) walks it 8 bytes at a time with
the index in $17, a flag per entry at $0500 + index ($96EE); an object's sprite stands at its world
x, y less the camera (`runs/objects.ts`). Over the run the flags of types 0-7 go from 255 to 0 (taken:
0 ×9, 1 ×6, 2 ×9, 3 ×17, 4 ×9, 5 ×8, 6 ×5, 7 ×3), of other types never that way — 0-7 are the
pick-ups, plus $0F (drawn behind the background, never taken). 166 items; each type's look is read
off the run (the sprites at the same place in at least 60 % of its objects first on screen; type 6
flickers, its commonest pose kept). The page draws them all on the cave from the start, under the
run's window, and takes each away from the frame its flag goes 255 → 0 — only what the TAS picked up.
