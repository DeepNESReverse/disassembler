"""The TAS's trail per level, from FCEUX (fceux/tas_trail.lua while it played the user's movie, J.Y's
jy-alien3.fm2): out/levels/tas.json. A line breaks where the player jumps more than 64 px in a frame
(a card, a death, the level's change); points every 2 frames.
python3 src/tas_trail.py"""
import json
rows = [tuple(map(int, l.split())) for l in open('fceux/tas_trail.txt')]
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
json.dump({'source': "TAS by J.Y (jy-alien3.fm2), played in the user's FCEUX; positions from RAM $0420-$0480",
           'levels': levels}, open('out/levels/tas.json', 'w'))
for n, L in levels.items():
    print(n, L['frames'], 'frames', len(L['segments']), 'segments', 'prisoners left at the end', L['prisonersLeft'])
