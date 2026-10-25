"""A TAS's trail per level, from FCEUX (fceux/tas_trail.lua while it played a movie the user has):
out/levels/<out>.json. A line breaks where the player jumps more than 64 px in a frame (a card, a
death, the level's change); points every 2 frames.
python3 src/tas_trail.py <trail.txt> <out name> "<source>"
  J.Y (jy-alien3.fm2, walks through doors):  … fceux/tas_trail.txt tas "TAS by J.Y …"
  Randil (tasvideos 2713M, no wall clip):     … fceux/tas_trail-randil.txt tas-randil "TAS by Randil …"""
import json, sys
src, name, source = sys.argv[1], sys.argv[2], sys.argv[3]
rows = [tuple(map(int, l.split())) for l in open(src)]
levels = {}
prev = None
for f, lv, x, y, left in rows:
    L = levels.setdefault(lv + 1, {'from': f, 'to': f, 'segments': [[]], 'prisonersLeft': left})
    L['to'] = f
    L['prisonersLeft'] = left
    if prev is None or prev[0] != lv or abs(x - prev[1]) > 64 or abs(y - prev[2]) > 64 or (x == 0 and y == 0):
        if L['segments'][-1]:
            L['segments'].append([])
    if not (x == 0 and y == 0) and (f % 2 == 0 or not L['segments'][-1]):
        L['segments'][-1].append([x, y])
    prev = (lv, x, y)
for L in levels.values():
    L['segments'] = [s for s in L['segments'] if len(s) > 1]
    L['frames'] = L['to'] - L['from'] + 1
json.dump({'source': source, 'levels': levels}, open(f'out/levels/{name}.json', 'w'))
for n, L in levels.items():
    print(n, L['frames'], 'frames', len(L['segments']), 'segments', 'prisoners left at the end', L['prisonersLeft'])
