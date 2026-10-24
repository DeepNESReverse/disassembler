# Alien 3 (USA): how a level is stored

PRG offsets are past the 16-byte iNES header. "B<n>:$addr" is 8 KB PRG bank n seen at CPU $addr;
code is in the fixed bank 15 ($E000-$FFFF, PRG $1E000) unless said otherwise. Every statement here
is tied to an experiment in STATUS.md; the decoder is `src/level.ts`, the picture `src/render.ts`,
the check `src/check.ts` + `src/check-run.ts`, the code `listing/levels.asm`.

## 1. Choosing the level

The level number is RAM `$A8`, 0-11. The loader `LoadLevel` (B15:$E9D5) indexes three tables in
the fixed bank with it:

| table | PRG | per level | what |
|---|---|---|---|
| `$C019` | $1C019 | 2 bytes | the header's CPU address, in the blocks bank |
| `$C031` | $1C031 | 1 byte | PRG bank of blocks + header (`$8A`, also put in R6) |
| `$C03D` | $1C03D | 1 byte | PRG bank of the layout (`$8B`) |

| $A8 | header | blocks bank | layout bank |
|---|---|---|---|
| 0, 1, 2 | $9F80, $9FC0, $9BC0 | 0 | 1, 1, 0 |
| 3, 4, 5 | $9F80, $9FC0, $9BC0 | 2 | 3, 3, 2 |
| 6, 7, 8 | $9F80, $9FC0, $9BC0 | 4 | 5, 5, 4 |
| 9, 10, 11 | $9F80, $9FC0, $9BC0 | 6 | 7, 7, 6 |

## 2. The header (64 bytes)

Bytes $0C-$2E are copied to zero page $04-$26 (B15:$EA17, `LDA ($9E),Y` / `STA $04,X`). Level 1
(B0:$9F80, PRG $01F80) as the example.

| byte | → | level 1 | meaning | proved by |
|---|---|---|---|---|
| $00-$0B | $0741-$0744 | 00 04 03 00 … | 3 × 4 bytes, one group picked by `$07A8` (B15:$EA35) | not known yet |
| $0C/$0D | $04/$05 | $832B | block tiles: 16 a block, row-major 4 × 4 | decoder = every builder write |
| $0E/$0F | $06/$07 | $91CB | one attribute byte a block | decoder = every attribute write |
| $10/$11 | $08/$09 | $8000 | the layout's first byte (block row 0, column 0), in the layout bank | the picture |
| $12-$1F | $0A-$17 | | read by the object code (B13:$BB1B, B15:$EAB4) — not looked at | |
| $20/$21 | $18/$19 | $8010 | layout byte at the camera's top-left | = layout + 64 · (8 · page + row in page) + column of the start camera, all 12 headers (`runs/hdr.ts` → STATUS §5) |
| $22/$23 | $1A/$1B | $0200 | camera X at the start | the camera cell (§5) |
| $24/$25 | $1C/$1D | $0000 | camera Y at the start | |
| $26/$27 | $1E/$1F | $816B | 32 objects × 8 fields of 32 bytes (X lo, X hi, Y lo, Y hi, …); object 0 = the player → `$0420/$0440/$0460/$0480`… (B15:$EA86) | player's start = (612, 80) |
| $28/$29 | $20/$21 | $82BB | 16 bytes → `$0700` (+$6F back, B15:$EA74) | not looked at |
| $2A/$2B | $22/$23 | $826B | read by B13:$B0A0 | not looked at |
| $2C/$2D | $24/$25 | $931B | 32 palette bytes ($3F00-$3F1F), in the blocks bank | equals PPU palette on every level frame |
| $2E | $26 | $10 | background CHR: 1 KB banks $26 … $26+3 at PPU $0000 (B15:$ECCF: R0 = $26, R1 = $26 + 2) | banks on every field line |
| $2F | → $0746/$0747 | 4 | the timer's minutes, as tens and ones (B15:$EA5C) | level 1 card: 04:00 |
| $30 | → $A7 | 5 | music (B15:$EA2F) | not checked by ear |
| $31 | → $27 | 0 | the PPUCTRL copy (nametable bits = scroll X bit 8) | |

## 3. Blocks and layout

- A **block** is 4 × 4 tiles, 32 × 32 px — one attribute byte. Tiles: 16 bytes at `$04 + 16 · id`,
  row-major; attribute: `$06 + id`; both in the blocks bank (`FillBlock`, B15:$EB83).
- The **layout** is one byte a block, **64 blocks a row** (B15:$EB71 adds $40 for a block down),
  in the layout bank from `$08`. Block 0 is the void around the rooms (black).
- **Pages.** Vertically the world is made of pages 240 px tall — a nametable. A page is 8 layout
  rows; its 8th row is only half seen (16 px: nametable rows 28-29; under them are the attributes).
  So world tile row `ty` is page `ty div 30`, layout row `8 · page + (ty mod 30) div 4`, row in the
  block `(ty mod 30) mod 4`. (`StripUp` keeps the row in the page in `$3D`; B15:$E924 tests it
  against 7.) Read as plain 32-px rows, the map comes apart below Y = 240 (77 % on a ladder
  descent); read as pages, 100 %.
- Size: as many rows as the layout bank holds after `$08` (at most 64 = 8 pages): level 1 is
  64 × 64 blocks, 2048 × 1920 px.

## 4. Into the nametables

- Vertical mirroring; the world is shown at nametable X = world X − start X (mod 512) and Y = world
  Y (mod 240) — the first screen is built from nametable column 0, row 0 (`BuildFirstScreen`,
  B15:$EAE1), and the start camera of all 12 headers is a multiple of 512 in X and of 240 in Y.
- Strips of 8 blocks go through a buffer: tiles at `$0500` (4 columns of 32 bytes), attributes at
  `$0600`/`$0640` (`FillStrip`, B15:$EB3F); in NMI `WriteStrip` (B15:$EF43) copies two columns into
  `$2000` (22 rows) or `$2400` (30 rows) — or, in row mode, 64 bytes across (B15:$EF8E) — and
  `WriteAttributes` (B15:$F2F9) 48 bytes to `$23C0` or 64 to `$27C0`.
- Rows 22-29 of `$2000` and its last two attribute rows hold the **status bar** (B13:$B36D); an IRQ
  at line 175 shows it under the 176-line field. The level never overwrites them by columns.
- The palette goes up every NMI from the buffer `$0785` (B15:$EC81); the background CHR banks are
  set every NMI from `$26` (B15:$ECCA).

## 5. The camera

`$1A/$1B` X, `$1C/$1D` Y (signed: Y = −8 is seen at the top). The NMI writes the scroll from the
game's own copy (`$2A`, `$27` bit 0, `$2B`), so a frame is drawn with the camera as it stood when
the previous frame ended. Objects: X `$0420`/`$0440`, Y `$0460`/`$0480` (lo/hi).

## 6. Not yet known

Header bytes $00-$0B, $12-$1F, $28-$2B; the object table's fields beyond X and Y; where a level
ends (level 1: the exit at the bottom right, X ≈ 1792, Y ≈ 1440, gives the "WELL DONE" tally).
