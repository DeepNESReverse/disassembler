# Inputs

One pad a line from power-on.

- `start.txt` — the title, START at frame 60, then nothing: stage 1 from frame ~300. The stage runs
  set `$0063` (the stage) at frame 150, during the stage card.
- `mode-1p-a.txt`, `mode-1p-b.txt`, `mode-2p-a.txt`, `mode-2p-b.txt` — SELECT pressed 0–3 times at
  the title (the cursor of "PLAY SELECT"), then START, then 900 idle frames (`found/modes.png`: the
  title with the cursor, and the stage after).
- `until-demo-<mode>.txt` — the mode input, then idle to frame 16 000: every life is lost (1P: game
  over at frame ~3 720; 2P: the players take turns, the first is out at ~7 000, the second at
  ~8 240), the title comes back and the attract demo plays stages 2 and 4 by turns (`$0000` = 2). Made by `runs/cc-coverage.sh`; the
  coverage of the code beyond the stages.
