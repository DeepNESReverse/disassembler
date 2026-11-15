changes={}
for line in open('fceux/movie_capture.play.txt'):
    if line.startswith('f '): f=int(line.split()[1])
    elif line.startswith('r ') and f>900:
        b=line[2:].strip()
        for i in range(0,len(b)-5,6):
            changes.setdefault(int(b[i:i+4],16),[]).append((f,int(b[i+4:i+6],16)))
for a,ch in sorted(changes.items()):
    vals=[v for _,v in ch]
    ups=sum(1 for x,y in zip(vals,vals[1:]) if y>x)
    if 3<=len(set(vals)) and len(ch)<=60 and ups>=len(ch)*0.6:
        print(hex(a), len(ch), ' '.join(f'{f}:{v:x}' for f,v in ch[:40]))
