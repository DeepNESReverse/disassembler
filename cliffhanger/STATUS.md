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
  2 KB bank × it), a byte the loader skips (0 in all), and **the player's start**: X and Y words
  → `$0616/$0617` and `$061D/$061E`, in tiles as 8.8 fixed point. Those four cells are the player's
  position (they follow the player through the capture: X 0x0300 → 0x1640 as the camera goes
  0 → 58; section 2 starts at Y 117 of 128 tiles, at the bottom of the climb).
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

## 4. The map against the game, every frame of the TAS

`src/check.ts`: on every movie frame of every section, every world tile wholly inside the field
(lines 0-175, above the status bar) is looked up where the PPU shows it — the nametable cell under
the tile's centre through that line's scroll — and compared with the decoded tile number and
palette. Every nametable byte carries the instruction that wrote it last, for tagging.

- The camera: `$18/$19 - 8`, `$1A/$1B`. While the camera moves, the picture is drawn with a camera
  a few pixels behind the RAM's (the same at line 0 and at the NMI's `$2005` write); on those frames
  the check finds the place within ±16 px where the whole field matches (`exact only shifted`).
  Section 0 shows why: the nametable row is always world y + 83 (mod 240), so the picture is
  whole, only the RAM's camera ran ahead (`PROBE=…` prints the fit for given frames).
- Result (`runs/check-all.txt`): 24 846 frames checked. Every frame of play matches the decoded
  map with 0 differing tiles. The frames that differ are all in the last 25-90 frames before the
  next section starts (6957-7044, 11449-11494, 11968-12013, 14547-14592, 16776-16800, 17901-17967,
  21366-21432): the transition, where `$F03F` (PRG $1F03F) fills a whole nametable from the ROM
  (story screens: "Gabe gets out just in time!…") and `$1F26D`/`$1F15B` write over it.
- First-look tools kept: `src/check-place.ts` (pixel match, any y).
- Covered only where the TAS camera went; the rest of each section is next (no-clip, as Alien 3).

## 5. The palette

- The section's palette is its own: 32 bytes at **PRG $12400 + 32 × section** (bank 4, base word at
  `$C595`), copied by `$CB6D` into `$052A` (the fade's target; `$F2B3` fades `$052A` into the
  buffer `$44-$63` through the table at `$F2C8`, colour × 4 + step). Every palette load of the
  whole movie (`src/who-writes.ts 0 24900 52A 52A`): each section loads its own number on entry
  (`$CCFC`, index `$0404`); 16-23 are the story screens'. One change inside a section: section 13
  loads palette 15 at movie frame 22 700 (not looked at yet).
- The backdrop is byte 16, not byte 0: the 32 bytes go to `$3F00-$3F1F` in order and `$3F10`
  mirrors `$3F00`. Sections 5, 8, 9, 10, 13, 14 have $30 at byte 0 and $20 at byte 16, and the game
  shows $20 (`src/experiments/palette-seen.ts`).
- `src/render.ts` now draws from the cartridge alone (CHR 2 KB bank × header byte, this palette);
  `FROM_RUN=1` draws with the banks and palette of a frame of the TAS: all 15 pictures are the
  same, byte for byte.
