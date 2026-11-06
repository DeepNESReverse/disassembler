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
