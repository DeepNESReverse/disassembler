/**
 * A listing from what ran: every instruction start executed on the way into a level and while it
 * is played (the path, the card, a wander), keyed by PRG offset — so the MMC3's banks are told
 * apart — and written as listing/<name>.asm, one section per 8 KB bank, labels and comments for
 * the routines that are known (`NAMES`, every name backed by an experiment in STATUS.md).
 *   node --experimental-strip-types src/disasm.ts [levels…]   (default: all twelve)
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { decode, OPCODES } from '@xromdev/cpu6502';
import { BUTTON } from './machine.ts';
import { cardState } from './teleport.ts';
import { loadCart } from './render.ts';

/** Routines named so far: CPU address (fixed bank 15 unless the key says `b<n>:`) → name, comment. */
export const NAMES: Record<string, [string, string]> = {
  'b15:E9D5': ['LoadLevel', 'level $A8 → blocks bank $8A ($C031), layout bank $8B ($C03D), header ($C019) → $04-$26'],
  'b15:EAE1': ['BuildFirstScreen', '8 strips of blocks from $18, nametable columns 0-31, attributes'],
  'b15:EB3F': ['FillStrip', '8 blocks down ($46 bit 0 clear) or across from ($7E) into the buffers $0500 (tiles) and $0600 (attributes)'],
  'b15:EB83': ['FillBlock', 'one layout byte → its 16 tiles ($04 + 16·id, R6=$8A) and attribute byte ($06 + id)'],
  'b15:EF2E': ['NmiWriteStrip', 'in NMI: the strip buffer into the nametables when $38 says one is ready'],
  'b15:EF43': ['WriteStrip', 'column mode: 2 columns of 22 rows ($2000) / 30 rows ($2400); row mode at $EF8E: 64 bytes'],
  'b15:F0A8': ['ScrollLeft', 'camera X − $2C; $18 − 1 when bit 5 of $2A changes, StripLeft when bit 4 does'],
  'b15:F0E6': ['StripLeft', 'strip for the column left of the camera ($18 − 1)'],
  'b15:F0FD': ['StripAddress', 'nametable address of a strip column: $2000 + col (< 32) or $2400 + col − 32; attribute buffer $0600/$0640'],
  'b15:F132': ['StripRight', 'strip for the column 8 blocks right of the camera ($18 + 8)'],
  'b15:F166': ['StripUp', 'strip for the block row above the camera ($18 − $40); $3D = row in the page'],
  'b15:F2F9': ['WriteAttributes', 'attribute buffer $0600 (48 bytes, $23C0) or $0640 (64 bytes, $27C0) into the nametables'],
  'b15:F34F': ['ScrollColumn', 'nametable column (×4) of the camera from $27 bit 0 and $2A'],
  'b15:F35C': ['ScrollBlockRow', 'nametable block row of the camera: $2B >> 5'],
  'b15:EC81': ['NmiPalette', 'the 32 palette bytes at $0785 into $3F00'],
  'b15:ECCA': ['NmiChrBanks', 'R0 = $26, R1 = $26 + 2 (background), R2/R3 = $0718/$0719, R4 = $7B, R5 = $071A'],
};

const levels = process.argv.slice(2).map(Number);
const executed = new Map<number, number>(); // PRG offset → CPU address
for (const n of levels.length ? levels : [...Array(12).keys()]) {
  const { m } = cardState(n);
  m.hooks.exec = (pc) => {
    if (pc >= 0x8000) executed.set(m.prgOffset(pc), pc);
  };
  m.frames(1180 - 900);
  let seed = n + 1;
  const rand = () => ((seed = (seed * 1103515245 + 12345) >>> 0) / 2 ** 32);
  const dirs = [BUTTON.right, BUTTON.left, BUTTON.down, BUTTON.up, BUTTON.right | BUTTON.up, BUTTON.left | BUTTON.down];
  let left = 0, held = 0;
  for (let f = 0; f < 3000; f++) {
    if (left-- <= 0) { held = dirs[Math.floor(rand() * dirs.length)] | (rand() < 0.5 ? BUTTON.B : 0); left = 20 + Math.floor(rand() * 100); }
    m.frame(held | (rand() < 0.05 ? BUTTON.A : 0));
  }
}
const prg = loadCart().prg;
const h = (v: number, w = 4) => v.toString(16).toUpperCase().padStart(w, '0');
const lines: string[] = [
  '; Alien 3 (USA) — code executed on the way into the levels and while they are played,',
  '; disassembled where it ran (src/disasm.ts). Columns: PRG offset (past the iNES header), bank:CPU',
  '; address, bytes, instruction. Labels: routines named by experiment (STATUS.md).',
  '',
];
const offsets = [...executed.keys()].sort((a, b) => a - b);
let lastBank = -1, lastEnd = -1;
for (const off of offsets) {
  const cpu = executed.get(off)!;
  const bank = off >> 13;
  if (bank !== lastBank) { lines.push('', `; ---- bank ${bank} (PRG $${h(bank * 0x2000, 5)}) ----`); lastBank = bank; lastEnd = -1; }
  if (lastEnd >= 0 && off !== lastEnd) lines.push(off - lastEnd < 16 ? '' : `        ; … $${h(off - lastEnd)} bytes not run`);
  const name = NAMES[`b${bank}:${h(cpu)}`];
  if (name) lines.push('', `${name[0]}:  ; ${name[1]}`);
  const base = off - (cpu & 0x1fff);
  const ins = decode((a) => prg[base + (a & 0x1fff)] ?? 0, cpu);
  lines.push(`${h(off, 5)}  ${bank}:${h(cpu)}  ${ins.bytes.map((b) => h(b, 2)).join(' ').padEnd(9)} ${ins.text}`);
  lastEnd = off + OPCODES[ins.bytes[0]].length;
}
mkdirSync('listing', { recursive: true });
writeFileSync('listing/levels.asm', lines.join('\n') + '\n');
console.log(`${offsets.length} instruction starts → listing/levels.asm`);
