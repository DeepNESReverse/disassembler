import sys
lo,hi=int(sys.argv[1]),int(sys.argv[2])
ram=[0]*0x800; rows=[]
for line in open('fceux/movie_capture.play.txt'):
    if line.startswith('f '): f=int(line.split()[1])
    elif line.startswith('r '):
        b=line[2:].strip()
        for i in range(0,len(b)-5,6): ram[int(b[i:i+4],16)]=int(b[i+4:i+6],16)
    elif line.startswith('m ') and lo<=f<=hi:
        b=line[2:].strip(); w=[(int(b[i:i+4],16),int(b[i+4:i+6],16)) for i in range(0,len(b)-5,6)]
        # the first $2005 pair of the frame (top of the screen) and the $2000 before it
        ctrl=None; sx=None; sy=None; t=0
        for a,v in w:
            if a==0x2000 and sx is None: ctrl=v
            if a==0x2005:
                if t==0: sx=v if sx is None else sx; t=1
                else: sy=v if sy is None else sy; t=0
        if sx is not None: rows.append((f,ctrl,sx,sy,list(ram)))
print(len(rows),'frames; sample', [(f,c,x,y) for f,c,x,y,_ in rows[:3]])
X=[ ((c or 0)&1)*256+x for f,c,x,y,_ in rows]
for a in range(0x800):
    if all(r[4][a]==r[2] for r in rows[1:]): print('x low = RAM', hex(a))
    if all(r[4][a]==r[3] for r in rows[1:]): print('y = RAM', hex(a))
# a 16-bit camera: lo byte matches sx, how about a+1 hi
