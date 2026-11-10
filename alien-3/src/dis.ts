/** Disassemble PRG bytes: node --experimental-strip-types src/dis.ts <prg offset hex> <cpu address hex> <count> */
import { readFileSync } from 'node:fs';
import { disassemble } from '@xromdev/cpu6502';
import { parseRom } from '../libs/nes/src/nes.ts';
import { ROM_PATH } from './rom.ts';
const [off, cpu, n] = process.argv.slice(2);
const prg = parseRom(new Uint8Array(readFileSync(ROM_PATH))).prg;
const o = parseInt(off, 16);
console.log(disassemble(prg.subarray(o, o + Number(n ?? 128)), parseInt(cpu, 16)).join('\n'));
