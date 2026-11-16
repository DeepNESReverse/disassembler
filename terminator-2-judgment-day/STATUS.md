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

## 2. The TAS on the headless NES parts from FCEUX after the title

`src/replay.ts` (pads straight from the .fm2, changed at line 241 as in Cliffhanger): the story is
skipped (Start 1015) and the title taken (Start 1193, the script `$E0/$E1` moves `$E85E → $E89E`
on 1194), then it parts. `src/experiments/title-flow.ts 1180 1260`: from 1216 to 1250 the game does
not read the pad here (a 20-frame wait `$E8FE`, a fade `$C918`, two 15-frame waits `$B2EE`, all
counted in NMIs by `$C739`), so the movie's Start on 1241 is lost and the "Cyberdyne" and mission
screens play out in full; the movie's Start on 2549, meant for later, pauses level 1 for good.
Moving that Start to 1251, the first frame the pad is read, does not skip the screen either, so
FCEUX took another path there. **Open:** which — the FCEUX capture's RAM will show it
(`src/sync.ts`). Until then nothing is replayed here: the run comes from FCEUX only.

## 3. Known from the workshop (2026-10-20, to be proven here again)

`$D1` is the area the level loads: 6 = the truck stop (level 1), 1 = the flood channel (bike),
7 and 8 = the hospital and the steel mill. `LDY $D1 / LDA $8F68,Y` picks the level's CHR banks.
The game's flow is a bytecode script: pointer `$E0/$E1`, handler `$E2/$E3` (`JMP ($E2)` at `$E75D`).
