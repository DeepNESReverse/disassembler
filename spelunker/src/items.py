"""The cave's items for the maps' page (STATUS §6): out/cave/items.json.

The object table is the cartridge's: 251 entries of 8 bytes at $AE46 (PRG $2E46) up to the end mark at
$B61E (y 2400, x $FFFF) — world y (2 bytes), world x (2), width, height, a parameter, the type; the
game keeps per entry a flag at $0500 + index ($96EE). An object's sprite stands at its world x, y less
the camera (`runs/objects.ts`, `runs/looks.json`).

The items are the types whose flag the run takes from 255 to 0 when the spelunker picks them up —
0-7 (and only those: the flags of other types never go to 0 that way) — and type $0F, drawn behind
the background, which the run never takes. Each type's look is read off the run: the sprites at the
same place from every object of the type where it is first on screen (in at least 60 % of them);
type 6 flickers between three poses, the commonest is kept ($C7 over $CA).

  python3 src/items.py
"""
import collections, gzip, json, struct, os

ROM = os.path.expanduser('~/spelunker-tas/Spelunker (Japan).nes')
TABLE, END = 0xAE46, 0xB61E
ITEMS = {0, 1, 2, 3, 4, 5, 6, 7, 0x0F}

prg = open(ROM, 'rb').read()[16:16 + 0x8000]
objs = []
for a in range(TABLE, END, 8):
    e = prg[a - 0x8000:a - 0x7FF8]
    objs.append(dict(i=len(objs), y=e[0] | e[1] << 8, x=e[2] | e[3] << 8, type=e[7]))


def frames(path='out/cave/take.bin.gz'):
    d = gzip.open(path).read()
    n = struct.unpack('<I', d[4:8])[0]
    s = bytearray(struct.unpack('<H', d[8:10])[0])
    o = 10
    for f in range(n):
        c = struct.unpack('<H', d[o:o + 2])[0]; o += 2
        for _ in range(c):
            s[struct.unpack('<H', d[o:o + 2])[0]] = d[o + 2]; o += 3
        o += 2 + 2 * struct.unpack('<H', d[o:o + 2])[0]
        yield f, s


first = {}
palette = sprites = None
for f, s in frames():
    if f == 600:  # the cave's sprite colours and the pattern table its sprites come from
        palette, sprites = list(s[272 + 16:272 + 32]), 0x1000 if s[5] & 0x08 else 0
    if not s[4]:
        continue
    cx, cy = s[0] | s[1] << 8, s[2] | s[3] << 8
    for o in objs:
        if o['type'] not in ITEMS or o['i'] in first or s[2352 + o['i']] == 0:
            continue
        ox, oy = o['x'] - cx, o['y'] - cy
        if not (16 <= ox < 232 and 48 <= oy < 216):
            continue
        first[o['i']] = {(s[16 + k * 4 + 3] - ox, s[16 + k * 4] + 1 - oy, s[16 + k * 4 + 1], s[16 + k * 4 + 2] & 0xE3)
                         for k in range(64) if s[16 + k * 4] < 0xEF
                         and -8 <= s[16 + k * 4 + 3] - ox < 16 and -16 <= s[16 + k * 4] + 1 - oy < 16}
looks = {}
for t in ITEMS:
    seen = [first[o['i']] for o in objs if o['type'] == t and o['i'] in first]
    count = collections.Counter(x for sp in seen for x in sp)
    looks[t] = sorted(k for k, n in count.items() if n >= 0.6 * len(seen))
looks[6] = [(0, -8, 0xC7, 3), (0, 0, 0xCA, 3)]
items = [dict(i=o['i'], type=o['type'], x=o['x'], y=o['y']) for o in objs if o['type'] in ITEMS]
json.dump(dict(palette=palette, spriteTable=sprites, looks={str(t): v for t, v in looks.items()}, items=items), open('out/cave/items.json', 'w'))
print(len(items), 'items;', {hex(t): len(v) for t, v in looks.items()}, 'sprites a look; never seen in the run:',
      [o['i'] for o in objs if o['type'] in ITEMS and o['i'] not in first])

# The cave with every item where the game keeps it (none taken): out/cave/cave-items.png, the
# picture the site's page shows under the player (levels.json).
from PIL import Image
rgb = json.loads(__import__('subprocess').check_output(['node', '--experimental-strip-types', '--no-warnings', '--input-type=module', '-e',
    "import { NES_RGB } from './libs/nes/src/palette.ts'; console.log(JSON.stringify(NES_RGB))"]))
chr_ = open(ROM, 'rb').read()[16 + 0x8000:16 + 0xA000]
cave = Image.open('out/cave/cave.png').convert('RGB')
for it in items:
    for dx, dy, tile, attr in looks[it['type']]:
        base = sprites + tile * 16
        for r in range(8):
            rr = 7 - r if attr & 0x80 else r
            for j in range(8):
                bit = j if attr & 0x40 else 7 - j
                v = ((chr_[base + rr] >> bit) & 1) | (((chr_[base + rr + 8] >> bit) & 1) << 1)
                x, y = it['x'] + dx + j, it['y'] + dy + r
                if v and 0 <= x < cave.width and 0 <= y < cave.height:
                    c = rgb[palette[(attr & 3) * 4 + v] & 0x3F]
                    cave.putpixel((x, y), (c >> 16 & 255, c >> 8 & 255, c & 255))
cave.save('out/cave/cave-items.png', optimize=True)
print('out/cave/cave-items.png')
