"""The maps chapter's preview (xrom.dev): src/preview.ts's frames of the run laid over the level's map
in a window that follows the camera, the way still ahead drawn in purple — a looping WebP.
python3 src/preview.py <level 1-12> <frames.bin> <step> <out.mp4|out.webp> <width> <height> <first frame>"""
import json, struct, sys
from PIL import Image, ImageDraw

lv, src, step, out = int(sys.argv[1]), sys.argv[2], int(sys.argv[3]), sys.argv[4]
W, H = (int(sys.argv[5]), int(sys.argv[6])) if len(sys.argv) > 6 else (480, 272)
level = Image.open(f'out/levels/{lv:02d}.png').convert('RGB')
trail = json.load(open('out/levels/tas-randil.json'))['levels'][str(lv)]['segments']
data = open(src, 'rb').read()
size = 4 + 256 * 176 * 3
first = None
frames, vx, vy = [], None, None
for i in range(len(data) // size):
    cx, cy = struct.unpack_from('<hh', data, i * size)
    live = Image.frombytes('RGB', (256, 176), data[i * size + 4:(i + 1) * size])
    # The window keeps the camera's field in its middle, easing after it as the viewer does.
    tx = min(max(cx + 128 - W / 2, 0), level.width - W)
    ty = min(max(cy + 88 - H / 2, 0), level.height - H)
    vx, vy = (tx, ty) if vx is None else (vx + (tx - vx) * 0.25, vy + (ty - vy) * 0.25)
    x0, y0 = round(vx), round(vy)
    im = level.crop((x0, y0, x0 + W, y0 + H))
    im.paste(live, (cx - x0, cy - y0))
    d = ImageDraw.Draw(im)
    # The take's frame numbers: the trail's third field; this frame is `first + i * step`.
    f = int(sys.argv[7]) + i * step if len(sys.argv) > 7 else None
    for sg in trail:
        pts = [(p[0] - x0, p[1] - y0) for p in sg if f is None or p[2] - 1 >= f]
        if len(pts) > 1: d.line(pts, fill=(196, 160, 255), width=2)
    d.rectangle((cx - x0, cy - y0, cx - x0 + 255, cy - y0 + 175), outline=(255, 255, 255))
    frames.append(im)
# An MP4 (H.264, each NES pixel 2 × 2 so the colour subsampling keeps the edges) and its first
# frame a quarter in as the poster; a WebP for anything else.
if out.endswith('.mp4'):
    import subprocess
    enc = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', f'{W * 2}x{H * 2}',
                            '-r', str(60 / step), '-i', '-', '-c:v', 'libx264', '-preset', 'slow', '-crf', '26', '-pix_fmt', 'yuv420p',
                            '-movflags', '+faststart', '-an', out], stdin=subprocess.PIPE)
    for im in frames: enc.stdin.write(im.resize((W * 2, H * 2), Image.NEAREST).tobytes())
    enc.stdin.close(); enc.wait()
    frames[len(frames) // 4].resize((W * 2, H * 2), Image.NEAREST).save(out[:-4] + '.png', optimize=True)
else:
    frames[0].save(out, save_all=True, append_images=frames[1:], duration=1000 * step // 60, loop=0, quality=82, method=6)
print(len(frames), 'frames →', out)
