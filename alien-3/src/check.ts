/**
 * The decoder against the game, frame by frame: on every frame the level is on screen, each tile of
 * the play field the PPU drew is looked up in the nametable it was drawn from and compared — tile
 * number and palette — with the decoded level at the same place of the world.
 *
 * Where a screen pixel is in the world: (camera X + x, camera Y + line), the camera ($1A/$1B,
 * $1C/$1D) as it stood when the frame before ended — the NMI writes the scroll from it (B15:$ECAD).
 * Where it is in the nametables: the scroll the PPU drew that line with (Machine.lineX/lineY) —
 * taken as it is, not computed from the camera; only that the two tile grids line up is checked
 * (`scrollMismatch` counts samples where they do not).
 *
 * Every nametable write of the level's builders is also tagged with the place of the world it was
 * made for, followed through the game's own buffers: B15:$EB83 reads a layout byte (`LDA ($7E),Y`
 * at $EB94 — its address is a block of the layout) and stores the block's 16 tiles into the strip
 * buffer at $0500 ($EBCB / $EBDA, X = the tile in the block) and its attribute byte into $0600
 * ($EB57 / $EB65); the builders copy those buffers into the nametables. So:
 *   - each builder write is checked against the decoder at its own place (`writes*`), seen or not;
 *   - a screen cell showing a write made for another place is `stale` (the game had not rewritten
 *     it yet), not a difference; one showing a write made for this place is compared.
 *
 * Library use: `new Checker(machine, level)`, `attach()`, then `frame()` at each frame's line 241.
 */
import type { Machine } from './machine.ts';
import { LAYOUT_WIDTH, PAGE_BLOCKS, type Level } from './level.ts';

/** Play field: lines 0-175 (the status bar's IRQ is at line $AF, B15:$ECBD). */
export const FIELD_LINES = 176;

/**
 * The instructions that write the level into the nametables: columns (B15:$EF61, $EF71), rows
 * ($EFA4), attributes from the buffer at $0600 ($F31F, $F33A). A cell last written by anything
 * else (the status bar, B13:$B36D, lives in rows 22-29 of $2000 and is never overwritten by the
 * column builder, which writes 22 rows there and 30 in $2400 — $EF69) shows no level data, and is
 * counted apart, not compared.
 */
export const TILE_BUILDERS = new Set([0xef61, 0xef71, 0xefa4]);
export const ATTRIBUTE_BUILDERS = new Set([0xf31f, 0xf33a]);

export class Checker {
  readonly level: Level;
  readonly m: Machine;
  /** Per level tile: frames seen, frames it differed. */
  readonly seen: Uint32Array;
  readonly differed: Uint32Array;
  /** Per level tile: frames it showed a nametable cell last written for another place. */
  readonly stale: Uint32Array;
  staleSamples = 0;
  frames = 0;
  framesSkipped = 0;
  samples = 0;
  matched = 0;
  tileDiffs = 0;
  paletteDiffs = 0;
  outside = 0;
  /** Samples where the world's and the nametable's tile grids did not line up. */
  scrollMismatch = 0;
  /** Field lines drawn with other background CHR than the header's. */
  chrMismatchLines = 0;
  /** Field lines drawn with the background at PPU $1000 instead of $0000. */
  bgTableLines = 0;
  /** Frames whose background palette ($3F00-$3F0F) was not the header's, and how they differed. */
  paletteFrames = 0;
  readonly palettesSeen = new Map<string, number>();
  /** The first frames whose scroll did not fit, for looking at. */
  readonly scrollFrames: object[] = [];
  /** Samples whose nametable tile / attribute was not last written by the level's builders. */
  notBuiltTiles = 0;
  notBuiltAttributes = 0;
  /** Per CIRAM byte, the PC of the instruction that wrote it last (0: not since the start). */
  readonly writer = new Uint16Array(0x800);
  /** Per CIRAM byte, the world cell (tile index; for an attribute byte, its top-left tile) it was written for; -1 outside. */
  readonly intended = new Int32Array(0x800).fill(-1);
  /** Builder writes checked against the decoder at the place they were made for. */
  writesChecked = 0;
  writesMatched = 0;
  attributeWritesChecked = 0;
  attributeWritesMatched = 0;
  /** Builder writes whose value came from no tagged buffer byte (or a half block row's missing half). */
  writesUntagged = 0;
  /** Per byte of $0500-$06FF: the world tile it was filled from (-1: none). */
  private readonly bufferTag = new Int32Array(0x200).fill(-1);
  /** The layout block the strip builder read last: its world corner. */
  private blockCorner = -1;
  private blockRowInPage = 0;
  private lastRead = -1;
  /** The first differences, for looking at: frame, world tile, what the nametable had, the writer. */
  readonly examples: { frame: number; tx: number; ty: number; got: number; want: number; gotPal: number; wantPal: number; writer: string; cam: string; tag: string }[] = [];
  /** The first builder writes that did not match, for looking at. */
  readonly writeExamples: object[] = [];
  /** A label the caller sets (which teleport, which take) to go with the examples. */
  tag = '';
  private readonly perTag = new Map<string, number>();
  private pc = 0;
  private camX = -1;
  private camY = -1; // -1, -1: no frame yet

  constructor(m: Machine, level: Level) {
    this.m = m;
    this.level = level;
    const n = level.widthTiles * level.heightTiles;
    this.seen = new Uint32Array(n);
    this.differed = new Uint32Array(n);
    this.stale = new Uint32Array(n);
    this.headerPalette = Buffer.from(level.palette().subarray(0, 16)).toString('hex');
  }
  private readonly headerPalette: string;

  /** Examples so far under the current tag, this one included. */
  private countExample(): number {
    const n = (this.perTag.get(this.tag) ?? 0) + 1;
    this.perTag.set(this.tag, n);
    return n;
  }

  /** Forget the camera and the nametables' writers (a new start of the level). */
  restart() {
    this.camX = this.camY = -1;
    this.writer.fill(0);
    this.intended.fill(-1);
    this.bufferTag.fill(-1);
    this.blockCorner = -1;
  }

  /** Install the hooks that follow the level into the nametables (call again after replacing hooks). */
  attach() {
    const m = this.m;
    const level = this.level;
    const W = level.widthTiles;
    m.hooks.exec = (pc) => { this.pc = pc; };
    m.hooks.read = (a) => {
      if (this.pc === 0xeb94 && a !== 0xeb94 && a !== 0xeb95 && (a < 0x7e || a > 0x7f)) {
        // The layout byte `LDA ($7E),Y` reads (R6 = the layout bank): which block of the layout.
        // Left of column 0 the pointer runs below the layout (to $7FFF, cartridge RAM: 0).
        const o = a - level.header.layout;
        const row = Math.floor(o / LAYOUT_WIDTH), bx = ((o % LAYOUT_WIDTH) + LAYOUT_WIDTH) % LAYOUT_WIDTH;
        this.blockCorner = o >= 0 && row < level.rows ? level.blockCorner(bx, row) : -1;
        this.blockRowInPage = ((row % PAGE_BLOCKS) + PAGE_BLOCKS) % PAGE_BLOCKS;
      }
      if (a >= 0x8000) return; // the instructions' own bytes (and ROM data: not what is followed here)
      this.lastRead = a;
    };
    m.hooks.write = (a, v) => {
      if ((this.pc === 0xebcb || this.pc === 0xebda) && a >= 0x500 && a < 0x700) {
        // A block's tile into the strip buffer; X is its place in the block, row-major.
        const j = m.cpu.x;
        const lost = this.blockRowInPage === PAGE_BLOCKS - 1 && j >> 2 >= 2; // below a page's half row
        this.bufferTag[a - 0x500] = this.blockCorner < 0 || lost ? -1 : this.blockCorner + (j >> 2) * W + (j & 3);
        return;
      }
      if ((this.pc === 0xeb57 || this.pc === 0xeb65) && a >= 0x500 && a < 0x700) {
        this.bufferTag[a - 0x500] = this.blockCorner;
        return;
      }
      // Anything else writing there leaves a byte the level's data did not fill.
      if (a >= 0x500 && a < 0x700) { this.bufferTag[a - 0x500] = -1; return; }
      if (a !== 0x2007) return;
      const address = m.vramAddress;
      if (address < 0x2000 || address >= 0x3000) return;
      const cell = (m.ciramPage(address) << 10) | (address & 0x3ff);
      this.writer[cell] = this.pc;
      const from = this.lastRead >= 0x500 && this.lastRead < 0x700 ? this.bufferTag[this.lastRead - 0x500] : -1;
      this.intended[cell] = -1;
      if (TILE_BUILDERS.has(this.pc)) {
        if (from < 0) { this.writesUntagged++; return; }
        this.intended[cell] = from;
        this.writesChecked++;
        if (level.tile(from % W, Math.floor(from / W)).tile === v) this.writesMatched++;
        else if (this.writeExamples.length < 400)
          this.writeExamples.push({ frame: m.nes.frame, pc: this.pc.toString(16), tx: from % W, ty: Math.floor(from / W), got: v, want: level.tile(from % W, Math.floor(from / W)).tile, buffer: this.lastRead.toString(16), mode: m.ram[0x46], tag: this.tag });
      } else if (ATTRIBUTE_BUILDERS.has(this.pc)) {
        if (from < 0) return;
        this.intended[cell] = from;
        this.attributeWritesChecked++;
        if (level.attributeByte(level.blockAt(from % W, Math.floor(from / W))) === v) this.attributeWritesMatched++;
        else if (this.writeExamples.length < 400)
          this.writeExamples.push({ frame: m.nes.frame, pc: this.pc.toString(16), tx: from % W, ty: Math.floor(from / W), got: v, want: level.attributeByte(level.blockAt(from % W, Math.floor(from / W))), buffer: this.lastRead.toString(16), mode: m.ram[0x46], tag: this.tag });
      }
    };
  }

  /** Call at line 241 (Nes.beforeVblank): compare what was drawn, then note the camera. */
  frame(onLevel = true) {
    const { m } = this;
    const r = m.ram;
    const camX = this.camX, camY = this.camY;
    // Signed: the camera goes a few pixels above the level's top (Y = -8 seen).
    this.camX = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16;
    this.camY = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
    if (!onLevel || camX === -1 && camY === -1 || !(m.lineMask[8] & 0x08)) return;
    const nt = (m.ppu as unknown as { vram: Uint8Array; bank(n: number): number });
    const W = this.level.widthTiles, H = this.level.heightTiles;
    const res: [number, boolean, boolean, boolean][] = [];
    let agree = 0;
    let scrollBad = 0;
    for (let l = 0; l < FIELD_LINES; l++) {
      const wy = camY + l;
      if ((wy & 7) !== 4) continue;
      const lineY = m.lineY[l];
      // The tile grids of the world and of the nametable must line up.
      if ((lineY & 7) !== 4) { scrollBad++; continue; }
      for (let x = 8; x < 248; x++) {
        const wx = camX + x;
        if ((wx & 7) !== 4) continue;
        const px = (m.lineX[l] + x) % 512;
        if ((px & 7) !== 4) { scrollBad++; continue; }
        const n = (px >> 8) | (lineY >= 240 ? 2 : 0);
        const base = nt.bank(n);
        const tx = (px & 255) >> 3, ty = (lineY % 240) >> 3;
        const tile = nt.vram[base + ty * 32 + tx];
        const attr = nt.vram[base + 0x3c0 + (ty >> 2) * 8 + (tx >> 2)];
        const tileBuilt = TILE_BUILDERS.has(this.writer[base + ty * 32 + tx]);
        const attrBuilt = ATTRIBUTE_BUILDERS.has(this.writer[base + 0x3c0 + (ty >> 2) * 8 + (tx >> 2)]);
        const pal = (attr >> (((ty & 2) << 1) | (tx & 2))) & 3;
        const ltx = wx >> 3, lty = wy >> 3;
        if (wx < 0 || wy < 0 || ltx >= W || lty >= H) { res.push([-1, false, false, false]); continue; }
        if (!tileBuilt) { res.push([-2, false, false, false]); continue; }
        const want = this.level.tile(ltx, lty);
        const here = lty * W + ltx;
        const attrHere = (lty & ~3) * W + (ltx & ~3);
        const attrCell = base + 0x3c0 + (ty >> 2) * 8 + (tx >> 2);
        // Written for another place of the world (or before the offset was known): stale.
        const tileStale = this.intended[base + ty * 32 + tx] !== here;
        const attrStale = attrBuilt && this.intended[attrCell] !== attrHere;
        const tOk = want.tile === tile, pOk = !attrBuilt || attrStale || want.palette === pal;
        const stale = !(tOk && pOk) && (tileStale || attrStale);
        if (!attrBuilt) this.notBuiltAttributes++;
        if (tOk && pOk) agree++;
        else if (!stale && this.countExample() <= 300)
          this.examples.push({ frame: m.nes.frame, tx: ltx, ty: lty, got: tile, want: want.tile, gotPal: pal, wantPal: want.palette, writer: this.writer[base + ty * 32 + tx].toString(16), cam: `${camX},${camY}`, tag: this.tag });
        res.push([lty * W + ltx, tOk, pOk, stale]);
      }
    }
    // A card, a fade, a screen that is not the level: fewer than half agree.
    // (A frame with nothing of the level to compare — the tally screen after the exit — is not one.)
    const compared = res.filter(([cell]) => cell >= 0).length;
    if (!compared || agree * 2 < compared) { this.framesSkipped++; return; }
    this.scrollMismatch += scrollBad;
    if (scrollBad && this.scrollFrames.length < 40) this.scrollFrames.push({ frame: m.nes.frame, camX, camY, lineX0: m.lineX[0], lineY0: m.lineY[0], bad: scrollBad });
    this.frames++;
    const want = this.level.header.chr * 0x400;
    const lines = (m.ppu as unknown as { chrLines: number[][] }).chrLines;
    for (let l = 0; l < FIELD_LINES; l++) if (m.lineCtrl[l] & 0x10) this.bgTableLines++;
    const pal = Buffer.from(m.ppu.palette.subarray(0, 16)).toString('hex');
    if (pal !== this.headerPalette) {
      this.paletteFrames++;
      this.palettesSeen.set(pal, (this.palettesSeen.get(pal) ?? 0) + 1);
    }
    for (let l = 0; l < FIELD_LINES; l++) if (lines[l] && [0, 1, 2, 3].some((s) => lines[l][s] !== want + s * 0x400)) this.chrMismatchLines++;
    for (const [cell, tOk, pOk, stale] of res) {
      this.samples++;
      if (cell === -2) { this.notBuiltTiles++; continue; }
      if (cell === -1) { this.outside++; continue; }
      this.seen[cell]++;
      if (tOk && pOk) this.matched++;
      else if (stale) { this.stale[cell]++; this.staleSamples++; }
      else {
        this.differed[cell]++;
        if (!tOk) this.tileDiffs++;
        if (!pOk) this.paletteDiffs++;
      }
    }
  }

  summary() {
    const cellsSeen = this.seen.reduce((n, v) => n + (v ? 1 : 0), 0);
    // Block 0 is the void around the level's rooms (the most common block; black).
    let solid = 0, solidSeen = 0;
    const W = this.level.widthTiles;
    for (let i = 0; i < this.seen.length; i++)
      if (this.level.blockAt(i % W, Math.floor(i / W)) !== 0) { solid++; if (this.seen[i]) solidSeen++; }
    const cellsDiffered = this.differed.reduce((n, v) => n + (v ? 1 : 0), 0);
    let cellsStale = 0;
    for (let i = 0; i < this.stale.length; i++) if (this.stale[i] && !this.differed[i]) cellsStale++;
    const inside = this.samples - this.outside - this.notBuiltTiles;
    return {
      frames: this.frames,
      framesSkipped: this.framesSkipped,
      samples: inside,
      matched: this.matched,
      /** Every difference counted. */
      matchPercent: inside ? +((100 * this.matched) / inside).toFixed(3) : 0,
      staleSamples: this.staleSamples,
      /** The stale ones (a cell written for another place, see `intended`) left out. */
      matchPercentStaleApart: inside ? +((100 * this.matched) / (inside - this.staleSamples)).toFixed(3) : 0,
      writesChecked: this.writesChecked,
      writesMatched: this.writesMatched,
      writesMatchPercent: this.writesChecked ? +((100 * this.writesMatched) / this.writesChecked).toFixed(3) : 0,
      writesUntagged: this.writesUntagged,
      attributeWritesChecked: this.attributeWritesChecked,
      attributeWritesMatched: this.attributeWritesMatched,
      tileDiffs: this.tileDiffs,
      paletteDiffs: this.paletteDiffs,
      outsideLayout: this.outside,
      notBuiltTiles: this.notBuiltTiles,
      notBuiltAttributes: this.notBuiltAttributes,
      cellsSeen,
      cellsOfLevel: this.seen.length,
      cellsNotVoid: solid,
      cellsNotVoidSeen: solidSeen,
      cellsEverDiffered: cellsDiffered,
      cellsOnlyStale: cellsStale,
      scrollMismatch: this.scrollMismatch,
      chrMismatchLines: this.chrMismatchLines,
      bgTableLines: this.bgTableLines,
      headerPalette: this.headerPalette,
      framesWithOtherPalette: this.paletteFrames,
      otherPalettes: Object.fromEntries([...this.palettesSeen].sort((a, b) => b[1] - a[1]).slice(0, 8)),
    };
  }
}
