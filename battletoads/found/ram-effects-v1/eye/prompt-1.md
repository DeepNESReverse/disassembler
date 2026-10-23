You are naming RAM cells of an NES game from experiments, one card per cell. Work only from the
files named below and from this text: do not open any other file or folder, do not search, do not
use the web, and do not use anything you may remember about documented RAM maps, cheat codes or
disassemblies of this game or any other: every name must rest on what its card shows.

The cards are in `/Users/alex.m/nes-explorer/games/battletoads/found/ram-effects-v1/cards`. Yours are these 48 (each `<key>.md`, and its pictures
`<key>-hold.png` / `<key>-other.png` when the card mentions them):
0000, 0001, 0002, 0003, 0004, 0005, 0006, 0007, 0008, 0009, 000A, 000C, 000E, 000F, 0015, 0016, 0017, 0018, 0019, 001A, 001B, 001C, 001D, 001E, 001F, 0020, 0021, 0022, 0023, 0024, 0025, 0026, 002E, 002F, 0030, 0031, 0032, 0033, 0034, 0035, 0036, 0037, 0038, 0039, 003A, 003B, 003C, 003D

What a card holds:
- **Code and play**: what an automatic analysis found. Which routines write and read the cell (the
  routines' names are that analysis's own guesses from their code, e.g. `obj_toad_handler`,
  `sound_5`, `frame_update_6`), how the cell changed over 436 617 frames of recorded play (+1, −1,
  other changes; how many values; the levels), its values in play, and the name the analysis gave it
  (`named so far`) with the rule that gave it.
- **Changed in the moments the game read it**: the experiment. At moments of recorded play, the cell
  was changed in three ways, and the next 120 frames (2 seconds, the same controller input) were
  compared with the same 120 frames left alone:
  - hold: every read of the cell by the CPU answered with its value at that moment (frozen), while the
    game's own writes went on into RAM unseen — what stops or sticks when the cell cannot change;
  - other: every read answered with another value the cell takes in play — what that value selects;
  - poke: that other value written once — whether the game puts its own back.
  Per change: `moments with any effect / with an effect outside the RAM and the code / where the game
  stopped running`, then which watched things differed in how many moments: `sq1`, `sq2`, `tri`,
  `noise`, `dmc` (the writes to each sound channel), `scroll` (scroll and PPU control writes), `mask`
  (PPU mask writes: rendering on/off, colour emphasis), `palette`, `nametable` (background tiles),
  `chr` (pattern memory: this game uploads graphics into CHR RAM as it plays), `oam` (sprites),
  `objects` (the object table), `proven` (cells already proven, listed below); and the levels of
  the moments with an effect outside the RAM and the code (the internal level id, `$0010`: 1–13 are
  levels in the game's internal order; other values are outside a level, such as the title or a
  card between levels).
- A card whose title says **the table it heads** is a table: cells the code reads with one index.
  Name the table once (its cells will be called `<name>`, `<name>+1`, …); its summary lists each cell
  that changed something.
- **The clearest cases**: one for hold and one for other, frame by frame: each changed sound channel's
  state per frame (note and period p, volume v, duty d; `×n` = the same for n frames; `off` = channel
  disabled), palette, scroll, mask, the object table's changed fields slot by slot (with the slot's
  object kind), proven cells, the routines that ran only with the change or only without it, and a
  picture: four frames left alone on top, the same four frames changed below.

Facts proven earlier by experiment (names already final, do not rename them):
- cells: $000B frame_counter, $000D level_number, $0010 level_id, $0011 p1_lives, $0012 p2_lives, $0013 dispatch_ptr, $0014 dispatch_ptr+1, $0029 pad1_held, $002B pad1_pressed, $002D current_bank, $0083 camera_nametable_row, $0087 camera_x_lo, $0088 camera_x_hi, $0089 camera_y_lo, $008A camera_y_hi, $0093 built_column, $0094 built_row, $00B1 camera_target, $00B2 camera_hold, $00B7 placement_ptr, $00C3 block_attributes_ptr, $00C4 block_attributes_ptr+1, $00C5 block_tiles_ptr, $00C6 block_tiles_ptr+1, $00C7 layout_width, $00CD frame_counter_gfx, $00DA floor_height, $00F0 level_room, $00F4 ending_trigger, $05F4 p1_score, $05F5 p1_score+1, $05F6 p1_score+2, $05F7 p1_score+3, $05F8 p1_score+4, $05F9 p1_score+5
- the object table: field F of slot S at $03C1 + 15·F + S, 33 fields × 15 slots, slot 0 the player;
  kind 0 = empty slot; fields named so far: 0 kind, 3 x_hi, 4 x, 6 depth, 8 y, 9 x_sub, 12 height, 13 screen_x, 15 facing, 20 timer_20, 23 health_or_timer, 26 timer_26, 29 timer_29, 32 counter_32

For each card, decide what the cell (or field) is for. Think about which change shows it best:
- a hold shows what the cell drives when it changes (a counter or timer frozen stops what it times; a
  position frozen stops a movement);
- an other shows what a value selects (a state, a mode, a choice of graphics or sound);
- an effect seen in one moment only may be incidental; prefer what repeats across moments;
- a cell used by many unrelated routines (scratch), or a pointer, breaks many things when changed:
  that shows it is used, not what for — keep the analysis's name unless something specific repeats;
- if the card shows nothing beyond what the analysis already said, answer `keep`.

Write `/Users/alex.m/nes-explorer/games/battletoads/found/ram-effects-v1/eye/batch-1.tsv` as tab-separated lines with this header:
`subject	name	confidence	reason`
- subject: the card's key (`$00A3` for a cell or a table, `field-07` for an object table field);
- name: snake_case, the subject first, then what it is (like `camera_x_lo`, `p1_lives`,
  `floor_height`); for a field, the field's own name without `obj_` or a slot (like `x`, `depth`);
  for a table, the table's name; or `keep`;
- confidence: `sure` (the experiment shows it directly), `likely` (one step of inference from the
  evidence), `guess`;
- reason: one line naming the evidence (which change, what happened).
One line per card, all 48 cards. Look at a card's pictures whenever the screen changed. When
done, reply with only the number of lines written and the counts of sure, likely, guess and keep.
