"""Contact sheet of PNG frames: python3 src/montage.py out.png cols f1.png f2.png ..."""
import sys
from PIL import Image, ImageDraw
out, cols, files = sys.argv[1], int(sys.argv[2]), sys.argv[3:]
ims = [Image.open(f).convert('RGB') for f in files]
w, h = ims[0].size
rows = (len(ims) + cols - 1) // cols
sheet = Image.new('RGB', (cols * w, rows * (h + 10)), 'black')
d = ImageDraw.Draw(sheet)
for i, (f, im) in enumerate(zip(files, ims)):
    x, y = i % cols * w, i // cols * (h + 10)
    sheet.paste(im, (x, y + 10))
    d.text((x + 2, y), f.split('/')[-1], fill='yellow')
sheet.save(out)
