# Terminator 2: Judgment Day (USA) — what is known, and the experiment behind each claim

Cartridge: `Terminator 2 - Judgment Day (USA)`, mapper 4 (MMC3), 128 KB PRG, 128 KB CHR, read in place
from `~/roms/dendy/nes` (`src/rom.ts`, `T2_ROM=` to change it; never copied here). The speedrun is
goofydylan8's TAS, TASVideos publication 2123M (submission 3441S, 11:52.56, FCEUX 2.1.5):
`fceux/goofydylan8-terminator2.fm2`, 42 824 frames, four score on (pad 2 presses B once, row 36126).
It is used only for where a player goes.

## 1. The cartridge is the TAS's

- TASVideos lists the run's ROM as `Terminator 2 - Judgment Day (USA).nes`, MD5 of the whole file
  `7e7edbc2801aefb931f4cefc638383a7`. The copy downloaded on 2026-11-16 (`~/Downloads/Terminator 2 -
  Judgment Day (USA).zip`) is that file: an iNES 1 header with mapper 4 and nothing else.
- Our `~/roms/dendy/nes` copy holds the same PRG and CHR (MD5 of everything past the header,
  `fe78b86e…`, equal for both); its header is NES 2.0 with submapper 3 (Acclaim's MC-ACC, an MMC3
  whose IRQ counts differently). xrom-libs' NES ignores submappers, so for the tools here the two
  files are one cartridge. **FCEUX gets the iNES file** — the emulator the TAS was made on knew no
  NES 2.0, and a newer FCEUX could time the IRQ by the submapper.
- The movie's own `romChecksum` (`8301909c…`) matches neither: FCEUX 2.1.5 summed something else.
  Not followed further.

## 2. The TAS on the headless NES — first without FCEUX's power-on (superseded by §3)

Before the capture, `src/replay.ts` played the .fm2 on a NES with zeroed RAM and its own seed. The
story was skipped (Start 1015), the title taken (Start 1193), then the run parted: from 1216 to 1250
the pad was not read (`src/experiments/title-flow.ts 1180 1260`: a 20-frame wait `$E8FE`, a fade
`$C918`, two 15-frame waits `$B2EE`, all counted in NMIs by `$C739`), the Start on 1241 was lost,
and the Start on 2549 paused level 1 for good. The cause was the power-on, not these waits (§3):
FCEUX's capture has the area `$D1 = 6` already on frame 1040 — the game took another way through
its intro from the first frames.

## 3. The TAS plays on the headless NES in step with FCEUX

The FCEUX capture (`fceux/movie_capture.lua` on FCEUX with the iNES file, 2026-11-16): 42 824
frames, 1 026 lagged, the areas in `src/experiments/capture-areas.ts`. Two things make this NES
power on as FCEUX does (`src/machine.ts`):

- **The RAM pattern.** FCEUX starts with `00 00 00 00 FF FF FF FF` repeated (the capture's frame 1);
  zeros here gave 888 cells apart from frame 3.
- **The random seed `$06FC/$06FD`.** The reset code counts while it waits for seven vblanks
  (`$FFA8`: `INC $06FC / DEC $06FD / BIT $2002 / BPL`), so the count is how long the PPU takes to
  its first vblanks — another number on this NES than in FCEUX. Then `$A50F` XORs the pages
  `$0200-$06FF` into it. The seed decides where enemies appear: with this NES's own (`$A6/$A6`
  against FCEUX's `$02/$02`) the first enemy of level 1 came 6 frames later in another slot
  (frame 1532) and the run parted. `Machine.seed` sets FCEUX's `$02/$02` at `$A52D`, the first
  instruction after the XOR. The random routine itself is `$C76E` (adds and XORs of the two cells).

`src/sync.ts --off 2` with the sprite page and `$8C/$90/$91` left out (`IGNORE=8c,90,91,200…2ff`;
they rotate the sprites' order — flicker — and their timing within the frame differs): **750 of
42 822 frames differ, in 319 runs, the longest 26 frames, every one by 1-26 cells and back.** The
most frequent is `$0404` (340 frames, late in the game, 1 vs 0). `src/replay.ts --off 2` passes
the 50 area changes on the same frames as FCEUX's capture and draws the game to the end (the
truck stop, the bar `$D1 = 8`, the bike, the hospital floors 2-4, the Cyberdyne building 5/7, the
finale 0). The run can be played here.

## 4. Known from the workshop (2026-10-20), corrected

`$D1` is the area the script picks (§5 has which header each one loads): the workshop's "7 and 8 =
the hospital and the steel mill" was wrong — 8 is the bar, 7 Cyberdyne's labs, 0 the steel mill.
`LDY $D1 / LDA $8F68,Y` picks the level's CHR banks (not checked here yet). The game's flow is a
bytecode script: pointer `$E0/$E1`, handler `$E2/$E3` (`JMP ($E2)` at `$E75D`).

## 5. Where an area lies in the cartridge (`src/level.ts`)

Found by following the nametable writes back (`src/vram-origins.ts 1530 2500`, `src/who-writes.ts`,
`src/who-reads.ts`, the truck stop):
- **The column builder.** `$C565` (fixed bank) writes a column of 30 tiles (`$2000` = 4, +32 a
  write) from the buffer `$05EF`. `$D6FF` fills it: `$D875` copies 16 block numbers down a column of
  the layout (pointer `$93`, `+$03CA` a row) to `$0154`, and each block gives two tiles, top and
  bottom, from `($A5)/($A9)` for its left half and `($A7)/($AB)` for its right. `$D797` gives the
  block's palette, `($AD),Y & 3`, merged into the attribute shadow `$060F` by the quadrant masks
  at `$D88E/$D89E`.
- **The header.** `$A3E0` takes header `X / 2` through the 9 words at CPU `$A40C` (PRG `$640C`) into
  27-byte entries in bank 2 (PRG `$4000`): 6 words to `$A5-$B0` (the tables: TL, TR, BL, BR tiles,
  attributes, a sixth not read yet), the row stride and the rows (`$03CA`, `$03CB`), 4 words
  (`$03CC-$03D3`, not read yet), the 8 KB bank for `$8000` (`$03D4`; `$E37B` maps it and the next
  at `$A000`), the layout's address (`$03D5`), and a routine the loader jumps to.
  `src/experiments/headers.ts` prints all 9.
- **Which `$D1` loads which header** (`src/experiments/header-loads.ts`, every load of the TAS):
  0 → 0, 1 → 6, 2 → 1, 3 → 2, 4 → 3, 5 → 4, 6 → 5, 7 → 7, 8 → 8. `$D1` changes long before the
  load (the mission screens come between).
- The layout ends exactly where the first tile table starts in the truck stop (160 × 14 bytes from
  `$99E6` to `$A2A6`) and the bar (48 × 14, `$B99D` to `$BC3D`).

| header | `$D1` | area | blocks | px |
|---|---|---|---|---|
| 5 | 6 | truck stop | 160 × 14 | 2560 × 224 |
| 8 | 8 | bar | 48 × 14 | 768 × 224 |
| 6 | 1 | flood channel (bike) | 808 × 384, sheared (§7) | 12928 × 6144 |
| 2 | 3 | hospital corridors | 96 × 38 | 1536 × 608 |
| 1 | 2 | hospital offices | 96 × 38 | 1536 × 608 |
| 3 | 4 | hospital elevator shaft | 20 × 38 | 320 × 608 |
| 4 | 5 | Cyberdyne corridors | 96 × 37 | 1536 × 592 |
| 7 | 7 | Cyberdyne labs | 96 × 37 | 1536 × 592 |
| 0 | 0 | steel mill | 96 × 80 | 1536 × 1280 |

`src/render.ts` → `out/levels/<header>.png`, with the background banks on line 100 and the palette
of a frame of the TAS inside the area (`LOOK`).

The flood channel's layout is not a grid: §7.

## 6. The maps against the game, every frame of the TAS (`src/check.ts`)

On every frame of the run, every world tile wholly inside the field (the lines drawn with line
120's scroll) is looked up in the PPU's nametable and compared with the decoded one, tile and
palette. The area is the header `$A3E0` loaded last. The camera is `$C4/$C5`, `$C6/$C7` as the NMI
writes the scroll, **plus 16, 0** (the elevator shaft: 40, 0). `PROBE=` first gave 13, -3: one
point a tile, at its centre, fits anywhere from 3 px before to 4 px after the place, and the probe
took the lowest; the user saw the frame 3 px too high on the page (§8). The place is the one where
the map's tile edges meet the nametable's, which only two points near a tile's corners pin down.
The RAM's Y is often 1-4 px ahead of the picture while it moves; within ±8 px the best fit is taken
("only shifted").

| header | frames | something else | differ | tiles apart |
|---|---|---|---|---|
| 0 steel mill | 7 857 | 40 | 2 | 32 of 5 180 066 |
| 6 flood channel | 3 410 | 225 | 1 616 | 4 679 of 1 323 010 |
| 1 hospital offices | 1 290 | 595 | 0 | 0 |
| 2 hospital corridors | 3 139 | 0 | 0 | 0 |
| 3 elevator shaft | 720 | 0 | 0 | 0 |
| 4 Cyberdyne corridors | 10 378 | 736 | 55 | 20 508 of 5 925 472 |
| 5 truck stop | 5 478 | 0 | 524 | 1 919 of 4 569 219 |
| 7 Cyberdyne labs | 5 663 | 0 | 961 | 15 058 of 3 074 751 |
| 8 bar | 2 278 | 74 | 0 | 0 |

"Something else": more than half the tiles differ — text screens, fades. What is left:
- **Cyberdyne corridors, 33 817-34 234:** the building's explosion; the screen shakes and the
  picture is a tile off within the frame (the tiles come from the column writers `$C565/$C5A7`).
- **Palettes on the field's top or bottom row** (truck stop row 1, labs row 47, steel mill row 85):
  written by the status bar's unrolled copy in bank 3 (`$A0B7-$A2C8`, from the buffers
  `$0600-$0650`). An attribute byte covers 4 tile rows; on the field's edge row it is shared with
  the status bar's rows, and the status bar's write wins. Not a fault of the map.
- **The flood channel:** 1-3 tiles a frame, nearly all in the screen's corners — the top-left
  cell where the row strip and the column strip meet (2 509 tiles at cells 0-1 of row 0-1: the
  game, moving 4 px right and 2 up a frame, renews it a frame late) and the bottom-right at the
  ride's start (432 tiles), where the camera looks past the 384th row and the game reads row
  "pointers" out of the row data. Its picture is searched ±16 px: at 4 px a frame it runs up to 12
  px from the RAM's camera.

## 7. The flood channel: a sheared corridor (`src/level.ts`, `src/bike-corridor.ts`)

The camera does move on the bike — `$C4/$C5` +4 and `$C6/$C7` -2 a frame (it stands still only
before the start, where I looked first), from x 416, y 6136 up to x 12180, y 22. The columns and
rows are written by the same `$C565`/`$C5A7` from tiles of header 6's tables, but the blocks come
from other builders (`src/who-writes.ts 9600 9604 140 163`):
- `$D8C4-$D921` set `$CC/$CD` = the header's layout word `$935C` + 2 × the block row, and
  `$95/$96` = block column - 2 × ($17F - block row).
- `$DA53` (a column, 15 blocks to `$0154`) and `$DA33` (a row, 21 blocks to `$0140`) take each row's
  pointer from `($CC)` and the block at index `$8D/$8E` of it; down a row the index grows by 2
  (`INY / INY`). An index outside 0-41 stores its high byte instead: $FF left of the row, 0 right of it
  (1, 2 further right — never in view).

So `$935C` is a table of row pointers (`src/experiments/bike-rows.ts`): 384 words, 81 distinct rows
of 42 blocks from `$965C` on (the next words are row data). Block column c of row r is byte
c + 2r - 766 of its row: the world is 808 × 384 blocks and the road a corridor 42 blocks wide
going up and right, two blocks across for one up — the camera's own slope. The broken cars,
crates and the bridges the channel passes under are background in it.

`src/bike-corridor.ts` → `out/levels/6-corridor.png` (12 064 × 6 144): the world drawn only where
the camera looked during the ride (`$C4-$C7` + 13, -3, ±16 px) and cut to that band — the
corridor, everything else black. `out/levels/6.png` is the whole 808 × 384-block world.
Its place in the world (x 416, y 0) goes to `out/levels/6-corridor.json`.

## 8. The run on the maps (`src/take-pack.ts`, `src/play/`)

`node --experimental-strip-types src/play/server.ts` → http://127.0.0.1:4330/: the shared maps page
(`src/maps-run` → `libs/maps-run`), its levels the nine maps in the game's order (`level.ts`
`ORDER`: truck stop, bar, flood channel, hospital corridors, offices, elevator, Cyberdyne
corridors, labs, steel mill). The run's spans follow the header loads one after another, so the
run goes from map to map as the game loads them (the hospital and Cyberdyne switch maps 10-12
times each); the screens between levels play on the map loaded before them.

What `src/take-pack.ts` keeps per frame (its header comment has the layout): the header loaded, the
field's place on the map, PPUCTRL/PPUMASK, the field's scroll, the MMC3's CHR banks **line by
line** (`src/experiments/line-banks.ts`, frames 1700-35500: the scanline IRQ sets the sprites' slot 4
to bank 0 at line 20 and back further down, and in the steel mill the background's slots 2-3 change
at line 179), the sprite memory, the palette, the nametables; and the sound-chip writes.
- **The field** is lines 0-219, one scroll; below, the status bar has its own.
- **Its place on the map**: the field's plane (line 120's scroll) minus a constant, the one nearest
  the RAM's camera + (16, 0). The constant is voted per visit (each load of a header) by the frames
  that fit at the RAM's camera as it is, each tile tested at two points near its corners, and is a
  multiple of 8 (the plane and the map share the tiles' grid): x 496 everywhere, y 80 (steel mill),
  64 (hospital; 32 on some visits to the corridors and offices — so per visit, not per header),
  224 (Cyberdyne), 208 (truck stop, bar); on the bike, where the RAM's camera runs off the picture,
  from the place within ±16 px where every tile fits: 80, 80 (`TRY=6,x,y` tries another: 8 px off
  either way leaves 0.76-1.1 million tiles apart, against 8 292 corner tiles of §6). A frame is
  shown on the map when fewer than half its tiles differ there (38 644 of 42 824 frames); the rest
  is dark (text screens, fades). On shown frames no tile differs in the hospital, the elevator and
  the bar; elsewhere the edge rows and corners of §6.
- **The fix of 2026-11-16.** The first pack placed the field 3 px left and 3 px up (it took the
  constant at the tile test's low edge: 499, 211…); the user saw it in the bar.
- **The player's path** (`out/levels/tas.json`, per page level): `$0427/$0428` (x) and
  `$0447/$0448` (y, the feet) — found by `src/experiments/player-cells.ts` (the words that stay in
  the camera's screen and move most), right in every area including the bike — moved onto the map
  as the field was, 20 px up.
- **The sound's owner.** The driver (bank 8, PRG `$10000-$111FF`, entries `$8000` play a frame,
  `$8003` start effect X, `$8006` start song X, `$8009` stop) runs six streams a frame, each by
  its own code (`src/experiments/sound-flags.ts`): music A `$8113`, effect 2 `$8334`, music B
  `$8545`, C `$8756`, D `$8869`, effect 1 `$897E` (flags `$39-$3E`, bit 7 = playing). A write is
  the music's from the music streams' code, an effect's from the effects' code: 208 755 music,
  64 895 effects, 1 671 neither (start, stop). The writes are FCEUX's on 42 792 of 42 822 frames
  (`src/experiments/apu-writers.ts`; the others a frame early or late around 3 618).

Checked in the browser (2026-11-16, again after the fix): the truck stop, the bar, the flood
channel, the hospital corridors and the steel mill — the game's frame sits on the map with no seam
at its edges, the path ahead, no errors.
**Open:** the music/effect split is from the code, not yet heard; the hospital's and Cyberdyne's
many short spans make the clock per span short (6 s in the first hospital corridors).
