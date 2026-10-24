/**
 * Where every byte came from — after nes-explorer's src/core/taint.ts, on this machine (MMC3):
 * a shadow carrying, for each register and each RAM byte, the place in the PRG its value was read.
 *
 * An origin is a number:
 *   > 0   PRG file offset + 1 — loaded from the ROM there (data)
 *   < 0   −(PRG offset + 1) — an immediate operand, a constant in the code there
 *   0     unknown (I/O, computed from nothing traced)
 * DERIVED (bit 30) is set once arithmetic or a shift touched it. Indexing is not followed: the
 * value is the origin, the index that picked it is recorded separately for $2007 writes.
 */
import { OPCODES } from '@xromdev/cpu6502';
import type { Machine } from './machine.ts';

export const DERIVED = 1 << 30;
const derive = (o: number) => (o > 0 ? o | DERIVED : o < 0 ? -((-o) | DERIVED) : 0);
export const originOffset = (o: number) => (o === 0 ? -1 : (Math.abs(o) & ~DERIVED) - 1);
export const isDerived = (o: number) => (Math.abs(o) & DERIVED) !== 0;

export interface VramWrite {
  frame: number;
  line: number;
  pc: number;
  /** PRG offset of the instruction. */
  pcOffset: number;
  address: number;
  value: number;
  origin: number;
  /** The CPU address the value was read from last (the load that fed it), -1 if none. */
  readFrom: number;
}

const ALU_A = new Set(['ADC', 'SBC', 'AND', 'ORA', 'EOR']);
const RMW = new Set(['ASL', 'LSR', 'ROL', 'ROR', 'INC', 'DEC']);
const ILLEGAL_RMW_A = new Set(['SLO', 'RLA', 'SRE', 'RRA', 'DCP', 'ISC']);

export class Taint {
  a = 0; x = 0; y = 0;
  aFrom = -1; xFrom = -1; yFrom = -1;
  readonly ram = new Int32Array(0x800);
  readonly ramFrom = new Int32Array(0x800).fill(-1);
  readonly vramWrites: VramWrite[] = [];
  logWrites = true;
  /** Only log $2007 writes to these addresses (nametables by default). */
  filter = (address: number) => address >= 0x2000 && address < 0x3000;
  private dataOrigin = 0;
  private dataFrom = -1;
  private wrote = -1;
  private pc = 0;
  private len = 1;

  private readonly m: Machine;

  constructor(m: Machine) {
    this.m = m;
    m.hooks.exec = (pc) => {
      this.pc = pc;
      this.len = OPCODES[m.peek(pc)].length;
      this.dataOrigin = 0;
      this.dataFrom = -1;
      this.wrote = -1;
    };
    m.hooks.read = (address) => {
      if (address >= this.pc && address < this.pc + this.len) return;
      this.dataFrom = address;
      this.dataOrigin = this.originOf(address);
    };
    m.hooks.write = (address, value) => {
      this.wrote = address;
      if (address === 0x2007 && this.logWrites) this.onVram(value);
    };
    m.hooks.step = (pc, opcode) => this.step(pc, opcode);
  }

  originOf(address: number): number {
    if (address < 0x2000) return this.ram[address & 0x7ff];
    if (address >= 0x8000) return this.m.prgOffset(address) + 1;
    return 0;
  }
  private fromOf(address: number): number {
    if (address < 0x2000) return this.ramFrom[address & 0x7ff] >= 0 ? this.ramFrom[address & 0x7ff] : address;
    return address;
  }

  private immediate(pc: number): number {
    const at = (pc + 1) & 0xffff;
    if (at >= 0x8000) return -(this.m.prgOffset(at) + 1);
    return 0;
  }

  private stored(m: string): [number, number] {
    if (m === 'STA') return [this.a, this.aFrom];
    if (m === 'STX') return [this.x, this.xFrom];
    if (m === 'STY') return [this.y, this.yFrom];
    return [0, -1];
  }

  private onVram(value: number) {
    const address = this.m.vramAddress;
    if (!this.filter(address)) return;
    const op = OPCODES[this.m.peek(this.pc)];
    const [origin, from] = op.mnemonic.startsWith('ST') ? this.stored(op.mnemonic) : [derive(this.dataOrigin), this.dataFrom];
    this.vramWrites.push({
      frame: this.m.nes.frame, line: this.m.nes.line, pc: this.pc, pcOffset: this.m.prgOffset(this.pc),
      address, value, origin, readFrom: from,
    });
  }

  private step(pc: number, opcode: number) {
    const op = OPCODES[opcode];
    const m = op.mnemonic;
    const imm = op.mode === 'imm';
    const src = imm ? this.immediate(pc) : this.dataOrigin;
    const from = imm ? -1 : this.dataFrom >= 0 ? this.fromOf(this.dataFrom) : -1;
    const s = this.m.cpu.s;
    if (m === 'LDA') [this.a, this.aFrom] = [src, from];
    else if (m === 'LDX') [this.x, this.xFrom] = [src, from];
    else if (m === 'LDY') [this.y, this.yFrom] = [src, from];
    else if (m === 'LAX') [this.a, this.aFrom, this.x, this.xFrom] = [src, from, src, from];
    else if (m === 'TAX') [this.x, this.xFrom] = [this.a, this.aFrom];
    else if (m === 'TAY') [this.y, this.yFrom] = [this.a, this.aFrom];
    else if (m === 'TXA') [this.a, this.aFrom] = [this.x, this.xFrom];
    else if (m === 'TYA') [this.a, this.aFrom] = [this.y, this.yFrom];
    else if (m === 'TSX') this.x = 0;
    else if (ALU_A.has(m)) this.a = derive(this.a || src);
    else if (m === 'INX' || m === 'DEX') this.x = derive(this.x);
    else if (m === 'INY' || m === 'DEY') this.y = derive(this.y);
    else if (m === 'PHA') { this.ram[0x100 | ((s + 1) & 0xff)] = this.a; this.ramFrom[0x100 | ((s + 1) & 0xff)] = this.aFrom; }
    else if (m === 'PLA') { this.a = this.ram[0x100 | s]; this.aFrom = this.ramFrom[0x100 | s]; }
    else if (m === 'JSR' || m === 'PHP' || m === 'BRK') for (let i = 1; i <= 3; i++) this.ram[0x100 | ((s + i) & 0xff)] = 0;
    if (op.mode === 'acc' && RMW.has(m)) this.a = derive(this.a);
    if (this.wrote >= 0 && this.wrote < 0x2000) {
      const cell = this.wrote & 0x7ff;
      if (m === 'STA' || m === 'STX' || m === 'STY') [this.ram[cell], this.ramFrom[cell]] = this.stored(m);
      else if (m === 'SAX') this.ram[cell] = derive(this.a || this.x);
      else if (RMW.has(m)) this.ram[cell] = derive(this.ram[cell]);
      else if (ILLEGAL_RMW_A.has(m)) { this.ram[cell] = derive(this.ram[cell]); this.a = derive(this.a || this.ram[cell]); }
    }
  }
}
