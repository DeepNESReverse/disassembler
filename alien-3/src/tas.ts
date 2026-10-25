/**
 * A TAS from FCEUX (.fm2: a pad line a frame, from power-on), played on this NES — an outside
 * source (the user's: J.Y's Alien 3 TAS), used only for where a player goes, never for the format.
 * Checked first: the .fm2's romChecksum (MD5 of PRG+CHR) is this ROM's.
 *   node --experimental-strip-types src/tas.ts <file.fm2> [--lead N]
 * Prints each level change ($A8) with the frame; with --out, writes out/levels/tas.json: per level,
 * the player's X/Y every 4 frames and the prisoners rescued (the run as the TAS plays it).
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { Machine } from './machine.ts';
import { romFile } from './rom.ts';

const args = process.argv.slice(2);
const file = args[0];
const lead = Number(args.includes('--lead') ? args[args.indexOf('--lead') + 1] : 0);
const text = readFileSync(file, 'utf8');
const sum = text.match(/^romChecksum base64:(\S+)/m)?.[1];
const rom = romFile();
const ours = createHash('md5').update(rom.subarray(16)).digest('base64');
if (sum !== ours) throw new Error(`romChecksum ${sum} is not this ROM's ${ours}`);
// FM2 pad: "RLDUTSBA" left to right; this NES's bits: A 1, B 2, select 4, start 8, up 16, down 32, left 64, right 128.
const BITS = [128, 64, 32, 16, 8, 4, 2, 1];
const pads = text.split('\n').filter((l) => l.startsWith('|')).map((l) => {
  const p = l.split('|')[2] ?? '';
  return [...p].reduce((b, c, i) => (c !== '.' && c !== ' ' ? b | BITS[i] : b), 0);
});
const m = new Machine(rom);
// lead > 0: our NES runs that many frames before the TAS's first; < 0: the TAS's first frames are dropped.
for (let i = 0; i < lead; i++) m.frame(0);
if (lead < 0) pads.splice(0, -lead);
const r = m.ram;
let level = -1;
const levels: Record<number, { from: number; trail: [number, number][] }> = {};
for (let f = 0; f < pads.length; f++) {
  m.frame(pads[f]);
  if (r[0xa8] !== level) { level = r[0xa8]; console.log(`frame ${f}: $A8 = ${level}`); }
  if (process.env.EVERY && f % Number(process.env.EVERY) === 0) console.log(`frame ${f}: player ${r[0x420] | (r[0x440] << 8)},${r[0x460] | (r[0x480] << 8)} hp ${r[0x74a]} prisoners left ${r[0x747]} timer ${r[0x741]}${r[0x742]}:${r[0x743]}${r[0x744]}`);
  if (process.env.STOP && f >= Number(process.env.STOP)) break;
  if (process.env.PROBE && f === Number(process.env.PROBE)) console.log(`frame ${f}: options $07A5=${r[0x7a5]} $07A7=${r[0x7a7]} $07A8=${r[0x7a8]} player ${r[0x420] | (r[0x440] << 8)},${r[0x460] | (r[0x480] << 8)}`);
  const lv = (levels[level + 1] ??= { from: f, trail: [] });
  if (f % 4 === 0) lv.trail.push([r[0x420] | (r[0x440] << 8), r[0x460] | (r[0x480] << 8)]);
}
console.log(`end: frame ${pads.length}, $A8 = ${r[0xa8]}`);
if (args.includes('--out')) writeFileSync('out/levels/tas.json', JSON.stringify({ source: 'TAS by J.Y (jy-alien3.fm2), the user\'s file', lead, levels }) + '\n');
