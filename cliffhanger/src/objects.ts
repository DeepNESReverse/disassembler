/**
 * Every section's objects, from the cartridge, with the look of each kind read off the run
 * (STATUS §11) → out/levels/objects.json.
 *   node --experimental-strip-types --no-warnings src/objects.ts
 *
 * The cartridge: a word per section at CPU $AD5C in bank 5 (PRG $16D5C, index $040A; $D9E2 reads
 * it into `$051E/$051F`, 0 for sections 2, 7 and 14) points to 9-byte entries: flags ($09, $29,
 * $A9: copied to the slot's first byte), kind, X in tiles (word), Y in tiles as 8.8 (fraction
 * first), and three bytes not read. Their number is the first byte of the section's other list
 * (a word per section at CPU $C69B, fixed bank, into bank 5; `$051D`). The spawner ($DAA7-$DC43)
 * fills one of the five object slots (`$0633 + $1F × slot`, after the player's at `$0614`) from an
 * entry and its kind's template (PRG $17618 on).
 *
 * The look: for every entry the run spawns, the sprites on screen around the slot on the frame it
 * comes in (within 40 px right and 48 px down of its top-left, the player's sprites left out),
 * relative to its position; per section and kind the look most entries share, with the CHR banks
 * of that frame.
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { Run } from './run.ts';
import { prg, SECTIONS } from './level.ts';

const B5 = (cpu: number) => 5 * 0x4000 + (cpu - 0x8000);
const word = (o: number) => prg[o] | (prg[o + 1] << 8);

export interface Entry {
  index: number;
  flags: number;
  kind: number;
  x: number;
  y: number;
  raw: number[];
}

export function entriesOf(section: number): Entry[] {
  const at = word(B5(0xad5c) + 2 * section);
  if (!at) return [];
  const count = prg[B5(word(0x1c69b + 2 * section))];
  const out: Entry[] = [];
  for (let i = 0; i < count; i++) {
    const o = B5(at) + 9 * i;
    const raw = [...prg.subarray(o, o + 9)];
    out.push({ index: i, flags: raw[0], kind: raw[1], x: (raw[2] | (raw[3] << 8)) * 8, y: ((raw[5] << 8) | raw[4]) / 32, raw });
  }
  return out;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const sections = Array.from({ length: SECTIONS }, (_, s) => entriesOf(s));
  const run = new Run();
  const m = run.m;
  const nes = m.nes as unknown as { oam: Uint8Array };
  const mapper = m.nes.mapper as unknown as { chrAt(a: number): number };
  // Read on line 100, as take-pack.ts does: the sprite memory and the banks the field is drawn with.
  const ppu = m.ppu as unknown as { scanline(l: number): void; ctrl: number };
  let oam = new Uint8Array(256);
  let banks: number[] = [];
  let ctrl = 0;
  const scanline = ppu.scanline.bind(ppu);
  ppu.scanline = (line) => {
    scanline(line);
    if (line === 100) {
      oam = nes.oam.slice();
      banks = Array.from({ length: 8 }, (_, i) => (mapper.chrAt(i * 0x400) >> 10) & 0xff);
      ctrl = ppu.ctrl;
    }
  };
  const was = new Array(6).fill(0);
  const owner: ({ e: Entry; taken: boolean } | null)[] = new Array(6).fill(null);
  // looks[section][kind] → key → { count, sprites, banks, ctrl }
  const seen = new Map<string, Map<string, { n: number; sprites: number[][]; banks: number[]; ctrl: number }>>();
  const spawned: Record<number, number[]> = {};
  const end = run.pads.length;
  for (let f = 985; f < end; f++) {
    run.to(f);
    const s = m.ram[0x40a];
    const list = sections[s];
    const camX = ((m.ram[0x19] << 8) | m.ram[0x18]) - 8;
    const camY = (m.ram[0x1b] << 8) | m.ram[0x1a];
    const pos = (base: number) => ({ x: ((m.ram[base + 3] << 8) | m.ram[base + 2]) / 32, y: ((m.ram[base + 10] << 8) | m.ram[base + 9]) / 32 });
    const player = pos(0x614);
    for (let slot = 1; slot < 6; slot++) {
      const base = 0x614 + 0x1f * slot;
      const on = m.ram[base] & 1;
      let p = pos(base);
      // X is kept mod 2048 px, like the player's: put it back next to the camera.
      while (p.x < camX - 512) p = { ...p, x: p.x + 2048 };
      if (!on) owner[slot] = null;
      else if (!was[slot] && list?.length) {
        // A slot that comes on takes the entry at its place.
        const e = list.find((q) => Math.abs(q.x - p.x) <= 8 && Math.abs(q.y - p.y) <= 8);
        owner[slot] = e ? { e, taken: false } : null;
        if (e) (spawned[s] ??= []).push(e.index);
      }
      was[slot] = on;
      const o = owner[slot];
      if (!o || o.taken) continue;
      const sx = Math.round(p.x - camX);
      const sy = Math.round(p.y - camY);
      // Its look once it is wholly on the field.
      if (sx < 16 || sx > 200 || sy < 8 || sy > 120) continue;
      o.taken = true;
      let ppx = player.x;
      while (ppx < camX - 512) ppx += 2048;
      const px = Math.round(ppx - camX);
      const py = Math.round(player.y - camY);
      const sprites: number[][] = [];
      for (let k = 0; k < 64; k++) {
        if (oam[k * 4] >= 0xef) continue;
        const y = oam[k * 4] + 1;
        const x = oam[k * 4 + 3];
        const inObj = x >= sx - 16 && x < sx + 40 && y >= sy - 24 && y < sy + 48;
        const inPlayer = x >= px - 4 && x < px + 24 && y >= py - 4 && y < py + 40;
        if (inObj && !inPlayer) sprites.push([x - sx, y - sy, oam[k * 4 + 1], oam[k * 4 + 2]]);
      }
      if (!sprites.length) continue;
      const key = `${s}:${o.e.kind}`;
      if (!seen.has(key)) seen.set(key, new Map());
      const lk = JSON.stringify(sprites.sort((a, b) => a[1] - b[1] || a[0] - b[0]));
      const v = seen.get(key)!.get(lk) ?? { n: 0, sprites, banks, ctrl };
      v.n++;
      seen.get(key)!.set(lk, v);
    }
  }
  const looks: Record<string, { sprites: number[][]; banks: number[]; tall: boolean; of: number; agree: number }> = {};
  for (const [key, ways] of seen) {
    const all = [...ways.values()];
    const best = all.sort((a, b) => b.n - a.n)[0];
    looks[key] = { sprites: best.sprites, banks: best.banks, tall: (best.ctrl & 0x20) !== 0, of: all.reduce((t, w) => t + w.n, 0), agree: best.n };
  }
  const palettes = Array.from({ length: SECTIONS }, (_, s) => [...prg.subarray(0x12400 + 32 * s + 16, 0x12400 + 32 * s + 32)]);
  mkdirSync('out/levels', { recursive: true });
  writeFileSync('out/levels/objects.json', JSON.stringify({ sections, looks, palettes, spawned }) + '\n');
  const total = sections.reduce((t, l) => t + l.length, 0);
  console.log(`${total} objects in ${SECTIONS} sections; ${Object.keys(looks).length} looks (section:kind)`);
  for (const [k, v] of Object.entries(looks)) console.log(`  ${k}: ${v.sprites.length} sprites, ${v.agree} of ${v.of} agree`);
  for (let s = 0; s < SECTIONS; s++) {
    const kinds = new Set(sections[s].map((e) => e.kind));
    const missing = [...kinds].filter((k) => !looks[`${s}:${k}`]);
    if (missing.length) console.log(`  section ${s}: no look for kinds ${missing.map((k) => k.toString(16)).join(' ')} (${sections[s].filter((e) => missing.includes(e.kind)).length} objects)`);
  }
}
