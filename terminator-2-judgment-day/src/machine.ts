/**
 * The cartridge on xrom-libs' headless NES, with the bus open to look at: every instruction start,
 * every CPU read and write, and where in the PRG file a CPU address is under the MMC3's banks.
 *
 * Nothing in xrom-libs is changed — the `Nes` instance's private `read`/`write` and its CPU's
 * `step` are wrapped here (the CPU's bus calls `this.read`, so an instance property takes over).
 */

import { Nes, parseRom, BUTTON, type Cartridge } from '../libs/nes/src/nes.ts';
import { Ppu } from '../libs/nes/src/ppu.ts';

export { BUTTON };


export interface Hooks {
  /** Before an instruction runs. */
  exec?(pc: number): void;
  /** After it ran. */
  step?(pc: number, opcode: number): void;
  read?(address: number, value: number): void;
  /** Before the write lands (so a $2007 write still sees the PPU address it goes to). */
  write?(address: number, value: number): void;
}

export class Machine {
  readonly cart: Cartridge;
  readonly nes: Nes;
  readonly ppu: Ppu;
  readonly ram: Uint8Array;
  readonly hooks: Hooks = {};
  /** Values to answer CPU reads of a RAM cell with, while the RAM keeps what the game wrote. */
  readonly pins = new Map<number, number>();
  /**
   * The game's random seed `$06FC/$06FD` as FCEUX's power-on leaves it (STATUS §3): set the first
   * time the seed is complete, at `$A52D`. `null` keeps what this NES made of it.
   */
  seed: [number, number] | null = [0x02, 0x02];
  private seeded = false;
  /** Per visible line of the last frame: the nametable-plane x (0-511) and y (0-479) it starts at. */
  readonly lineX = new Int16Array(240);
  readonly lineY = new Int16Array(240);
  /** PPUMASK and PPUCTRL each visible line was drawn with. */
  readonly lineMask = new Uint8Array(240);
  readonly lineCtrl = new Uint8Array(240);
  /** The PPU's I/O bus (FCEUX's PPUGenLatch), for the reads the NES lacks. */
  ppuLatch = 0;

  /** `file`: the iNES file's bytes (Node: `romFile()` from rom.ts; the browser: fetched). */
  constructor(file: Uint8Array) {
    this.cart = parseRom(new Uint8Array(file));
    this.nes = new Nes(this.cart);
    this.ppu = new Ppu(this.cart, this.nes.mapper);
    this.nes.ppu = this.ppu;
    const n = this.nes as unknown as { read(a: number): number; write(a: number, v: number): void; ram: Uint8Array };
    this.ram = n.ram;
    // FCEUX powers on with the RAM as 00 00 00 00 FF FF FF FF over and over (the capture's first
    // frame), xrom-libs' NES with zeros. Terminator 2 reads cells it never wrote before the title
    // (STATUS §3), so the run here starts from FCEUX's pattern.
    for (let a = 0; a < this.ram.length; a++) this.ram[a] = a & 4 ? 0xff : 0;
    const read = n.read.bind(n);
    const write = n.write.bind(n);
    // The PPU's open bus as FCEUX (its old PPU, the default) has it — its PPUGenLatch: every write to
    // a PPU register leaves its value on the bus, `$2002` fills its low 5 bits from it, and `$2004`
    // and the write-only registers read the bus back (`$2004` too: not the sprite memory). xrom-libs'
    // NES reads them as 0. Cliffhanger read them when its floor walker runs off the end of a
    // section's floor table (`$CF32`, at the right edge of section 14): there FCEUX's bus gave the
    // player a floor where 0 let them fall, and after the movie the bus is what makes the last boss
    // walk off the cliff — with the sprite memory for `$2004` he stood on it (Cliffhanger's STATUS §10).
    n.read = (a) => {
      const pin = a < 0x2000 ? this.pins.get(a & 0x7ff) : undefined;
      let v = pin ?? read(a);
      if (a >= 0x2000 && a < 0x4000) {
        const r = a & 7;
        if (r === 2) v = (v & 0xe0) | (this.ppuLatch & 0x1f);
        else if (r !== 7) v = this.ppuLatch;
        this.ppuLatch = v;
      }
      this.hooks.read?.(a, v);
      return v;
    };
    n.write = (a, v) => {
      this.hooks.write?.(a, v);
      if (a >= 0x2000 && a < 0x4000) this.ppuLatch = v;
      write(a, v);
    };
    // The scroll each visible line is drawn with: x and y in the 512 × 480 nametable plane.
    const ppu = this.ppu as unknown as { scanline(l: number): void; t: number; fineX: number; y: number; mask: number; ctrl: number };
    const scanline = ppu.scanline.bind(ppu);
    ppu.scanline = (line) => {
      scanline(line);
      if (line < 240) {
        this.lineX[line] = ((ppu.t >> 10) & 1) * 256 + (ppu.t & 31) * 8 + ppu.fineX;
        this.lineY[line] = ppu.y;
        this.lineMask[line] = ppu.mask;
        this.lineCtrl[line] = ppu.ctrl;
      }
    };
    const cpu = this.nes.cpu;
    const step = cpu.step.bind(cpu);
    cpu.step = () => {
      const pc = cpu.pc;
      if (pc === 0xa52d && this.seed && !this.seeded) {
        this.seeded = true;
        this.ram[0x6fc] = this.seed[0];
        this.ram[0x6fd] = this.seed[1];
      }
      this.hooks.exec?.(pc);
      const op = this.peek(pc);
      const c = step();
      this.hooks.step?.(pc, op);
      return c;
    };
  }

  get cpu() {
    return this.nes.cpu;
  }

  /** A CPU byte without side effects (RAM or cartridge). */
  peek(a: number): number {
    if (a < 0x2000) return this.ram[a & 0x7ff];
    if (a >= 0x6000) return this.nes.mapper.read(a);
    return 0;
  }

  /** The PRG file offset (past the iNES header) a CPU address $8000-$FFFF reads now. */
  prgOffset(a: number): number {
    const banks = this.cart.prg.length / 0x2000;
    return (this.nes.mapper.bankAt(a) % banks) * 0x2000 + (a & 0x1fff);
  }

  /** The 8 KB PRG bank at a CPU address now. */
  bankAt(a: number): number {
    return this.nes.mapper.bankAt(a) % (this.cart.prg.length / 0x2000);
  }

  /** The PPU's current VRAM address (loopy v) and the CIRAM page a nametable address lands on. */
  get vramAddress(): number {
    return (this.ppu as unknown as { v: number }).v & 0x3fff;
  }
  ciramPage(address: number): number {
    return (this.ppu as unknown as { bank(n: number): number }).bank((address >> 10) & 3) >> 10;
  }

  frame(buttons = 0) {
    this.nes.buttons = buttons;
    this.nes.runFrame();
  }

  frames(n: number, buttons = 0) {
    for (let i = 0; i < n; i++) this.frame(buttons);
  }
}

/** Everything a running machine holds, copied: numbers, booleans, strings, arrays and typed arrays. */
type State = Map<object, Record<string, unknown>>;

function copyValue(v: unknown): unknown {
  if (ArrayBuffer.isView(v)) return (v as Uint8Array).slice();
  if (Array.isArray(v)) return v.map(copyValue);
  return v;
}

function objectsOf(m: Machine): object[] {
  return [m.nes, m.nes.cpu, m.nes.mapper, m.ppu];
}

/** The PPU's pictures: output only, ~1 MB a state — left out of a light state. */
const PICTURES = new Set(['pixels', 'indices', 'background', 'sprites', 'chrLines', 'bgOpaque']);

/**
 * A save state of the machine (the parts xrom-libs' classes keep as fields). `light`: without the
 * PPU's pictures, for searches that keep thousands of states (the next frame draws them anew).
 */
export function saveState(m: Machine, light = false): State {
  const s: State = new Map();
  for (const o of objectsOf(m)) {
    const rec: Record<string, unknown> = {};
    for (const [k, v] of Object.entries(o)) {
      if (light && o === m.ppu && PICTURES.has(k)) continue;
      if (typeof v === 'function' || (typeof v === 'object' && v !== null && !ArrayBuffer.isView(v) && !Array.isArray(v))) continue;
      // Callbacks (beforeVblank, unset or not) and the sound log are the caller's, not state.
      if (k === 'writes' || k === 'beforeVblank' || v === undefined) continue;
      rec[k] = copyValue(v);
    }
    s.set(o, rec);
  }
  return s;
}

export function loadState(m: Machine, s: State) {
  for (const [o, rec] of s) {
    for (const [k, v] of Object.entries(rec)) {
      const cur = (o as Record<string, unknown>)[k];
      if (ArrayBuffer.isView(cur)) (cur as Uint8Array).set(v as Uint8Array);
      else if (Array.isArray(cur) && Array.isArray(v) && !Array.isArray(v[0])) cur.splice(0, cur.length, ...v);
      else (o as Record<string, unknown>)[k] = copyValue(v);
    }
  }
  (m.nes as unknown as { writes: unknown[] }).writes.length = 0;
}
