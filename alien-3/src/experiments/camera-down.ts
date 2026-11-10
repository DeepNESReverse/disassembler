/**
 * The user's case in the player: level 3, no-clip, camera X 1133, Y 0, player at (1257, 168) held
 * there — the camera does not go down. Reproduce: lead the camera to X 1133 (as the player did),
 * (or another X: argv[3]), then hold the player at camera + (124, argv[2]) and watch the camera and the follow code's state:
 * $2D (axis: 0 X, 1 Y), $2E (axis change asked), $2A/$27 (scroll X), $2B, $7C/$7D (player on screen).
 */
import { cardState } from '../teleport.ts';
import { lead, noclip } from '../noclip.ts';

const { m } = cardState(2);
let cur: [number, number] | null = null;
const put = noclip(m, () => cur);
m.nes.beforeVblank = put;
m.frames(1180 - 900);
const r = m.ram;
const cam = () => [((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16];
const startX = Number(process.argv[3] ?? 1133);
for (let f = 0; f < 3000 && Math.abs(cam()[0] - startX) > 1; f++) { cur = lead(m, [startX, 0]); m.frame(0); }
const dy = Number(process.argv[2] ?? 168);
for (let f = 0; f < 240; f++) {
  const [cx, cy] = cam();
  cur = [cx + 124, cy + dy];
  m.frame(0);
  if (f % 20 === 0) console.log(`f${f} cam ${cam()} player ${r[0x420] | (r[0x440] << 8)},${r[0x460] | (r[0x480] << 8)} $2D=${r[0x2d]} $2E=${r[0x2e]} $2A=${r[0x2a]} $27&1=${r[0x27] & 1} $2B=${r[0x2b]} $7C=${r[0x7c]} $7D=${r[0x7d]} $29=${r[0x29]} $2C=${r[0x2c]}`);
}
