/**
 * Where the game starts a sound (STATUS §4): every `LDA #lo / STA $D4+c / LDA #hi / STA $D8+c` in
 * the PRG — the driver's stream pointer of channel c set to an immediate address. Starts back to back
 * (8 bytes apart) are one site; a site that starts two or more channels is a song, one channel an effect.
 * Returns the PC of each `STA $D4+c` → { music, start, channel }.
 */
export interface Start { music: boolean; start: number; channel: number }
export function soundSites(prg: Uint8Array): Map<number, Start> {
  const found: { pc: number; start: number; channel: number }[] = [];
  for (let i = 0; i + 8 <= prg.length; i++) {
    if (prg[i] !== 0xa9 || prg[i + 2] !== 0x85 || prg[i + 4] !== 0xa9 || prg[i + 6] !== 0x85) continue;
    const c = prg[i + 3] - 0xd4;
    if (c < 0 || c > 3 || prg[i + 7] !== 0xd8 + c) continue;
    found.push({ pc: 0x8000 + i + 2, start: prg[i + 1] | (prg[i + 5] << 8), channel: c });
  }
  const out = new Map<number, Start>();
  for (let k = 0; k < found.length; ) {
    let j = k + 1;
    while (j < found.length && found[j].pc - found[j - 1].pc === 8) j++;
    const music = j - k >= 2;
    for (let m = k; m < j; m++) out.set(found[m].pc, { music, start: found[m].start, channel: found[m].channel });
    k = j;
  }
  return out;
}
