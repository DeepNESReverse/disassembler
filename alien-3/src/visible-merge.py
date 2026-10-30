"""Gather runs/visible/<nn>.json (src/visible.ts --part, one level each) into out/levels/visible.json,
keeping the levels already there that have no part; then add what the camera showed while the user
played in the browser player (runs/play-seen.jsonl, src/play/client.ts: [level, camera X, camera Y]
triples) to each level's search rows — the tiles of every 256 x 176 field not in the run already;
then the places the user says are reached (data/user-reachable.json).
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
# Places the user says a player reaches (data/user-reachable.json): from a point, every tile drawn
# on the map (out/levels/<nn>.png, not black) joined to it through such tiles inside `box`
# ([x0, y0, x1, y1]); for each of them left of xMax the camera's field (256 x 176) centred on it is
# added, as the camera shows it around the player. `all`: the whole level seen.
from PIL import Image
for spot in json.load(open('data/user-reachable.json')) if os.path.exists('data/user-reachable.json') else []:
    k = str(spot['level']); v = all_.get(k)
    if not v: continue
    W, H = v['w'], v['h']
    if spot.get('all'):
        # The whole level, on the user's word: every tile not seen yet goes to the search's rows.
        run, search = decode(v['run'], W, H), decode(v['search'], W, H)
        added = sum(1 for i in range(W * H) if not run[i] and not search[i])
        v['search'] = encode(bytes(0 if run[i] else 1 for i in range(W * H)), W, H)
        v['searchOnly'] += added; v['total'] += added
        v['userSaid'] = v.get('userSaid', 0) + added
        print(f"level {k}: the user's word ({spot['said'][:10]}): the whole level, {added} tiles more seen")
        continue
    im = Image.open(f"out/levels/{int(k):02d}.png").convert('RGB'); px = im.load()
    drawn = bytearray(W * H)
    for ty in range(H):
        for tx in range(W):
            if any(px[x, y] != (0, 0, 0) for y in range(ty * 8, ty * 8 + 8, 2) for x in range(tx * 8, tx * 8 + 8, 2)): drawn[ty * W + tx] = 1
    xm = spot['xMax'] // 8
    bx0, by0, bx1, by1 = (c // 8 for c in spot.get('box', [0, 0, W * 8, H * 8]))
    start = (spot['from'][1] // 8) * W + spot['from'][0] // 8
    reach, todo = {start}, [start]
    while todo:
        i = todo.pop(); x, y = i % W, i // W
        for dx, dy in ((1, 0), (-1, 0), (0, 1), (0, -1)):
            nx, ny = x + dx, y + dy
            j = ny * W + nx
            if bx0 <= nx < bx1 and by0 <= ny < by1 and drawn[j] and j not in reach: reach.add(j); todo.append(j)
    run, search = decode(v['run'], W, H), decode(v['search'], W, H)
    added = 0
    reach = {i for i in reach if i % W < xm}
    for i in reach:
        cx, cy = (i % W) * 8 + 4 - 128, (i // W) * 8 + 4 - 88
        cx, cy = max(0, min(W * 8 - 256, cx)), max(0, min(H * 8 - 176, cy))
        for ty in range(cy // 8, math.ceil((cy + 176) / 8)):
            for tx in range(cx // 8, math.ceil((cx + 256) / 8)):
                j = ty * W + tx
                if not run[j] and not search[j]: search[j] = 1; added += 1
    v['search'] = encode(search, W, H)
    v['searchOnly'] += added; v['total'] += added
    v['userSaid'] = v.get('userSaid', 0) + added
    print(f"level {k}: the user's word ({spot['said'][:10]}): {len(reach)} tiles of the way, {added} tiles more seen")
json.dump(all_, open(out, 'w'))
for k in sorted(all_, key=int):
    v = all_[k]
    extra = (f", played by hand {v['played']}" if v.get('played') else '') + (f", by the user's word {v['userSaid']}" if v.get('userSaid') else '')
    print(f"level {k}: visible {v['total']} of {v['tiles']} ({100 * v['total'] / v['tiles']:.1f} %), the search added {v['searchOnly']}{extra}")
