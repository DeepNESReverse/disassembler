/**
 * The objects an area places (STATUS §15), read the way the spawner `$9149`-`$929E` reads them (bank
 * 6 at $8000, PRG $C000): per area `$D1`, the list's address (lo at $8000 + `$D1`, hi at $8009 +
 * `$D1`), how many entries it looks at a frame ($8012 + `$D1`: the list is walked a few entries a
 * frame, `$E0` going on from where it stopped) and a handler ($801B/$8024 + `$D1`, via `$079A`). The
 * list ends at an entry whose X is $FFFF (`$9190`-`$9197`).
 * An entry is 7 bytes: a flags byte (-> `$04C8,X`; bits 4-6 checked against `$F7`), X and Y words
 * (-> `$0427,X`/`$0428,X` and `$0447,X`/`$0448,X`, the object's place in the area's coordinates,
 * the player's own cells being slot 0) and the address of the object's kind (its first four bytes
 * -> `$04C7,X`, `$0547,X`, `$04A7,X`, `$0027,X`).
 *   objectsOf(area $D1) → entries;  node --experimental-strip-types --no-warnings src/objects.ts [$D1 …]
 */
import { prg } from './level.ts';

export interface Placed {
  /** The entry's PRG offset. */
  at: number;
  flags: number;
  x: number;
  y: number;
  /** The CPU address of its kind, and the kind's first four bytes. */
  kind: number;
  kindBytes: number[];
}

const TABLE = 0xc000;
const cpu = (a: number) => TABLE + (a - 0x8000);
const word = (o: number) => prg[o] | (prg[o + 1] << 8);

export function objectsOf(d1: number): Placed[] {
  const list = prg[TABLE + d1] | (prg[TABLE + 9 + d1] << 8);
  const out: Placed[] = [];
  for (let o = cpu(list); out.length < 1000; o += 7) {
    if (word(o + 1) === 0xffff) break;
    const kind = word(o + 5);
    out.push({ at: o, flags: prg[o], x: word(o + 1), y: word(o + 3), kind, kindBytes: [...prg.subarray(cpu(kind), cpu(kind) + 4)] });
  }
  return out;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const areas = process.argv.slice(2).map(Number);
  for (const d1 of areas.length ? areas : [0, 1, 2, 3, 4, 5, 6, 7, 8]) {
    const list = objectsOf(d1);
    const byKind = new Map<number, Placed[]>();
    for (const p of list) byKind.set(p.kind, [...(byKind.get(p.kind) ?? []), p]);
    console.log(`$D1 ${d1}: ${list.length} objects, list at PRG ${list[0]?.at.toString(16)}, handler $${(prg[TABLE + 0x1b + d1] | (prg[TABLE + 0x24 + d1] << 8)).toString(16)}`);
    for (const [k, ps] of [...byKind].sort((p, q) => q[1].length - p[1].length)) {
      console.log(`   kind $${k.toString(16)} [${ps[0].kindBytes.map((b) => b.toString(16)).join(' ')}] ×${ps.length}: ${ps.slice(0, 14).map((p) => `${p.x},${p.y}${p.flags ? `/${p.flags.toString(16)}` : ''}`).join(' ')}`);
    }
  }
}
