/**
 * The cartridge on xrom-libs' headless NES, with the bus open to look at: every instruction start,
 * every CPU read and write, and where in the PRG file a CPU address is under the MMC3's banks.
 *
 * Nothing in xrom-libs is changed — the `Nes` instance's private `read`/`write` and its CPU's
 * `step` are wrapped here (the CPU's bus calls `this.read`, so an instance property takes over).
 */

import { readFileSync } from 'node:fs';
import { Nes, parseRom, BUTTON, type Cartridge } from '../../xrom-libs/nes/src/nes.ts';
import { Ppu } from '../../xrom-libs/nes/src/ppu.ts';

export { BUTTON };

export const ROM_PATH = process.env.ALIEN3_ROM ?? `${process.env.HOME}/roms/dendy/nes/Alien 3 (USA).nes`;

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

  constructor(file = readFileSync(ROM_PATH)) {
    this.cart = parseRom(new Uint8Array(file));
    this.nes = new Nes(this.cart);
    this.ppu = new Ppu(this.cart, this.nes.mapper);
    this.nes.ppu = this.ppu;
    const n = this.nes as unknown as { read(a: number): number; write(a: number, v: number): void; ram: Uint8Array };
    this.ram = n.ram;
    const read = n.read.bind(n);
    const write = n.write.bind(n);
    n.read = (a) => {
      const pin = a < 0x2000 ? this.pins.get(a & 0x7ff) : undefined;
      const v = pin ?? read(a);
      this.hooks.read?.(a, v);
      return v;
    };
    n.write = (a, v) => {
      this.hooks.write?.(a, v);
      write(a, v);
    };
    const cpu = this.nes.cpu;
    const step = cpu.step.bind(cpu);
    cpu.step = () => {
      const pc = cpu.pc;
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

/** A save state of the machine (the parts xrom-libs' classes keep as fields). */
export function saveState(m: Machine): State {
  const s: State = new Map();
  for (const o of objectsOf(m)) {
    const rec: Record<string, unknown> = {};
    for (const [k, v] of Object.entries(o)) {
      if (typeof v === 'function' || (typeof v === 'object' && v !== null && !ArrayBuffer.isView(v) && !Array.isArray(v))) continue;
      if (k === 'writes') continue;
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
