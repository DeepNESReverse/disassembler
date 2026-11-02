# Circus Charlie (Japan) — level maps with a TAS over them: status

Same plan as ~/alien3-levels. Format only from the cartridge; what nes-explorer found on this game
(`~/nes-explorer/games/circus-charlie/STATUS.md`, every value by an experiment there) is taken as
found. The ROM stays at `~/nes-explorer/games/circus-charlie/rom/` (`src/rom.ts`), never copied.

The TAS: TASVideos 5270M, captured in FCEUX by `fceux/movie_capture.lua` →
`fceux/movie_capture.play.txt` (12 097 frames; the last line cut off as FCEUX closed).

## 1. The TAS replays here exactly (`src/sync-explorer.ts`)
On nes-explorer's core (`~/nes-explorer/src/core/core.ts`, made to run in step with FCEUX for this
game: power-on RAM 00×4/FF×4, two PPU-dead frames, DMC timing), the movie's pads pressed from
power-on give FCEUX's whole RAM after **every one of 12 096 frames**; the only difference is
`$0410` on frame 12 097, the cut-off last line. So, unlike Alien 3, the run is played on our core
with its own PPU — nothing of FCEUX's laid over it.

xrom-libs' NES does not stay in step from power-on (its first frames run 1-2 frames off FCEUX's and
the RAM differs on every frame after): not used for the run.

Stages over the run (`$0063`): 1 from frame 10, 2 from 3 139, 3 from 5 998, 4 from 8 571, 5 from
10 943.
