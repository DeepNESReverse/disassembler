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
- The camera, set again after the pass (2026-11-16): the search for where the tiles fit is ambiguous
  where the field is plain (sky, snow, far mountains) and took a wrong place on 1 380 frames — 1 px
  left and 3 px down in section 6's end, where the user saw the mountains slide; sections 2, 9, 10,
  12, 14 had such frames too. The field's plane and its place on the map differ by a constant per
  section (the nametables wrap the map one way all along): taken from the frames where the RAM's
  camera fits as it is (every one of them agrees, e.g. section 0: x +0, y +80 mod 240), each shown
  frame's place is the one nearest the RAM's camera that its scroll agrees with. After it every
  section's frames have that one constant.
- The path: the player's `$0616-$061E` is the figure's top-left (its sprites start there:
  `src/experiments/player-anchor.ts`); the path goes through (+8, +20), cut where it jumps.
- `src/play/` (server on 127.0.0.1:4328, `player.js`): the shared page `libs/maps-run` (at
  d3ae9e3, the header in two bands) with this run's adapter — the field drawn as the PPU draws it
  through the frame's MMC3 banks, laid on the map at the camera. Checked in the browser: sections 1
  and 3 (vertical) play with the frame seamless on the map.

## 10. The PPU's open bus (the end of the movie)

From movie frame 24 914 this NES took another way: the player, standing at the right edge of
section 14, fell and the section restarted, while in FCEUX they stood (`src/experiments/end-compare.ts`
— the RAM the same up to 24 913, then the object loop `$E838` and a restart here only). The floor
walker (`$CF32/$CF69`, §8) runs off the end of the section's floor table there and reads `$3A13…`,
mirrors of the PPU's registers (`src/experiments/io-reads.ts`). FCEUX answers a write-only PPU
register with its I/O latch (PPUGenLatch: the last value written to or read from the PPU),
`$2002` with that latch in its low 5 bits; xrom-libs' NES answers 0.
`src/machine.ts` now keeps that latch (around the NES, which is not changed). With it the whole movie
is in step to its last frame: 61 frames with 1-4 cells apart for a frame (sync.ts), none after 24 913.

The movie ends at 24 948 with the last boss alive. In FCEUX, played on with nothing pressed, the
boss walks off the cliff and the ending runs (the user, 2026-11-15). Here at first he stood and
killed the player three times (`runs/after.png`): his floor reads go off the table too, `$3A13`
then `$3A14` (`src/experiments/io-reads.ts 24930 25060`), and `$2004` was answered with the sprite
memory ($D0). FCEUX's old PPU (its default) answers `$2004` with the latch as well: with that the boss
falls, "GAME COMPLETED" and "THE END" follow (`runs/after2.png`), and the movie stays in step as
before (61 frames, sync.ts). `src/take-pack.ts` packs 600 frames past the movie: section 14 is shown
to 25 112, the boss's fall. (`fceux/movie_tail.lua`, recording FCEUX past the movie, was not needed.)

## 11. The objects

`src/objects.ts` → `out/levels/objects.json`, `src/objects-draw.ts` → `out/levels/<nn>-objects.png`.
- A word per section at CPU `$AD5C` in bank 5 (PRG $16D5C, index `$040A`; `$D9E2` reads it into
  `$051E/$051F`; 0 for sections 2, 7, 14) points to 9-byte entries: flags ($09, $29, $A9, copied to the
  slot's first byte), kind, X in tiles (word), Y in tiles as 8.8, three bytes not read. Their number is
  the first byte of a second list (a word per section at `$C69B` into bank 5, `$051D`; its 5-byte
  entries, X, Y and an index, are copied to `$0423` on). 217 objects in all.
- Five object slots of `$1F` bytes follow the player's (`$0614`): byte 0 flags (bit 0 on), X at +2/+3
  and Y at +9/+10 like the player's. The spawner `$DAA7-$DC43` fills a slot from an entry and its kind's
  template (PRG $17618 on); each frame `$E853` copies a slot to `$1C-$31`, `$E8CA` back.
- Not on the page: the user found the drawn objects poor and asked for the switch to go
  (2026-11-15); the tools stay.
- The look of a kind is read off the run: for each entry the run spawns (a slot coming on at its
  place), the sprites around it on the first frame it is wholly on the field, the player's left out;
  per section and kind the commonest, with that frame's CHR banks and sprite palettes. (Drawn first
  with the section's own sprite palettes from the ROM, the enemies came out pink — the user saw it: a
  kind's colours are loaded with it.) 50 looks; a kind the run never
  shows in a section borrows another section's look; 11 objects of kinds the run never shows at all
  are not drawn (0:f 0:1d 3:10 5:1a 5:1e 6:ff ×2 12:1f 12:13 13:17 13:ff).
- **Wrong, found 2026-11-16 (§15):** the list the game spawns from is the second one, not the first
  read in order. objects.ts reads entries 0 … n-1 of the first list; the game reads the second list's
  rows, each naming an entry by index — some indices past n, some entries never named, one named
  twice. objects.json is kept as it was; items.ts reads the rows.

## 12. One world

`src/world.ts` → `data/world.json` (and `out/levels/world.json`, `out/levels/tas-world.json`): each
section where the player, leaving the one before, stands on the same spot at its start (§6); when they
leave near the right edge the next one starts at that edge. By the user's word the house (section 5)
is not in the row: sections 4 and 6 are glued to each other, and the house's inside is laid over its
outside in section 4: into its log walls (x 2369-2527, y 161-240 of 04.png, under the roof's snow,
measured off the picture), 159 × 79, at 159/512 — the inside, 512 × 256, is the walls' shape (the
user asked for it exactly the house's size, 2026-11-16); section 14 does not follow
13 and is a map of its own. The world is 22 438 × 1 766. 10 → 11 is the one join not at an edge (the
player leaves section 10 at x 598 of 768): 11 overlaps 10 there, not looked at closely yet.

The page (`src/play/player.js`; the left 8 columns the game hides are drawn clear, the map showing through,
not as a backdrop stripe), two ways to look (the joins are not perfect, the user asked for
both): the whole mountain (sections 1-14 as the user counts them, a level of 13 pieces: maps-run's
`image` may now give `{ w, h, pieces }`, libs/maps-run commit "A level made of several maps",
local) and every section alone (section 15 only so). The run follows the way chosen: its spans are
there both ways, and choosing a level puts that way's spans first (the page takes the first span
that holds a frame). `out/levels/tas-world.json`: level 1 the world, s + 2 section s. On the whole
mountain the run is seamless (the user's word, 2026-11-16): each section's stretch of play is its
shown frames less the fades at its ends (frames whose background palette is not the one the stretch
shows most), and everything between stretches — the story screens, the fades, their music — is cut:
the run jumps over it (after the page's frame), a cut frame is not drawn, and the clock counts only
what is kept. Every section also opens with its tune while the player stands at the header's start:
2.7 s in each (2.8 in section 14), from the frame the loader puts the player there to the first frame
their place changes (`src/starts.ts` → `out/levels/starts.json`, from the capture). On the whole
mountain that wait is cut too in every section but the first (the user's word: the tune once, then
only movement from section to section): 5:29 of 6:15. Section by section all is played, music too: a section's span starts
where the one before ends (the screens before it are its own; section 1's from power-on), the last
runs to the take's end (the ending). The page goes on past a span's end to the next in its array, so
section 15's whole-mountain span runs to the last frame (else the next in the array, section 1's,
would start the run over). On the whole
mountain the run's slider has a mark where each section's play starts, its number under it (from 1, as the
user counts); a click on the number takes the run there (the user's idea, 2026-11-15). While the run is in the house the inside fades in over the walls, the run's frame scaled with it
(a `scale` after the page's transform), the world dims, and the view zooms to the house (to fill the
window; the page stops at 400 %) with the follow paused; out, both come back. This is done after the
page's frame (onFrame runs inside it, and the page then scrolls by the zoom it read at the start). The
objects are drawn on the maps (a switch). Checked in the browser.

## 13. The seams

The user saw it (2026-11-15): the end of section 0 and the start of section 1 are the same ground —
the game repeats a section's end at the next one's start, so a seam is an overlap, not an edge.
`src/overlap.ts` cuts two maps into 8 × 8 tiles (a hash of each one's pixels) and tries the next map
at every tile offset near a guess; an offset scores by the share of overlapping tiles the same,
leaving out tiles of one colour in both. 0 → 1: (2384, 0), 181 of 492 tiles the same — the cliff's
edge at section 1's x 16 on section 0's x 2400, its ledges at the same heights; the trees, clouds and
far mountains are laid out anew, hence 37 %. The other joins score 0-15 % (different trees, palettes):
not taken.

So the seams are set by eye. `src/world.ts` takes, in order: the user's (`data/joins-user.json`,
`{ "a-b": { dx, dy } }`), the same ground when overlap.ts scores 30 % or more, the player's spot. The
workshop page has a "seams" switch (never on the site): click a section of the whole mountain, the
arrows move it (1 px, Shift 8 px) with every section after it, the moved one shows through; Save posts
the joins moved (and set before) to the server (`POST /joins`), which writes the file and runs
world.ts.

Section 14 is glued too now (the user's word, 2026-11-16: "I will set it by hand"): no section is
apart (`APART = -1` in world.ts, `apart: []` in world.json). It starts where its join puts it; a
section the player does not start at the left of (14's start is x 568) goes at the edge, at the
height the player leaves and enters, for the user to set by eye. Its map is still a level of its own
section by section. The whole mountain's span then runs to the last frame (the cut after the last
stretch ends the run).

## 14. On xrom.dev (2026-11-16)

The seam editor is gone (the user's seams stay in `data/joins-user.json`). `src/public.ts <dir>` builds
the site's folder with no ROM: `cart.bin.gz` is the CHR with only the tiles the page draws (2 634 of
8 192: the maps' through their sections' banks, the run's field and sprites through each shown
frame's banks), the maps, the run, the path, world.json, starts.json, levels.json (the site's text
of each section's map), the player bundled by esbuild. Built into `~/xrom/public/maps/cliffhanger`;
the art (`src/art.ts`: logo off the title screen at frame 900 of the game left alone — the TAS skips
it —, a cover strip of TAS frame 1310 with its hidden left columns from the map, the hero off the
sprite layer; `src/preview.ts`: run.mp4, 12 s of section 0 over the map; maps.webp, og.png) into
`~/xrom/public/art/cliffhanger`. The page's levels are 0 the whole mountain and n section n, so the
site's `#level=n` links open the section the site names. xrom commit d05d54a: the game (Spidersoft,
1993; chapters Run and Maps, credit TASVideos 3752M) and Spidersoft's bio (unchecked).

## 15. The items (2026-11-16)

The user's word: an "items" switch with what the player picks up — money, the campfires, the pistol,
the boots and the like — no enemies; and as many on the map as the hero can take, no more.
`src/items.ts` → `out/levels/items.json`, `out/levels/items/<section>-<kind>.png`; the page's switch
"items" (on), `#itemLayer` under the run's frame, the house's in `#houseItems` with its inside.

- The spawn list (`$D685`, from the disassembly): a word per section at `$C69B` → bank 5: a count
  (word), then 5-byte rows: X in tiles (word; in RAM bit 7 of the high byte = spawned, bit 6 = gone),
  Y in tiles (word), the index of the entry in the section's `$AD5C` list (kind, place). A row spawns
  when the camera (`$14/$16`, tiles) is within 35 × 30 tiles of its X/Y. With all four slots taken
  (`$6C` = 4) the row is marked spawned anyway and its object skipped until the row leaves the window
  (`$D90E` clears bit 7) — that is how the run never shows the bag at section 1's x 296: two start
  bags it never takes hold the slots; freed in a test (`$6D-$70`, the slots' bytes) the bag comes in
  at frame 3745 at its place. On a restart (`$D88B`) bit 6 stays only for kinds `$0E-$17`: money taken
  stays taken; the knife, the pistol, the fires come back.
- The item kinds, by the picture in the run's frames: money bags `$0E $0F $10 $11 $14 $15 $17`,
  money cases `$12 $13 $16`, knife `$18`, pistol `$19`, dynamite `$1C`, boot `$1A` (the house) and
  `$1F`, boots `$1D`, 1-up `$1E` (the house), campfire `$21`. The templates (`$B598`, bank 5) agree:
  byte 9 is the picture ($24 every bag, $00 every case). `$10` and `$12` are never on the field in the
  run; they wear the bag's and the case's look.
- Left out: section 4's row 24 names entry `$1D`, past section 4's list into the house's — a boot
  put at x 88 y 75 of section 4 when the camera is at x 600: it is gone before it could be seen.
  Rule: an item whose row and place are more than 64 px apart. Section 11's row 27 (kind `$20` at
  x 240 640) is the same, but not an item.
- 57 items: 30 money bags, 3 cases, 5 knives, 5 pistols, 2 dynamite, 3 boots + 1 pair, a 1-up, 7
  campfires. The run takes 27 (row's bit 6 set with the player on it); on the page each goes at the
  frame it is taken, and comes back where the game puts it back (none in this run). The switch's count
  is what is left on the map at the run's frame.
- Skipped by the game (the four slots full, above): from the frame the row is marked spawned with no
  object at its place to the frame the row leaves the window, the item is drawn pale and grey (and
  not counted), with the reason in its title. An item skipped and never on the field in the run is
  pale all through it: drawn whole until the camera came, it was there on the map and then gone under
  the game's frame (the user saw it twice: section 5's lower bag, then section 2's). Three, all so:
  section 2's bag at x 296 (marked at 3745; the start bags hold the slots), section 5's lower bag at
  624, 320 (9603: three enemies and the upper bag), section 7's knife at 1360, 339 (put once off the
  field at 12930, taken off, skipped at 12968).
- A take starts the frame the object leaves its place: the game frees the slot 2-4 frames before it
  sets the row's bit 6, and the map kept the item those frames.
- The check over the whole run (items.ts prints it): frames where an item's place is wholly in the
  camera's field, the game shows no object there, and the page draws it whole (not taken, not pale).
  0 frames (56 before the two fixes above, all the takes' 2-4 frames).
- The look per section and kind: from every frame the item is on the field, the sprites nearest it
  (the house's knife and boot are 16 px apart), laid by the map's camera from take.bin.gz (the RAM's
  is 2 px off for the boots), fades left out; the commonest set, its place the one most frames
  agree on. A section and kind on the field fewer than 20 frames gives way to the same kind's from
  the nearest section. The commonest set can be a part: the boots show their right half on 4 frames,
  both on 3 (the user saw the half boot on the page) — a set seen twice or more that holds the chosen
  one wins, when each sprite it has besides is in the same palette, next to it on the 8-px grid and
  on a cell of its own (else a bird's wing, or a stone falling over the case in section 13, gets in).
- Checked in the browser against the game's own frame on the page, both ways, at 2× (a fractional
  zoom misplaces the check by a pixel): every opaque pixel of the picture equals the frame's there,
  and no pixel of the frame within 8 px of it differs from the map under it unless the picture covers
  it. 35 of the 41 items the run has on the field pass both; the 6 others match pixel for pixel and
  leave only a neighbour (the house's pairs, 16 px apart) or another flame of an animated campfire.
  (The first check, the picture's pixels alone, passed the half boots: a part matches too.)
- Fixed on the way: going back to the whole mountain from a section did not work since section 14
  was glued (`APART` -1, and `levelOfSection(-1)` is the whole mountain's 0).
- On xrom.dev (2026-11-16, the user's word: "just a table of id and items", then "call it objects
  and add the enemies"): a chapter of its own, Objects — a table, one row a kind the spawn lists
  place, its id and its picture. `src/objects-table.ts` → out/levels/kinds.json, kinds/<kind>.png
  (objects.json is §11's): the items' pictures from items.ts; the others' read by the slot, since
  they move — the spawner keeps per slot the entry it filled it from (`$6D-$70`, slot X at
  `$0633 + $1F·X`), so a slot's kind is known on every frame; the sprites nearest it, the player's
  left out, by the map's camera, fades left out, the commonest set (the biggest of the common ones).
  30 kinds: stone $00, boulder $01, eagle $03, icicle $04, snow clump $05 (on the cabins' roofs),
  henchmen $06-$09, bat $0B, log $0C (on the river over the waterfall), wolf $0D, and the 18 items.
  The names are ours, by the pictures in the run's frames. The site reads kinds.json
  (`src/components/site/gameObjects.ts` in ~/xrom). Its card: `src/objects-preview.ts` →
  out/art/objects.png and objects.webp, the 30 in a grid ×4. On the maps page the items switch is on
  in the run (`?view=run`) and off on the maps (`?view=map`), as they were published.
- The money (2026-11-16): `$0418-$041A`, BCD, high byte first (the status bar counts up to it). A
  money kind's worth is in its template (`$B598`, bank 5): BCD bytes 6, 3, 2, high first —
  `$0E` 80, `$0F` 30, `$10` 50, `$11` 750, `$17` 250, `$15` 2 000, `$14` 2 500, the cases `$13`
  303 300, `$12` 306 500, `$16` 329 500. Every take of the run adds exactly that (27 takes; `$0F`,
  `$10`, `$12` are never taken, their worth by the same bytes); the knife, the pistol and the boots
  add 10. The money also goes down: -75 at frames 2426 and 2442, -150 at 4719, -60 000 at 22128 —
  the hero warming himself at a campfire (the user's word; checked: each drop with the hero within
  15 px of a campfire of his section). How the price is set is not read yet.
- The Objects table (kinds.json) has, per kind, its group (hero, enemy, hazard, money, gear, other),
  its worth, how many the lists place and in which sections, a note, and for the campfire what it
  cost in the run; and the hero first — his standing pose (his place unchanged for 10 frames: he is
  8 px wide, side on; his commonest picture in the run is the same sliver).
- Not in the Objects table: the hero (his own slot, `$0614`, not in the spawn lists) and whatever
  sections 3, 8 and 15 have — their spawn-list words at `$AD5C` are 0.
