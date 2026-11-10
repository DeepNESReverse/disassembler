# Circus Charlie (Japan) — status

The second game, and the simple one: NROM-128 (16 KB PRG, 8 KB CHR ROM), vertical mirroring. The
point is to see what of the explorer carries over from Battletoads without being told about the game,
and what had to change. There is no human disassembly of it to compare with; what was known before is
declared in `CONTAMINATION.md` (written before any discovery run), and every value below was found
again by an experiment.

## What carried over unchanged
| step | tool | result |
|---|---|---|
| the core in step with FCEUX | `src/sync-check.ts`, `src/trace-diff.ts` | RAM every frame and video memory identical over 3 takes × 20 000 frames (after DMC timing and NROM were added to the core for this game) |
| the camera | `src/discover/camera.ts` | `$006A` = the X the game writes to `$2005` after the status bar, a frame later, on 1 661/1 661 and 6 485/6 485 moving frames of two takes; `$006B` steps with each wrap of `$006A` (`cc-hi` experiment) |
| frame counter, pad | `src/discover/variables.ts` | `$0009` +1 a frame on every branch; `$0005`, `$0007`, `$000C`, `$000D`, `$00E4` follow the pad |
| where objects live | `src/discover/object-layout.ts` (written for this game, then run on both) | X cells `$0094 $00A4 $00B4 $00C4`, Y cells `$0073 $0083`: records of 16 bytes from `$0070` (X at +4, Y at +3). On Battletoads the same tool finds the parallel arrays (`$03FD`, `$03FF`, `$0401` …) |

## Found here (each with its experiment)
| cell | what | how |
|---|---|---|
| `$005D`–`$005F` | score, BCD, `$005F` the first two digits, `$005D` the last two | equals the status bar's six digits on 2 390 of 2 391 sampled frames. The order, from the bonus counted in at a stage's goal (`runs/cc-seek2-1`, path 001, frames 27 360/27 420/27 480): `$5F $5E $5D` read 010720, 011320, 011920 while the bar shows 010690, 011290, 011890 — 30 behind each time (+10 a frame, the bar 3 frames late); the other order reads 200701, 201301, 201901, which the bar never shows. Until now the agents read `$005D` as the most significant byte: the seeker's score reward on this game came from scrambled bytes (`game.json` `lowFirst`, fixed) |
| `$0000` | game phase: 0 title set-up, 1 title, 2 attract demo, 3 a game starts, 4 stage card (also after a life is lost), 5 play, 6 a life lost, 7 game over, 8 stage cleared (the bonus counted into the score at the goal) | the four play modes left to run by themselves to the demo (`inputs/until-demo-*`), the agent's finished stages (5 → 8 at the goal, 8 → 4 with the next stage); it indexes two jump tables, both called from the NMI (below) |
| `$0064` | the stage less one (0–4) | set as each of the five stages starts (the stage card set to 1…5); indexes the per-stage jump tables |
| `$0069`, `$0068` | the distance left, tens of metres, and its fraction | 10 at stage 1's start; it drops as each board (one per 10 m, 256 px) is passed. After a life is lost the stage starts again at the last board passed: deaths at camera 419 and 459 with `$0069` = 8 restart at camera 256 (the 90M board) with `$0069` = 9 (`runs/cc-free`, path 006) |
| `$0050`, `$0066` | the play mode chosen on the title (0–3: 1P A, 1P B, 2P A, 2P B); game A or B while playing (1 / 2, 0 between) | the four mode inputs: `$0050` = 0, 1, 2, 3; `$0066` = 1, 2, 1, 2 on every play frame |
| `$0063` | stage being played (1–5) | the status bar's stage digits (BCD, with `$0061`); set during the stage card, the game loads that stage: 1 lion and fire rings, 2 tightrope, 3 balls, 4 horse, 5 trapeze; 0, 6, 7 break (`found/0063-stages.png`). `$0061` only changes the number shown. Declared before as prior knowledge; found again here. |
| `$0060` | lives | equals the number of life icons on the status bar on 98.3 % of samples |
| `$0070`+16·i | object records: +0 in use, +1 kind, +3 Y, +4 screen X | `object-layout.ts`, `objects.ts` (screen X field follows the sprites at 0.994) |

## Movement (`src/discover/physics.ts`, stage 1, `found/physics-stage1.json`)
- RIGHT: 1 px a frame from the first frame; LEFT does nothing at the stage start.
- A jump: the player's Y (`$0073`) rises 54 px — 3, then 2, then 1 px a frame — hangs at the top for
  about ten frames and falls the same way: about 66 frames from take-off to landing.

## What had to change in the tools
- **Second pad, NROM, DMC timing** in the core (for the sync).
- **The disassembler** assumed 32 KB banks at `$8000`; NROM-128 is 16 KB seen at `$C000` (mirrored).
- **The agent** told places apart by the background tileset; in CHR ROM that never changes, so the
  place is the nametables (counters left out); the score is BCD; there is no camera Y and no player X
  cell (the player stays on screen, the world moves).
- **Maps.** Battletoads builds a column as the camera crosses 8 pixels, and the sweep catches those
  writes. Circus Charlie draws the stage once on both nametables (512 px side by side) and writes only
  the distance boards and the fire pots as the camera nears them: the map is taken as **windows** —
  what the play field shows on each frame (`WorldMap.see`), through the scroll mapping. The play field
  starts after a `$2005` write at line 43 (no `$2006` pair as in Battletoads).
- **Graphics.** The tiles sit in CHR ROM, so a tile's source is its place there — no taint needed.

## The agent on each stage (`runs/cc-stage1…5`, 15 minutes each, `runs/cc-free` from power-on)
(The first maps, kept for the record; the stage maps from start to goal are in the next section.)
The stage is the game's own: `$0063` set during the stage card (frame 150 of `inputs/start.txt`);
lives held at 3 (`$0060`). How far the camera got (`src/agent/reach.ts`):

| stage | camera X reached | maps (windows) — tiles, seen by the player, check | tiles bg / sprite | object kinds (`$0071`) | metasprites |
|---|---|---|---|---|---|
| 1 lion, fire rings | 0…617 | 1080×176: 2 970, seen 1 936, 99.81 % of 6.6 M; 880×176: 2 420, seen 2 310, 99.82 % ✓ | 84 / 57 | 6 Charlie, 8 lion, 255 ring | 19 |
| 2 tightrope | 0…1 417 | 1600×176: 4 400, seen 3 146, 100 %; 1024×176, 1016×176: all seen, 100 % ✓ | 68 / 45 | 6, 4 monkey | 107 |
| 3 balls | 0…213 | 904×176: 2 486, seen 1 078, 98.28 % (107 cells: the balls are drawn into the background) | 110 / 31 | 6, 9 ball | 9 |
| 4 horse | 0…4 712 | three of 2 040–2 392×176, all seen, 96.8–97.0 % (the springboards are background tiles that change) | 75 / 92 | 6, 19 horse, 16, 32 | 30 |
| 5 trapeze | 0…340 | 968×176: 2 662, seen 1 562, 100 %; 832×176: 99.34 % ✓ | 78 / 57 | 6, 254, 1 | 47 |

A check counts every play frame of every path against the map, cell by cell; "seen" is how many of
the map's cells the player saw at least once; the rest was built by the sweep beyond where the agent
went. The cells that differ are animation drawn into the background (the fire pot's flame on stage
1: 11 cells; the balls, the springboards).
Sweep interventions: the camera set every frame, and the game phase `$0000` held at 5 — the cell
seen to go 5 → 6 → 4 when the death sequence starts (the forced camera carries the player into a
fire pot otherwise). Past the goal the game keeps counting the distance boards down (950M, 940M …):
not part of the stage.

## The seeker (`src/agent/seek.ts`, 30 minutes a run)
How far the camera got (`runs/seek-reach/`, `runs/seek2-reach/`; a stage reached by finishing the
one before is counted from its own start: the stage cell changes at the goal while the camera still
holds the last stage's value):

| stage | random (15 min) | seeker, first version | seeker, fixed (two runs, started on stages 1 and 3) |
|---|---|---|---|
| 1 lion, fire rings | 0…617 | 0…256 | 0…2 369, finished |
| 2 tightrope | 0…1 417 | 0…1 601, finished | 0…1 601, finished (went on from stage 1) |
| 3 balls | 0…213 | 0…209 | 0…1 857, finished (from stage 1 alone: 0…944) |
| 4 horse | 0…4 712 | 0…4 930, finished | 0…4 931, finished (went on from stage 3) |
| 5 trapeze | 0…340 | 0…687 | 0…1 090, where the camera stops; the goal's platform not reached (the stage cell never moved on) |

The fixed seeker went on by itself: the run started on stage 1 finished stages 1 and 2; the run
started on stage 3 finished stages 3 and 4. Its score reward then still read the score bytes in the
wrong order (above); the camera, standing and kill rewards carried it.

## The stages from start to goal (`found/stages/stageN/maps-full/`)
One map a stage, from its start straight to its goal (`src/maps/level-map.ts --from-start`): the sweep
begins at the stage's earliest stretch of play in any path — every path starts at power-on, so that is
the stage's start and not a restart point (after a lost life the stage starts again at the last board
passed, camera 256 for the 90M board: "the smallest camera X" picked such a restart at first and the
map began at 90M) — goes back to camera 0 and straight on by the stage's length, one 256-px board per
10 m. Window capture; `$0000` held at 5 during the sweep. Checked on every play frame of every path of
`cc-seek-N`, `cc-stageN`, `cc-free` and the fixed seeker's two runs:

| stage | length | map | cells seen by the agents | check | cells that differed |
|---|---|---|---|---|---|
| 1 lion, fire rings | 100 m, 2 560 px | 2800×176, 7 700 tiles | 7 172 (93.1 %) | 99.44 % of 25.0 M comparisons on 37 912 frames | 86, all shown differently by the game itself (the fire pots' flames); the rest 100 % ✓ |
| 2 tightrope | 70 m, 1 792 px | 2032×176, 5 588 | 5 060 (90.6 %) | 100 % of 25.4 M on 38 537 frames | 0 ✓ |
| 3 balls | 80 m, 2 048 px | 2288×176, 6 292 | 5 764 (91.6 %) | 97.29 % of 55.7 M on 84 367 frames | 718, all the balls (below); the rest 100 % ✓ |
| 4 horse | 200 m, 5 120 px | 5360×176, 14 740 | 14 212 (96.4 %) | 97.11 % of 12.4 M on 18 807 frames | 612: 464 shown differently by the game itself, 148 always otherwise — the obstacles (below); the rest 99.16 % |
| 5 trapeze | 50 m, 1 280 px | 1520×176, 4 180 | 3 652 (87.4 %) | 99.97 % of 14.1 M on 21 382 frames | 12, all shown differently by the game itself; the rest 100 % ✓ |

The check now tells two kinds of difference apart: a cell the agents' own frames showed with more than
one value is the game's doing (something drawn into the background that moves or is placed by play)
— blue in `-check.png`; a cell the agents always saw one way and the map shows another is red. Each
map ends on the goal's board (the podium on stages 1, 3 and 4, the platform on 2 and 5).

**Things drawn into the background, by experiment:**
- **Stage 3, the balls.** All but the one under Charlie are nametable tiles: with Charlie standing
  still (camera 0) a ball moves one column (8 px) to the left every 48 frames, drawn with two sets of
  tiles for the positions between (`$88`–`$8B` over four columns, `$8C`–`$8E` over three). The ball
  Charlie rides is a sprite (kind 9). The map shows them where the sweep met them.
- **Stage 4, the obstacles.** Put into the nametable as the camera brings each column in; once there
  they stay. Where depends on how the camera moved: from one start state, the camera glided at 1, 1.5,
  2, 3, 4 px a frame gives the same obstacles — 2, 2, 4, 6, 2, 6, 6, 2, 2, 2, 4, 6, 2 … tiles wide,
  with the same gaps (10, 22, 8, 22, 14, 16, 12, 24 … columns) — but starting on board 3, 4, 5 or 6
  (column 108, 140, 172, 204); before them, a pair of 2-tile springboards on every other board.
  Holding the camera still for up to 600 frames first changes nothing, nor do the frame counter
  `$0009` (+1, +37) or the A button: a board begun after 256–320 frames of camera movement starts the
  list. So there is no single map of the obstacles; this one is at the horse's own pace (2 px a frame;
  the agents' horses went 1, 2 or 3). The arena around them is the same in every play.

## The objects, named (`game.json` `names.kinds`)
| kind (`+1`) | what | how |
|---|---|---|
| 6 | Charlie | every stage, slot 0, the player's sprites |
| 8 | lion | stage 1, slot 1; Charlie rides it |
| 255 | fire ring | stage 1: two records a ring (slots 2+3, 4+5), always in use together, 12 px across and 16 px up from each other on all 5 136 frames both were seen |
| 4 | monkey | stage 2, slots 2–5: the brown ones walking along the rope and the blue ones that jump |
| 9 | ball | stage 3: the ball Charlie rides (a sprite; the others are background, above) |
| 19 | horse | stage 4, slot 1 |
| 16, 32 | trampoline pressed | stage 4, slot 2, three frames at a time, as Charlie lands on a trampoline: while it lives the game rewrites the trampoline's cells with the pressed tiles (`$E4`/`$E5` for `$E2`/`$E3`, frame 2 774 of `cc-stage4` path 003) and puts them back when it is freed; "100" shows. Its sheet shows the horse — the nearest sprites; the trampoline itself is background |
| 254, 1 | trapeze: the rope and the bar | stage 5, in pairs (slots 2+3, 4+5), always in use together; the bar 16–53 px below the rope's record, swinging from 52 px to its left to 51 px to its right (28 784 pair-frames, every path of `cc-stage5`) |

## The code (`found/disasm-full/`)
From the three random takes, the four play modes run to the attract demo (`inputs/until-demo-*`,
16 000 frames each), the two longest paths of every stage's agent runs and of `cc-free` — profiled,
so data reads count too — and every agent run's instruction starts: code that ran 11 222 bytes =
68.5 % of the 16 KB PRG, 137 inferred, data read 4 403 (26.9 %), never touched 622 (3.8 %; before:
16.2 %); 200 subroutines. No human disassembly to compare with.

**Names** (`found/names/`, `src/profile/name.ts`): 95 of 230 entries (subroutines and jump-table
targets). The game jumps through tables placed right after a call (B0:C4CD pulls its return address
and jumps through it, `JMP ($00E0)`); each target is named by the cell that indexes its table and its
index: `game_phase_a_05` (the play phase's logic, called from the NMI after the pads are read) and the
other `game_phase_a_*`; `game_phase_b_*` (called from the NMI right after the sprite DMA);
`stage_index_a_00…04` (each stage's update) and `stage_index_b_00…03`; `frame_counter_and3_00…03`
(four jobs, one a frame by turns); `ram_CF_00…04` (stage 5's own states). Object routines carry the
kind's name (`l2_obj_monkey_move`, `l5_obj_trapeze_rope_move` …).
**Fixed on the way:** the naming rules looked for Battletoads' cells in every game (the frame counter
`$0B`, the camera `$87`/`$89`, the level `$10`/`$0D`, the score `$05F4`–`$05FF`, lives `$11`/`$12`):
the earlier Circus Charlie names `camera`, `add_score`, `level_select`, `update_frame_counter` came
from addresses that mean something else here. The cells now come from the game's `game.json`; the
Battletoads names come out the same (330 of 555, none changed).

## Not reached / open
- `$00CF`: stage 5's states (0, 1, 2 seen) — what each one is.
- The horse stage's obstacle list as the game stores it, and its exact start (256–320 frames of
  camera movement).
- The second player: whose lives sit where (`$0060` takes the other player's count at each turn).
- Collision, the bonus timer's rule.
- 622 PRG bytes never touched.
