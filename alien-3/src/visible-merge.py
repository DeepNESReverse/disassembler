"""Gather runs/visible/<nn>.json (src/visible.ts --part, one level each) into out/levels/visible.json,
keeping the levels already there that have no part.
python3 src/visible-merge.py"""
import glob, json, os
out = 'out/levels/visible.json'
all_ = json.load(open(out)) if os.path.exists(out) else {}
for f in sorted(glob.glob('runs/visible/*.json')):
    all_.update(json.load(open(f)))
json.dump(all_, open(out, 'w'))
for k in sorted(all_, key=int):
    v = all_[k]
    print(f"level {k}: visible {v['total']} of {v['tiles']} ({100 * v['total'] / v['tiles']:.1f} %), the search added {v['searchOnly']}")
