#!/usr/bin/env python3
"""The card's moving picture on xrom.dev: areas 14, 5, 1 and 2, joined as they lie in the big map, scrolling.

    python3 src/preview.py <art dir>   # writes maps.mp4 and maps.png, the card's size (896 x 508)
"""
import os, subprocess, sys, tempfile
from PIL import Image

art = sys.argv[1]
H = 2080
# Left edges in the joined picture. Area 14 overlaps area 5 by eight tile columns.
PLACED = [(5, 192), (14, 0), (1, 448), (2, 704)]
joined = Image.new('RGB', (960, H))
for n, x in PLACED:
    joined.paste(Image.open(f'out/areas/{n:02d}.png').convert('RGB').crop((0, 0, 256, H)), (x, 0))
with tempfile.TemporaryDirectory() as t:
    source = os.path.join(t, 'joined.png')
    joined.save(source)
    crop = "crop=896:508:32:'1460-60*t',format=yuv420p"
    run = ['ffmpeg', '-y', '-loglevel', 'error', '-loop', '1', '-framerate', '30', '-i', source]
    subprocess.run([*run, '-t', '15', '-vf', crop, '-c:v', 'libx264', '-crf', '20', '-preset', 'slow',
                    '-movflags', '+faststart', os.path.join(art, 'maps.mp4')], check=True)
    subprocess.run([*run, '-frames:v', '1', '-vf', "crop=896:508:32:1460", os.path.join(art, 'maps.png')], check=True)
