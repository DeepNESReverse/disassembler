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
- **Camera X = `$40` (low) / `$41` (high)**, signed: every section starts at -8 ($FFF8). `$40` is
  the first `$2005` write of every frame (`src/experiments/cam.py`, sections 0 and 11).
- **`$42` = the first `$2005` Y write** (`src/experiments/cam.py`). Its high part on the vertical sections
  (2, 12) is not found yet.
- The picture has a status bar at the bottom, split by the MMC3 scanline IRQ (about one
  `$C000/$C001/$E000/$E001` set a frame).
