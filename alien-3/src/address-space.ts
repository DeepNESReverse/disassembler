/**
 * Below the layout: the whole 64 KB the layout pointer goes round (STATUS.md §12), drawn as the game
 * would draw it — 1 024 rows of 64 "blocks", 128 pages of 240 px, starting at the layout's first
 * byte. Every byte of the CPU's address space taken as a block number.
 *
 * Where each byte's value comes from:
 *   - ROM ($8000-$FFFF): the cartridge, through the banks the strip builder had mapped when it read
 *     there — R6 = the layout bank at $8000, R7 as seen at $A000, the fixed bank at $C000;
 *   - everything else (RAM and its mirrors, the PPU/APU registers, cartridge RAM) changes while
 *     the game runs: the value the builder itself read (`LDA ($7E),Y` at B15:$EB94) in one no-clip
 *     descent through all 128 pages, where it read that byte; elsewhere the memory as it stood on
 *     the level's first frame (RAM, cartridge RAM; the registers: 0).
 * The descent also checks the model: every ROM byte the builder read must be the cartridge's.
 *
 *   node --experimental-strip-types src/address-space.ts <level 1-12>
 * → out/levels/<nn>-space-<k>.png (k = 0..7, 16 pages each) and <nn>-space.json (regions, check).
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { Level, LAYOUT_WIDTH, PAGE_BLOCKS } from './level.ts';
import { cardState } from './teleport.ts';
import { lead, noclip } from './noclip.ts';

export const ROWS = 1024;
export const PAGES = ROWS / PAGE_BLOCKS;
const CHUNK_PAGES = 16;

/** What lives at a CPU address. */
export function regionOf(a: number): string {
  if (a < 0x2000) return 'RAM';
  if (a < 0x4000) return 'регистры PPU';
  if (a < 0x4020) return 'регистры APU / ввод';
  if (a < 0x6000) return 'пусто (open bus)';
  if (a < 0x8000) return 'RAM картриджа';
  if (a < 0xa000) return 'ROM: банк раскладки';
  if (a < 0xc000) return 'ROM: банк на $A000';
  return 'ROM: фиксированный банк (код)';
}

const n = Number(process.argv[2]) - 1;
const { m } = cardState(n);
const level = new Level(m.cart.prg, n);
const h = level.header;
const prg = m.cart.prg;

// The descent: band 1 (camera X 256 — vertical travel needs an odd band, STATUS §11), 128 pages.
let cur: [number, number] | null = null;
m.nes.beforeVblank = noclip(m, () => cur);
const read = new Int16Array(0x10000).fill(-1);
let pc = 0;
const romBad: string[] = [];
let romChecked = 0;
let bankA000 = -1;
/** Banks seen at $A000 / $C000 / $E000 while the builder read there (one each, or the model is wrong). */
const banksSeen = { a000: new Set<number>(), c000: new Set<number>(), e000: new Set<number>() };
const prevExec = m.hooks.exec;
m.hooks.exec = (p) => { pc = p; prevExec?.(p); };
m.hooks.read = (a, v) => {
  if (pc !== 0xeb94 || a === 0xeb94 || a === 0xeb95 || a === 0x7e || a === 0x7f) return;
  if (read[a] < 0) read[a] = v;
  if (a >= 0x8000) {
    romChecked++;
    const bank = m.bankAt(a);
    if (a >= 0xa000 && a < 0xc000) { bankA000 = bank; banksSeen.a000.add(bank); }
    else if (a >= 0xc000 && a < 0xe000) banksSeen.c000.add(bank);
    else if (a >= 0xe000) banksSeen.e000.add(bank);
    const want = a < 0xa000 ? prg[h.layoutBank * 0x2000 + (a & 0x1fff)] : prg[bank * 0x2000 + (a & 0x1fff)];
    if (a < 0xa000 && bank !== h.layoutBank && romBad.length < 20) romBad.push(`$${a.toString(16)}: bank ${bank}, not the layout bank ${h.layoutBank}`);
    if (v !== want && romBad.length < 20) romBad.push(`$${a.toString(16)}: read ${v}, cartridge ${want}`);
  }
};
m.frames(1180 - 900);
const snapshot = new Uint8Array(0x10000);
for (let a = 0; a < 0x2000; a++) snapshot[a] = m.ram[a & 0x7ff];
for (let a = 0x6000; a < 0x8000; a++) snapshot[a] = m.nes.mapper.read(a);
const firstFrame = m.nes.frame;
const r = m.ram;
const camY = () => r[0x1c] | (r[0x1d] << 8);
let frames = 0;
const target = PAGES * 240 + 240;
for (let wrapped = false, last = 0; frames < 40000; frames++) {
  cur = lead(m, [256, target], 3);
  m.frame(0);
  const y = camY();
  if (y < last - 1000) wrapped = true; // the camera's Y is 16 bits too
  last = y;
  if (wrapped || y >= PAGES * 240) break;
}
if (bankA000 < 0) bankA000 = m.nes.mapper.bankAt(0xa000) % (prg.length / 0x2000);

// The 64 KB as the builder sees them.
const memory = new Uint8Array(0x10000);
const source = new Uint8Array(0x10000); // 0 cartridge, 1 read in the descent, 2 first-frame snapshot
for (let a = 0; a < 0x10000; a++) {
  if (a >= 0x8000) {
    const bank = a < 0xa000 ? h.layoutBank : a < 0xc000 ? bankA000 : a < 0xe000 ? prg.length / 0x2000 - 2 : prg.length / 0x2000 - 1;
    memory[a] = prg[bank * 0x2000 + (a & 0x1fff)];
  } else if (read[a] >= 0) { memory[a] = read[a]; source[a] = 1; }
  else { memory[a] = snapshot[a]; source[a] = 2; }
}

// Row y of the space is the address layout + 64·y (mod 64 KB).
const addressOf = (row: number, col: number) => (h.layout + row * LAYOUT_WIDTH + col) & 0xffff;
const W = LAYOUT_WIDTH * 32;
const chr = m.cart.chr;
const palette = level.palette();
const base = h.chr * 0x400;
mkdirSync('out/levels', { recursive: true });
const nn = String(n + 1).padStart(2, '0');
for (let k = 0; k < PAGES / CHUNK_PAGES; k++) {
  const H = CHUNK_PAGES * 240;
  const px = new Uint32Array(W * H);
  for (let p = 0; p < CHUNK_PAGES; p++)
    for (let ty = 0; ty < 30; ty++) {
      const row = (k * CHUNK_PAGES + p) * PAGE_BLOCKS + (ty >> 2);
      for (let col = 0; col < LAYOUT_WIDTH; col++) {
        const a = addressOf(row, col);
        const id = memory[a];
        const attr = prg[h.blocksBank * 0x2000 + ((h.attributes + id) & 0x1fff)];
        for (let tx = 0; tx < 4; tx++) {
          const tile = prg[h.blocksBank * 0x2000 + ((h.tiles + id * 16 + (ty & 3) * 4 + tx) & 0x1fff)];
          const pal = (attr >> (((ty & 2) << 1) | (tx & 2))) & 3;
          // Not the cartridge: dimmed a little, so ROM and the rest tell apart.
          const dim = source[a] !== 0;
          for (let y = 0; y < 8; y++) {
            const lo = chr[base + tile * 16 + y], hi = chr[base + tile * 16 + y + 8];
            for (let x = 0; x < 8; x++) {
              const c = ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1);
              let rgb = NES_RGB[palette[c ? pal * 4 + c : 0] & 0x3f];
              if (dim) rgb = (rgb >> 1) & 0x7f7f7f;
              px[(p * 240 + ty * 8 + y) * W + col * 32 + tx * 8 + x] = rgb;
            }
          }
        }
      }
    }
  writeFileSync(`out/levels/${nn}-space-${k}.png`, encodePng(px, W, H));
}

// Where each kind of memory starts and ends, in the picture's Y (pages of 240 px).
const yOf = (row: number) => Math.floor(row / PAGE_BLOCKS) * 240 + (row % PAGE_BLOCKS) * 32;
const regions: { from: number; to: number; y: number; name: string }[] = [];
for (let row = 0; row < ROWS; row++) {
  const a = addressOf(row, 0), name = regionOf(a);
  const lastRegion = regions[regions.length - 1];
  if (!lastRegion || lastRegion.name !== name) regions.push({ from: a, to: a, y: yOf(row), name });
  else lastRegion.to = (a + LAYOUT_WIDTH - 1) & 0xffff;
}
const summary = {
  level: n + 1,
  layout: h.layout,
  bankA000,
  firstFrame,
  descentFrames: frames,
  bytesReadInDescent: [...read].filter((v) => v >= 0).length,
  romBytesReadChecked: romChecked,
  romMismatches: romBad,
  banksSeen: { a000: [...banksSeen.a000], c000: [...banksSeen.c000], e000: [...banksSeen.e000] },
  chunks: PAGES / CHUNK_PAGES,
  chunkHeight: CHUNK_PAGES * 240,
  regions,
};
writeFileSync(`out/levels/${nn}-space.json`, JSON.stringify(summary, null, 1) + '\n');
console.log(JSON.stringify({ ...summary, regions: regions.map((g) => `${g.y}: $${g.from.toString(16)}-$${g.to.toString(16)} ${g.name}`) }, null, 1));
