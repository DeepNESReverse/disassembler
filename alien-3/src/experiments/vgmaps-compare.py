"""Our level 1 map against vgmaps' (the user's download), placed at (+241, +15) — every page of the
map lands there (vgmaps-align.py). Per 8 × 8 tile of ours: what their picture has there.
  match   — the same picture (their luminance, mapped to ours by a straight line fitted where both
            are lit, within 18 of ours on average)
  absent  — they show black where we have something (not on their stitched screenshots)
  differ  — both lit, not the same picture
  extra   — they have something where ours is black
Also against the run's view (run-seen.json) and the camera's rule. Writes runs/vgmaps/compare-01.png
(ours dimmed; green match, red differ, blue extra; absent left dim) and prints the counts.
python3 src/experiments/vgmaps-compare.py"""
import json
import numpy as np
from PIL import Image
DX, DY = 241, 15
ours_rgb = np.asarray(Image.open('out/levels/01.png').convert('RGB'))
ours = np.asarray(Image.open('out/levels/01.png').convert('L')).astype(np.float32)
th = np.asarray(Image.open('runs/vgmaps/l1.png').convert('L')).astype(np.float32)
H, W = ours.shape
theirs = np.zeros_like(ours)
h2, w2 = min(H, th.shape[0] - DY), min(W, th.shape[1] - DX)
theirs[:h2, :w2] = th[DY:DY + h2, DX:DX + w2]
lit_o, lit_t = ours > 12, theirs > 12
both = lit_o & lit_t
a, b = np.polyfit(theirs[both][::7], ours[both][::7], 1)
mapped = a * theirs + b
seen = json.load(open('out/levels/run-seen.json'))['1']
run = np.zeros((H // 8, W // 8), bool)
for ty, row in enumerate(seen['rows']):
    x, s = 0, False
    for k in map(int, row.split(',')):
        if s: run[ty, x:x + k] = True
        x += k; s = not s
cnt = {}
out = (ours_rgb * 0.35).astype(np.uint8)
for ty in range(H // 8):
    for tx in range(W // 8):
        sl = (slice(ty * 8, ty * 8 + 8), slice(tx * 8, tx * 8 + 8))
        o_lit, t_lit = lit_o[sl].mean() > 0.15, lit_t[sl].mean() > 0.15
        if not o_lit and not t_lit: continue
        if o_lit and not t_lit: k = 'absent'
        elif t_lit and not o_lit: k = 'extra'
        else: k = 'match' if np.abs(mapped[sl] - ours[sl]).mean() < 18 else 'differ'
        key = (k, 'run' if run[ty, tx] else 'not run')
        cnt[key] = cnt.get(key, 0) + 1
        col = {'match': (40, 200, 90), 'differ': (230, 50, 50), 'extra': (60, 120, 255)}.get(k)
        if col: out[sl] = (out[sl] * 0.4 + np.array(col) * 0.6).astype(np.uint8)
Image.fromarray(out).save('runs/vgmaps/compare-01.png')
print(f'luminance fit: ours = {a:.2f} · theirs + {b:.1f}')
for k in ['match', 'differ', 'absent', 'extra']:
    print(f'{k:7s} in the run\'s view {cnt.get((k, "run"), 0):6d}   outside it {cnt.get((k, "not run"), 0):6d}')
