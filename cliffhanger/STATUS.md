# Cliffhanger (USA) — what is known, and the experiment behind each claim

Cartridge: `Cliffhanger (USA).nes`, mapper 4 (MMC3), 128 KB PRG, 128 KB CHR. Its PRG+CHR MD5 is the
romChecksum of klmz's TAS (`fceux/klmz-cliffhanger.fm2`, 24 948 frames), which is used only for
where a player goes. The FCEUX pass (`fceux/movie_capture.lua`) logs per frame the pad, the RAM, the
sound-chip writes and — new for this game — the mapper ($8000-$FFFF) and PPU-control ($2000, $2001,
$2005, $2006) writes.

## 1. The TAS plays on the headless NES in step with FCEUX

`src/sync.ts --off 2`: the RAM of this NES ($10-$7FF but the stack page) is set beside FCEUX's after
every movie frame. 24 946 frames, 96 differ: every one of them for a single frame by 1-4 cells
(mid-routine snapshots, half of them next to FCEUX's lag frames) and back the next frame — except the
last 35 frames (24 914 on), where FCEUX's RAM turns to its power-on pattern (the game resets after
the ending, here it does not). Open: why, and whether it matters (it is after the last level).

What made it line up:
- A frame of FCEUX's ends at **line 241 before the NMI** (xrom-libs' `beforeVblank`), not at line
  261 where `runFrame` returns. The RAM is compared there, and **the pad changes there**: the game
  reads the pad twice in a row (`$DFCB`, into `$0551` then `$0552`) and the second read lands near
  line 261, so changing the pad at the start of `runFrame` gave the two reads different pads and the
  run parted at the first Start (movie frame 824).
- This NES's first line 241 ends movie frame 2.

`src/run.ts` (`new Run().to(f)`) is the TAS at any movie frame, with the whole bus open;
`src/tas-shots.ts` saves its pictures (`runs/sections.png`, gitignored: one frame per section).

## 2. Sections and the camera (from the capture's RAM)

- **`$040A` = the section**, 0 at movie frame 984 up to 14 at 23 511 (15 sections). `$0404` is set
  to the next one a few frames before the switch (3474 → 1, … 23 494 → 14). `src/experiments/mono.py`.
- **The camera is `$18/$19` (X) and `$1A/$1B` (Y)**, 16-bit, in pixels of the section
  (`src/experiments/camera-y.ts`, at the places check-place.ts found, §4). `$40/$41` = X - 8,
  signed (every section starts at -8, $FFF8): the value the screen's left column is at, and the
  first `$2005` X write of every frame; `$42` is the first `$2005` Y write, the Y wrapped into the
  nametables (`src/experiments/cam.py`).
- The picture has a status bar at the bottom, split by the MMC3 scanline IRQ (about one
  `$C000/$C001/$E000/$E001` set a frame).

## 3. Where a section lies in the cartridge (`src/level.ts`)

Found by following the nametable writes back (`src/vram-origins.ts`, `src/who-reads.ts`,
`src/who-writes.ts`, frames 970-1100 of the TAS, the way into section 0):
- The loader `$D42A` takes the section's 12-byte entry from the table at **CPU $C5E7** (fixed bank,
  PRG $1C5E7), index `$0404`: width and height in tiles (words, → `$06F4`, `$06F6`; the layout's
  row stride `$06F8` = width / 2), the CPU address of a 3-byte source entry (address, 16 KB PRG
  bank), the background CHR (`$D514`: R0 = 2 × it, R1 = 2 × it + 2, so the field's 4 KB is CHR
  2 KB bank × it), and five bytes not read yet.
- The source is a chain of chunks, each a length word (itself included) and its bytes (`$D554`):
  the layout (`$06EA`), the blocks' tiles (`$06ED`), the blocks' attributes (`$06F0`), a fourth
  chunk (`$040D`, not read yet). Checked on all 15: the layout's length is exactly
  columns × rows of blocks, the tiles' 4 × and the attributes' 1 × the highest block used + 1.
- Blocks are 16 × 16: four tile numbers (top left, top right, bottom left, bottom right; the row
  builder `$E440` takes the pair for the half it needs) and an attribute byte merged into the
  attribute table with the quadrant's mask.
- The banks: `$D58E` maps the 16 KB bank `$06EC` at $8000 (R6 = 2 × it, R7 = 2 × it + 1).

`src/render.ts` → `out/levels/<nn>.png`: every section whole, with the CHR banks the PPU reads on
line 100 and the palette, both at a frame of the TAS 150 frames into the section (the banks there
are the header's, for all 15).

| # | tiles | bank | chr |  | # | tiles | bank | chr |
|---|---|---|---|---|---|---|---|---|
| 0 | 320 × 48 | 0 | 0 | | 8 | 96 × 48 | 2 | 8 |
| 1 | 320 × 48 | 0 | 0 | | 9 | 240 × 64 | 1 | 8 |
| 2 | 40 × 128 | 0 | 0 | | 10 | 96 × 48 | 2 | 8 |
| 3 | 320 × 48 | 1 | 2 | | 11 | 400 × 28 | 3 | 10 |
| 4 | 320 × 48 | 1 | 2 | | 12 | 40 × 128 | 2 | 10 |
| 5 | 64 × 32 | 2 | 4 | | 13 | 240 × 48 | 3 | 12 |
| 6 | 320 × 48 | 2 | 6 | | 14 | 96 × 128 | 4 | 12 |
| 7 | 80 × 96 | 2 | 6 | | | | | |

## 4. The map against the game (first look)

`src/check-place.ts`: the background the PPU drew (lines 0-175) is matched against the drawn
section, x at `$40/$41` + dx, y anywhere. Sections 2 and 5: 0 of ~5000 sampled pixels differ, at
dx 0. Section 0: dx -2 and 2-3 % differ while the camera moves — the frame is drawn with the
camera of the frame before; the rest is not explained yet. The full tile-by-tile check is next.
