"""Where our level 1 map lies in vgmaps' picture (the user's download, lossy WebP, another
emulator's palette): normalised cross-correlation of luminance, for windows taken where Randil's run
showed the level (out/levels/run-seen.json) — one per page — over a range of offsets.
python3 src/experiments/vgmaps-align.py"""
import json
import numpy as np
from PIL import Image
lum = lambda p: np.asarray(Image.open(p).convert('L')).astype(np.float32)
ours, theirs = lum('out/levels/01.png'), lum('runs/vgmaps/l1.png')
H, W = theirs.shape
seen = json.load(open('out/levels/run-seen.json'))['1']
mask = np.zeros((seen['h'], seen['w']), bool)
for ty, row in enumerate(seen['rows']):
    x, s = 0, False
    for k in map(int, row.split(',')):
        if s: mask[ty, x:x + k] = True
        x += k; s = not s
def ncc(a, b):
    a = a - a.mean(); b = b - b.mean()
    d = np.sqrt((a * a).sum() * (b * b).sum())
    return (a * b).sum() / d if d else 0
for p in range(8):
    # A 96 × 192 window of this page wholly inside what the run showed, with the most detail.
    best = None
    for oy in range(p * 240, p * 240 + 240 - 96, 8):
        for ox in range(0, 2048 - 192, 16):
            if not mask[oy // 8:(oy + 96) // 8, ox // 8:(ox + 192) // 8].all(): continue
            v = ours[oy:oy + 96, ox:ox + 192].std()
            if best is None or v > best[0]: best = (v, ox, oy)
    if not best: print(f'page {p}: no window the run showed'); continue
    _, ox, oy = best
    win = ours[oy:oy + 96, ox:ox + 192]
    res = []
    for dx in range(0, 360, 2):
        for dy in range(-560, 160, 2):
            y, x = oy + dy, ox + dx
            if y < 0 or x < 0 or y + 96 > H or x + 192 > W: continue
            res.append((ncc(win[::2, ::2], theirs[y:y + 96:2, x:x + 192:2]), dx, dy))
    res.sort(reverse=True)
    top = res[0]
    fine = max((ncc(win, theirs[oy + dy:oy + dy + 96, ox + dx:ox + dx + 192]), dx, dy)
               for dx in range(top[1] - 2, top[1] + 3) for dy in range(top[2] - 2, top[2] + 3)
               if 0 <= oy + dy and oy + dy + 96 <= H and 0 <= ox + dx and ox + dx + 192 <= W)
    second = next(r for r in res if abs(r[1] - top[1]) > 8 or abs(r[2] - top[2]) > 8)
    print(f'page {p} (window {ox},{oy}): dx {fine[1]} dy {fine[2]} ncc {fine[0]:.3f}; next-best elsewhere {second[0]:.3f} at {second[1]},{second[2]}')
