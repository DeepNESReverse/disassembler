# Inputs

One number a frame from power-on: pad 1 in the low byte, pad 2 in the next (a pad is plugged into
port 2 when the input uses it).

- `two-players.txt` — `runs/take2` (power-on to the first level), except that START at the title
  (frames 2519–2522) is pressed on pad 2 instead of pad 1. The game starts with two toads
  (screens: `found/after-comparison/two-players.png`); pad 2 is idle afterwards.
- `to-level1.txt` — the first 2900 frames of `runs/take2`: power-on, the title, the briefing, the
  level card skipped with START (frames 2639 and 2759), the first level loading. The agent's level
  runs start from its end with `$000D` (the game's own level number) set at frame 2600, during the
  briefing: the game then shows that level's card and loads it itself.
- `ending.txt` — `runs/take2` to frame 2800, then START every 900 frames; with `$00F4` set to 1 at
  frame 2600 the game plays its ending text instead of the level.
