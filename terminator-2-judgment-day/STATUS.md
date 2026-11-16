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

## 2. The TAS on the headless NES — first without FCEUX's power-on (superseded by §4)

Before the capture, `src/replay.ts` played the .fm2 on a NES with zeroed RAM and its own seed. The
story was skipped (Start 1015), the title taken (Start 1193), then the run parted: from 1216 to 1250
the pad was not read (`src/experiments/title-flow.ts 1180 1260`: a 20-frame wait `$E8FE`, a fade
`$C918`, two 15-frame waits `$B2EE`, all counted in NMIs by `$C739`), the Start on 1241 was lost,
and the Start on 2549 paused level 1 for good. The cause was the power-on, not these waits (§4):
FCEUX's capture has the area `$D1 = 6` already on frame 1040 — the game took another way through
its intro from the first frames.

## 4. The TAS plays on the headless NES in step with FCEUX

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

## 3. Known from the workshop (2026-10-20, to be proven here again)

`$D1` is the area the level loads: 6 = the truck stop (level 1), 1 = the flood channel (bike),
7 and 8 = the hospital and the steel mill. `LDY $D1 / LDA $8F68,Y` picks the level's CHR banks.
The game's flow is a bytecode script: pointer `$E0/$E1`, handler `$E2/$E3` (`JMP ($E2)` at `$E75D`).
