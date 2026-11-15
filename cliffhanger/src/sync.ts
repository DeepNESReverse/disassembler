/**
 * Does the TAS play the same on this NES as in FCEUX? The capture's pads are played here and the
 * RAM after every frame is compared with the FCEUX capture's.
 *   node --experimental-strip-types --no-warnings src/sync.ts [--off N] [--until F] [--quiet]
 *
 * A frame of FCEUX's ends at line 241 before the NMI, not at line 261 as this NES's runFrame does:
 * that is where its RAM is read and where its next pad takes over (`nes.beforeVblank`). So the
 * compare and the pad change both happen there. Cells ignored: $00-$0F (scratch) and the stack page;
 * `IGNORE=552,…` adds more.
 */
import { Machine } from './machine.ts';
import { romFile } from './rom.ts';
import { readCapture } from './capture.ts';

const args = process.argv.slice(2);
const opt = (k: string, d: number) => (args.includes(k) ? Number(args[args.indexOf(k) + 1]) : d);
// The capture frame the first line 241 of this NES ends (FCEUX's power-on frame count).
const off = opt('--off', 1);
const until = opt('--until', Infinity);
const quiet = args.includes('--quiet');
const IGNORE = new Set((process.env.IGNORE ?? '').split(',').filter(Boolean).map((h) => parseInt(h, 16)));

const byFrame = new Map<number, { pad: number; ram: Uint8Array }>();
for (const c of readCapture()) byFrame.set(c.frame, { pad: c.pad, ram: c.ram.slice() });
const m = new Machine(romFile());
let at = off; // the capture frame the next line 241 ends
let reported = 0;
let firstBad = -1;
let done = false;
m.nes.beforeVblank = () => {
  const c = byFrame.get(at);
  if (!c || at > until) {
    done = true;
    return;
  }
  if (at >= 3) {
    const diff: string[] = [];
    for (let a = 0x10; a < 0x800; a++) {
      if ((a >= 0x100 && a < 0x200) || IGNORE.has(a)) continue;
      if (m.ram[a] !== c.ram[a]) diff.push(`${a.toString(16).padStart(4, '0')}:${m.ram[a].toString(16)}/${c.ram[a].toString(16)}`);
    }
    if (diff.length) {
      if (firstBad < 0) firstBad = at;
      if ((reported++ < 12 || process.env.ALL) && !quiet) console.log(`frame ${at}: ${diff.length} cells  ${diff.slice(0, 14).join(' ')}`);
    }
  }
  // FCEUX's frame at+1 starts now, with its pad (the capture's own record of it).
  m.nes.buttons = byFrame.get(at + 1)?.pad ?? 0;
  at++;
  if (at % 5000 === 0 && !quiet) console.log(`frame ${at}: ${reported} bad frames so far`);
};
while (!done) m.frame(m.nes.buttons);
console.log(`off ${off}: first bad frame ${firstBad}, bad frames ${reported} of ${at - 3}`);
