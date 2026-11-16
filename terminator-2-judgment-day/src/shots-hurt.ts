/**
 * Shots that hurt level 1's enemies (STATUS §18, §19). A shot that meets an object marks it,
 * `$04E8,Y` |= 1 (`$9CB8`, the shot's hit test); the hospital's and later enemies take that mark
 * themselves, but the truck stop's and the bar's (`$D1` 6 and 8) only ask `$B8CE` "was I hit?", which
 * looks at bit 6 — the T-800's fist over them (`$A5AB`) — and never at bit 0. There the game has no
 * gun to shoot with.
 *
 * So, on those areas, when an enemy asks `$B8CE` while a shot's mark is on it, the mark is taken off
 * and the routine answers as for a blow: it goes to `$B8F6` (SEC / RTS) with A = 0, the plain blow's
 * value. A plain enemy has its health (`$04E7,X`) put to 0 first, so the blow is its last: it reels
 * and dies (its state 1 handler `$9B30` sends it to state 8 on 0) — one shot, as the later levels'
 * enemies die (by the user's word). The bar's boss (`$0547` $24, health 6) takes a shot as one blow.
 *
 *   shotsHurt(machine) — installs it (the machine's exec hook, any earlier hook still called).
 */
import type { Machine } from './machine.ts';

const ASK = 0x38ce; // PRG offset of $B8CE in bank 1 at $A000
const AREAS = new Set([6, 8]); // the truck stop and the bar ($D1)
/** Level 1's boss: the bar's ($0547 $24, src/experiments/enemy-kinds.ts). */
const BOSSES = new Set([0x24]);

export function shotsHurt(m: Machine, onHit?: (slot: number, boss: boolean) => void) {
  const before = m.hooks.exec;
  m.hooks.exec = (pc) => {
    before?.(pc);
    if (pc !== 0xb8ce || m.prgOffset(pc) !== ASK || !AREAS.has(m.ram[0xd1])) return;
    const x = m.cpu.x;
    if (!(m.ram[0x4e8 + x] & 1)) return;
    m.ram[0x4e8 + x] &= ~1;
    const boss = BOSSES.has(m.ram[0x547 + x]);
    if (!boss) m.ram[0x4e7 + x] = 0;
    m.cpu.a = 0;
    m.cpu.pc = 0xb8f6;
    onHit?.(x, boss);
  };
}
