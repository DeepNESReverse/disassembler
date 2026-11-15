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

## 6. Gluing the sections into one world (started)

The player's position on the frame `$0404` turns to the next section (the capture), against the
next section's start from its header: section 0 is left at (2544, 170) and section 1 starts at
(24, 171) — the same height, so 1 goes on at 0's right edge. The player's X is kept mod 2048 px
(256 tiles in the 8.8 high byte): 496 with the camera at 2312 is 2544.

Seven pairs follow each other without a story screen: 0-1, 1-2, 3-4, 6-7, 8-9, 11-12, 13-14
(`data/joins.json`, the seams side by side in `runs/seams.png`). The first five continue the
ground across the seam; 11-12 and 13-14 do not, the way between them is not found yet. The other
seven pairs have a story screen between them and stay apart: 2|3, 4|5, 5|6, 7|8, 9|10, 10|11,
12|13. The offsets are the player's to the pixel, not yet put on the tile grid (1-2: -645).

## 7. The sound, and which writes are the music's

- This NES's sound-chip writes are FCEUX's: the same writes in the same order on 24 898 of 24 900
  movie frames (`src/experiments/apu-writers.ts`; the two others are frames 1-2 after power-on). A
  write belongs to movie frame `run.frame + 1` (the frame ends at the next line 241). No DPCM:
  `$4010` is written once, at power-on.
- The driver runs from bank 3 (PRG $C000-$FFFF mapped at $8000), four channels X = 0-3 (`$FA`).
  The music writes its channels only from `$8381/$8396/$83AB` (PRG $C381, $C396, $C3AB; $C0B3-$C0BB
  silence them), and only while the channel's `$07B9,X` has bit 1. An effect (`$9178`, PRG $D178)
  takes a channel by clearing that bit, if its priority (`$07F7,X`) allows, and writes it from
  PRG $D17F-$D2C7. So a write's owner is where it is written from: PRG $C000-$C3FF the music's,
  $D100-$D3FF an effect's, the rest (power-on) both's.
- Bank 3 also walks a per-section list at `$054A` (`$9CCD`): 3-byte entries until $FF, a word
  compared with `$14/$15` and a code put in `$054C` and checked against `$6D-$70`. Empty in
  section 0. Not read further.

## 8. The fourth chunk: floors

The fourth chunk of a section (`$040D`) holds a word for every tile column (320 columns in
section 0 = its 640 bytes), an offset into a list of words from `$040B`; `$CF08-$CFDF` reads them
1-2 times a frame, comparing with a height, bit 4 of the high byte a flag. These are the surfaces
the player stands on, per column. Not decoded further; it is where "where can a player go" starts.
The objects (enemies, money) are not found yet.

## 9. The run on the maps

- `src/take-pack.ts` → `out/levels/take.bin.gz` (1.1 MB) and `out/levels/tas.json`: from this
  NES's replay, per movie frame, read on line 100: the section, whether the field is shown, the
  camera on the section's map (the RAM's, moved to where every tile fits as in §4, then to the
  pixel where tile edges meet: x ≡ the plane x of line 0 mod 8, y the same), PPUCTRL, PPUMASK, the
  plane x/y of line 0, the eight CHR 1 KB banks, OAM, the palette, the four nametables; and the
  sound writes with their owner (§7). 23 366 of 24 948 frames show the field.
- The path: the player's `$0616-$061E` is the figure's top-left (its sprites start there:
  `src/experiments/player-anchor.ts`); the path goes through (+8, +20), cut where it jumps.
- `src/play/` (server on 127.0.0.1:4328, `player.js`): the shared page `libs/maps-run` (at
  d3ae9e3, the header in two bands) with this run's adapter — the field drawn as the PPU draws it
  through the frame's MMC3 banks, laid on the map at the camera. Checked in the browser: sections 1
  and 3 (vertical) play with the frame seamless on the map.
