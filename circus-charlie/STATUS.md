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

## 2. The arena: decoded from the cartridge (`src/level.ts`, `src/check-arena.ts`)
`src/vram-origins.ts` (the run with nes-explorer's taint shadow; `--palette` for $3F00) names every
nametable writer: at each stage card the nametables are cleared ($C3E0, tile 0) and two screen
scripts run ($D2FD → $D342 → $D389, writes at $D395 and $D3A2); during play only the buffer at
$0700 is flushed ($D280, writes at $D2BA/$D2C3) and the status bar is updated ($C529/$C647/$D590).
The palette is one for every stage: 32 bytes at PRG $0CE8 ($C4B1 at the card); only the goal's
flash ($D618/$D62D) changes it.

The script format is in `level.ts`' header (table $D32E by `$0064`; per strip an address — the
first strip always, the rest unless bit 7 of the head — and a stream; $57 n v a run, $5A the end).
Stages 1, 3, 4 run $D3AA + $D3B9; stage 2 $D3E1 + $D3C8; stage 5 $D3EA + $D3C8.
Check, on the frame each stage was built in the run: **every cell the scripts write equals the
console's video RAM**; the only other cells (140-141 of 2 048) are the status bar (page 0 rows
2-5) and the distance boards (rows 26-28, 6 cells a page), written after the scripts.

## 3. The stage maps: the arena placed along the world by the run (`src/replay.ts`, `src/capture.ts`, `src/render.ts`)
The field's scroll, read off the core per visible line (`replay.ts` wraps its line drawer): on play
frames the screen splits at line 44 (43 on one frame); below it the field is the nametable plane
at **x = the camera of the frame before ($006B:$006A) mod 512, y = the line** (no vertical scroll).
So a world column c is plane column c mod 64.

In play the game writes shapes into the nametables through the $0700 buffer ($D1C4 draws shape
`$8F` from the table at $D2DD at a nametable address): the distance boards, the fire pots, stage 4's
springboards and obstacles, stage 3's balls, the goal. Where they stand in the world is taken from
the run: every play frame (`$0000` 5 or 8) every field cell is read into world coordinates; a cell
keeps every value it was shown with; the map shows the most frequent one.

| stage | play frames | camera | map (columns × rows 5-29) | as the arena | shown more than one way |
|---|---|---|---|---|---|
| 1 lion, fire rings | 2 881 | 2-2 369 | 329 × 25 | 94.25 % | 49 (the pots' flames) |
| 2 tightrope | 2 693 | 1-1 601 | 233 × 25 | 95.30 % | 1 |
| 3 balls | 2 406 | 2-1 857 | 265 × 25 | 95.32 % | 525 (the rolling balls) |
| 4 horse | 2 205 | 6-4 931 | 649 × 25 | 93.55 % | 108 (the springboards pressed) |
| 5 trapeze | 989 | 1-936 | 149 × 25 | 93.26 % | 0 |

The 4 frames a stage not drawn at the camera are the card → play hand-over. Stage 3's balls are
background cells that move a column every 48 frames: on the still map the most frequent value is
the floor, so they vanish there; the player draws each frame's own nametables.
Row 5 is shown only from line 44 (its last 4 lines).

## 4. The run packed with its sound (`src/take-pack.ts` → `out/stages/take.bin.gz`, 0.29 MB)
Per frame, from our replay: the stage, the phase, the field's camera, PPUCTRL/PPUMASK, Charlie's
screen X/Y, the sprite memory as drawn, the palette and both nametable pages (only the cells that
changed). So the player draws the game's own field, the balls of stage 3 and the pressed
springboards of stage 4 included.

The sound driver ($F87C, NMI) keeps one slot per channel (X = $10 + $11·channel, the sound's
number at $02,X); a request ($F80D) is a byte, top two bits the channel, low six the number; a
higher number takes the slot (`runs/probe-sfx.ts`: every request of the run with its caller):

| number (channel) | requested from | when | owner |
|---|---|---|---|
| 14/15 (pulse 2/triangle) | $CBB1/$C82D | stages 1 and 4 start | music |
| 16/17 | same | stages 2 and 3 start | music |
| 18/19 | same | stage 5 starts | music |
| 20 (pulse 2) + 21 (noise) | $CBDC + $C274/$CE5E | the game starts, each goal | music (jingle) |
| 1, 2, 3, 5, 6 (pulse 1) | $DB06, $DA3E, $F4C0, $D488, $C737 | in play | effects |
| 7 (pulse 2) | $C18E, 1 462 times | the bonus counted at each goal | effect |

Each write is tagged by the number its slot holds (in the request, the new number in $2F); a
write while the slot is empty (a stop, the power-on set-up) is both's. Music 9 147 writes, effects
4 140, both 390. Our writes equal FCEUX's on every frame. No DMC is used.

## 5. The page (`src/play/server.ts` → http://127.0.0.1:4325/, `src/play/index.html`, `player.js`)
Stage select, zoom ¼-3× / fit width / fit height, full screen with bars hiding, ▶ with speed, seek
over the stage, follow, sound with music/effects switches and volume, Charlie's path ahead, the map
with the cells drawn by play tinted ("drawn by play"). The field is drawn as the PPU draws it
(the first eight sprites a line, behind-background priority). `/chr` serves the pattern tables read
in place.

## 6. What a player never sees: nothing on these maps
The field is the whole height of the stage (no vertical scroll), and PPUMASK in play is $1E (the
left 8 pixels shown, background and sprites): every cell of a map was on screen in the run —
the maps are made of exactly what the camera showed (§3). What lies outside them (left of
camera 0, past the goal's board) the camera never shows.
