#!/usr/bin/env python3
"""The card's moving picture on xrom.dev: the start of the flight scrolling by, four times its size.

    python3 src/preview.py <art dir>   # writes maps.mp4 and maps.png, the card's size (896 x 508)
"""
import os, subprocess, sys

art = sys.argv[1]
MAP = 'out/areas/whole.png'
WINDOW = 'crop=224:127:16:{y},scale=896:508:flags=neighbor'
run = ['ffmpeg', '-y', '-loglevel', 'error', '-loop', '1', '-framerate', '30', '-i', MAP]
subprocess.run([*run, '-t', '15', '-vf', WINDOW.format(y="'32220-60*t'") + ',format=yuv420p', '-c:v', 'libx264',
                '-crf', '20', '-preset', 'slow', '-movflags', '+faststart', os.path.join(art, 'maps.mp4')], check=True)
subprocess.run([*run, '-frames:v', '1', '-vf', WINDOW.format(y='32220'), os.path.join(art, 'maps.png')], check=True)
