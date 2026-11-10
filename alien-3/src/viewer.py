"""out/levels/index.html: the maps page — the shared one (src/maps-run), mounted by src/take-player.js — with its data inline.
python3 src/viewer.py
python3 src/viewer.py --public <dir>   the page for xrom.dev (src/public.ts): no address space, no
                                       checkmarks, the run player bundled and fed without the ROM"""
import json, os, sys
D = 'out/levels'
PUBLIC = sys.argv[sys.argv.index('--public') + 1] if '--public' in sys.argv else None
checks = {}
for n in range(1, 13):
    for kind in ('noclip', 'check'):
        f = f'{D}/{n:02d}-{kind}.json'
        if os.path.exists(f):
            s = json.load(open(f))
            s['image'] = f'{n:02d}-{kind}.png'
            s['kind'] = 'no-clip over the whole layout' if kind == 'noclip' else 'play + teleports'
            checks[n] = s
            break
spaces = {}
for n in range(1, 13):
    f = f'{D}/{n:02d}-space.json'
    if os.path.exists(f):
        spaces[n] = json.load(open(f))
objects = json.load(open(f'{D}/objects.json')) if os.path.exists(f'{D}/objects.json') else {}
prisoners = {n: [o for o in objs if o['type'] == 6] for n, objs in objects.items()}
sprites = json.load(open(f'{D}/prisoners.json')) if os.path.exists(f'{D}/prisoners.json') else {}
# The order Randil's run rescues them in (src/rescue-order.ts): a prisoner's number on the map.
order = json.load(open(f'{D}/rescue-order.json')) if os.path.exists(f'{D}/rescue-order.json') else {}
for n, objs in prisoners.items():
    seq = order.get(n, [])
    for k, o in enumerate(objs):
        o['num'] = seq.index(o['i']) + 1 if o['i'] in seq else len(seq) + k + 1
# The level list: boss levels named, the checked ones ticked (the workshop's only).
level_list = [{'n': n, 'label': f'Level {n}{" — boss" if n % 3 == 0 else ""}{"" if PUBLIC or n not in checks else " ✓"}'} for n in range(1, 13)]
# The page is the shared maps page (src/maps-run → ~/xrom-libs/maps-run), mounted by src/take-player.js
# with Alien 3's run and layers; here only the data it needs. The public page reads no ROM (CART_PACK)
# and has no address space.
a3 = {
    'levels': level_list,
    'spaces': {} if PUBLIC else {k: {kk: v[kk] for kk in ('layout', 'chunks', 'chunkHeight', 'regions')} for k, v in spaces.items()},
    'prisoners': prisoners,
    'sprites': sprites,
    'public': bool(PUBLIC),
}
script = ('<script>window.CART_PACK=\'cart.bin.gz\'</script><script type="module" src="take-player.js"></script>' if PUBLIC
          else '<script type="module" src="/src/take-player.js"></script>')
page = f'''<!doctype html><html lang="en"><head><meta charset="utf-8"><title>Alien 3 — levels</title></head><body>
<script>window.A3={json.dumps(a3)}</script>{script}</body></html>'''
if PUBLIC:
    assert 'address space' not in page and 'take-player.js"' in page
    open(f'{PUBLIC}/index.html', 'w').write(page)
else:
    open(f'{D}/index.html', 'w').write(page)
print('ok', sorted(checks), 'spaces', sorted(spaces))
