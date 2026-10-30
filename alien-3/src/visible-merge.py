"""Gather runs/visible/<nn>.json (src/visible.ts --part, one level each) into out/levels/visible.json,
keeping the levels already there that have no part; then add what the camera showed while the user
played in the browser player (runs/play-seen.jsonl, src/play/client.ts: [level, camera X, camera Y]
triples) to each level's search rows — the tiles of every 256 x 176 field not in the run already.
python3 src/visible-merge.py"""
import glob, json, math, os, re
out = 'out/levels/visible.json'
all_ = json.load(open(out)) if os.path.exists(out) else {}
for f in sorted(glob.glob('runs/visible/*.json')):
    if re.fullmatch(r'\d\d\.json', os.path.basename(f)):
        all_.update(json.load(open(f)))

def decode(rows, W, H):
    a = bytearray(W * H)
    for ty, row in enumerate(rows):
        x, on = 0, False
        for k in map(int, row.split(',')):
            if on: a[ty * W + x:ty * W + x + k] = b'\1' * k
            x += k; on = not on
    return a

def encode(a, W, H):
    rows = []
    for ty in range(H):
        runs, v, k = [], 0, 0
        for tx in range(W):
            c = a[ty * W + tx]
            if c == v: k += 1
            else: runs.append(k); v = c; k = 1
        runs.append(k); rows.append(','.join(map(str, runs)))
    return rows

cams = {}
if os.path.exists('runs/play-seen.jsonl'):
    for line in open('runs/play-seen.jsonl'):
        for lv, cx, cy in json.loads(line):
            cams.setdefault(str(lv), set()).add((cx, cy))
for k, seen in cams.items():
    v = all_.get(k)
    if not v: continue
    W, H = v['w'], v['h']
    run, search = decode(v['run'], W, H), decode(v['search'], W, H)
    played = 0
    for cx, cy in seen:
        x0, y0 = math.floor(cx / 8), math.floor(cy / 8)
        x1, y1 = math.ceil((cx + 256) / 8), math.ceil((cy + 176) / 8)
        for ty in range(max(0, y0), min(H, y1)):
            for tx in range(max(0, x0), min(W, x1)):
                i = ty * W + tx
                if not run[i] and not search[i]: search[i] = 1; played += 1
    v['search'] = encode(search, W, H)
    v['searchOnly'] += played
    v['total'] += played
    v['played'] = v.get('played', 0) + played
json.dump(all_, open(out, 'w'))
for k in sorted(all_, key=int):
    v = all_[k]
    extra = f", played by hand {v['played']}" if v.get('played') else ''
    print(f"level {k}: visible {v['total']} of {v['tiles']} ({100 * v['total'] / v['tiles']:.1f} %), the search added {v['searchOnly']}{extra}")
