"""The maps chapter's preview (xrom.dev): src/preview.ts's frames of the run laid over the stage's
map in a window that follows the camera, the way still ahead drawn in purple — an MP4 and its poster.
After ~/alien3-levels' src/preview.py; the window is 346 × 196 (the map's height, Alien 3's 480 × 272
shape).
python3 src/preview.py <stage 1-5> <frames.bin> <step> <out.mp4> <first frame>"""
import json, struct, subprocess, sys
from PIL import Image, ImageDraw

st, src, step, out, first = int(sys.argv[1]), sys.argv[2], int(sys.argv[3]), sys.argv[4], int(sys.argv[5])
H = 196
W = round(H * 480 / 272)
stage = Image.open(f'out/stages/stage{st}.png').convert('RGB')
trail = json.load(open('out/stages/tas.json'))['levels'][str(st)]['segments']
data = open(src, 'rb').read()
size = 2 + 256 * H * 3
frames, vx = [], None
for i in range(len(data) // size):
    (cx,) = struct.unpack_from('<h', data, i * size)
    live = Image.frombytes('RGB', (256, H), data[i * size + 2:(i + 1) * size])
    # The window keeps the camera's field in its middle, easing after it as the page does.
    tx = min(max(cx + 128 - W / 2, 0), stage.width - W)
    vx = tx if vx is None else vx + (tx - vx) * 0.25
    x0 = round(vx)
    im = stage.crop((x0, 0, x0 + W, H))
    im.paste(live, (cx - x0, 0))
    d = ImageDraw.Draw(im)
    f = first + i * step
    for sg in trail:
        pts = [(p[0] - x0, p[1]) for p in sg if p[2] >= f]
        if len(pts) > 1: d.line(pts, fill=(196, 160, 255), width=2)
    d.rectangle((cx - x0, 0, cx - x0 + 255, H - 1), outline=(255, 255, 255))
    frames.append(im)
# H.264, each NES pixel 2 × 2 so the colour subsampling keeps the edges; the poster a quarter in.
enc = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', f'{W * 2}x{H * 2}',
                        '-r', str(60 / step), '-i', '-', '-c:v', 'libx264', '-preset', 'slow', '-crf', '26', '-pix_fmt', 'yuv420p',
                        '-movflags', '+faststart', '-an', out], stdin=subprocess.PIPE)
for im in frames: enc.stdin.write(im.resize((W * 2, H * 2), Image.NEAREST).tobytes())
enc.stdin.close(); enc.wait()
frames[len(frames) // 4].resize((W * 2, H * 2), Image.NEAREST).save(out[:-4] + '.png', optimize=True)
print(len(frames), 'frames →', out, f'{W * 2}x{H * 2}')
