"""out/levels/index.html: every level's picture and its check (no-clip run preferred), numbers inline.
python3 src/viewer.py"""
import json, os
D = 'out/levels'
checks = {}
for n in range(1, 13):
    for kind in ('noclip', 'check'):
        f = f'{D}/{n:02d}-{kind}.json'
        if os.path.exists(f):
            s = json.load(open(f))
            s['image'] = f'{n:02d}-{kind}.png'
            s['kind'] = 'no-clip по всей раскладке' if kind == 'noclip' else 'игра + телепорты'
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
opts = ''.join(f'<option value="{n}">Уровень {n}{" — босс" if n % 3 == 0 else ""}{" ✓" if n in checks else ""}</option>' for n in range(1, 13))
html = '''<!doctype html><html lang="ru"><head><meta charset="utf-8"><title>Alien 3 — уровни</title>
<style>
:root{color-scheme:dark}body{margin:0;background:#111;color:#ddd;font:14px system-ui,sans-serif}
header{position:sticky;top:0;background:#1b1b1b;padding:8px 12px;display:flex;gap:10px;align-items:center;flex-wrap:wrap;z-index:2;border-bottom:1px solid #333}
button,select{background:#2a2a2a;color:#ddd;border:1px solid #444;border-radius:4px;padding:4px 10px;cursor:pointer;font:inherit}button.on{background:#3d5a80;border-color:#5b7fb0}button:disabled{opacity:.4}
#wrap{overflow:auto;height:calc(100vh - 50px)}#stage{position:relative}
#stage img{display:block;image-rendering:pixelated;position:absolute;left:0;top:0}
#space-stage{position:relative;display:none}#space-stage img{position:absolute;left:0;image-rendering:pixelated}
#live{position:absolute;image-rendering:pixelated;pointer-events:none;outline:2px solid #fff8;box-shadow:0 0 12px #000;display:none}
#tas{position:absolute;left:0;top:0;overflow:visible;pointer-events:none}
#randil polyline{fill:none;stroke:#b48cff;stroke-width:2.5;stroke-linejoin:round;vector-effect:non-scaling-stroke;filter:drop-shadow(0 0 1px #000)}
#randil{position:absolute;left:0;top:0;overflow:visible;pointer-events:none}
#tas polyline{fill:none;stroke:#3dffb0;stroke-width:2;stroke-linejoin:round;vector-effect:non-scaling-stroke;opacity:.9;filter:drop-shadow(0 0 1px #000)}
.psp{position:absolute;image-rendering:pixelated;pointer-events:none;filter:drop-shadow(0 0 2px #ff3cac) drop-shadow(0 0 4px #ff3cac)}
.pri{position:absolute;width:44px;height:44px;margin:-22px 0 0 -22px;border:3px solid #ff3cac;border-radius:50%;box-shadow:0 0 0 3px #0008,0 0 14px #ff3cac;pointer-events:none;animation:pulse 1.2s ease-in-out infinite}
.pri b{position:absolute;left:50%;top:-22px;transform:translateX(-50%);background:#ff3cac;color:#000;font:bold 12px system-ui;padding:0 5px;border-radius:3px}
@keyframes pulse{50%{transform:scale(1.25);opacity:.6}}
.reg{position:absolute;left:0;right:0;border-top:2px solid #e0b040;pointer-events:none}
.reg span{position:sticky;left:4px;background:#000c;color:#f0c050;padding:1px 6px;font-size:12px;white-space:nowrap}
#pos{font-variant-numeric:tabular-nums;color:#aaa}
details{padding:0 12px}table{border-collapse:collapse;margin:8px 0}td{padding:2px 10px;border-bottom:1px solid #2a2a2a}td:last-child{text-align:right;font-variant-numeric:tabular-nums}
.legend{color:#888}
</style></head><body>
<header>
<select id="lvl">__OPTS__</select>
<button id="bLevel" class="on">Карта</button><button id="bCheck">Проверка</button><button id="bBlend">Наложение</button>
<span>Масштаб:</span><button data-z="0.25">¼</button><button data-z="0.5">½</button><button data-z="1" class="on">1×</button><button data-z="2">2×</button>
<span style="display:flex;gap:6px;align-items:center;border:1px solid #444;border-radius:6px;padding:2px 8px" title="TAS Randil, как его сыграл FCEUX: в окне камеры — кадр игры (фон из данных уровня, спрайты и палитра из записи)">
 <button id="tkPlay">▶</button>
 <select id="tkSpeed"><option value="1">×1</option><option value="4">×4</option><option value="16">×16</option></select>
 <input type="range" id="tkSeek" min="0" max="1" value="0" style="width:200px">
 <select id="tkLevel"><option value="">к уровню…</option></select>
 <label style="display:flex;gap:4px;align-items:center"><input type="checkbox" id="tkFollow" checked> следить</label>
 <span id="tkLabel" class="legend"></span></span>
<label style="display:flex;gap:6px;align-items:center;cursor:pointer" title="TAS by Randil (tasvideos 2713M, 20:24.52), сыгран в FCEUX; без прохода сквозь стены; все пленники спасены"><input type="checkbox" id="randilBox" checked> путь TAS Randil <span id="randilN" class="legend"></span></label>

<label style="display:flex;gap:6px;align-items:center;cursor:pointer"><input type="checkbox" id="pris" checked> пленники <span id="prisN" class="legend"></span></label>
<label style="display:flex;gap:6px;align-items:center;cursor:pointer"><input type="checkbox" id="space"> всё адресное пространство (64 КБ, 128 страниц)</label>
<span id="pos"></span>
<span class="legend">адресное пространство: приглушённое — не ROM (что прочла игра или снимок RAM); проверка: тёмное — игра ни разу не показала, оранжевое — устаревшая клетка, красное — расхождение</span>
</header>
<details><summary>Цифры проверки</summary><table id="nums"></table></details>
<div id="wrap"><div id="stage"><img id="iLevel" src="01.png"><img id="iCheck" style="display:none"><div id="priLayer"></div><canvas id="live" width="256" height="176"></canvas><svg id="randil"></svg></div><div id="space-stage"></div></div>
<script>
const CHECKS=__CHECKS__,SPACES=__SPACES__,PRISONERS=__PRISONERS__,SPRITES=__SPRITES__;let S=null,cur=1;
function nums(){const t=document.getElementById('nums');if(!S){t.innerHTML='<tr><td>Не проверен по кадрам</td><td></td></tr>';return}
const f=v=>typeof v==='number'?v.toLocaleString('ru'):v;
const rows=[["прогон",S.kind],["кадров",S.frames],["сравнений",S.samples],["совпадение, %",S.matchPercent],["без устаревших, %",S.matchPercentStaleApart],["записей тайлов: совпало / всего",f(S.writesMatched)+" / "+f(S.writesChecked)],["записей атрибутов",f(S.attributeWritesMatched)+" / "+f(S.attributeWritesChecked)],["клеток увидено",f(S.cellsSeen)+" / "+f(S.cellsOfLevel)],["клеток с расхождением",S.cellsEverDiffered]];
if(S.noclip)rows.push(["камера прошла X",S.noclip.camera.minX+".."+S.noclip.camera.maxX],["камера прошла Y",S.noclip.camera.minY+".."+S.noclip.camera.maxY]);
t.innerHTML=rows.map(r=>`<tr><td>${r[0]}</td><td>${f(r[1])}</td></tr>`).join('')}
const L=iLevel,C=iCheck,st=stage;let z=1,m='l';
function mode(x){m=x;[bLevel,bCheck,bBlend].forEach(b=>b.classList.remove('on'));
 L.style.display=x==='c'?'none':'';C.style.display=x==='l'?'none':'';C.style.opacity=x==='b'?.5:1;
 ({l:bLevel,c:bCheck,b:bBlend})[x].classList.add('on')}
bLevel.onclick=()=>mode('l');bCheck.onclick=()=>mode('c');bBlend.onclick=()=>mode('b');
function size(){st.style.width=L.naturalWidth*z+'px';st.style.height=L.naturalHeight*z+'px';[L,C].forEach(i=>i.style.width=L.naturalWidth*z+'px')}
L.onload=()=>{size();showTas()};document.querySelectorAll('[data-z]').forEach(b=>b.onclick=()=>{z=+b.dataset.z;document.querySelectorAll('[data-z]').forEach(x=>x.classList.toggle('on',x===b));size();showSpace();showPrisoners();showTas()});
const priLayer=document.getElementById('priLayer'),prisBox=document.getElementById('pris');
// Prisoners (object type 6, STATUS §14): the game's own sprite, at its offset from the object's
// X/Y (taken from the game at rest, src/prisoner-sprites.ts), and a ring on it, numbered.
function showPrisoners(){const list=PRISONERS[cur]||[],sp=SPRITES[cur],nn=String(cur).padStart(2,'0');document.getElementById('prisN').textContent='('+list.length+')';
 priLayer.innerHTML=prisBox.checked?list.map((o,k)=>{const cx=sp?o.x+sp.dx+sp.w/2:o.x,cy=sp?o.y+sp.dy+sp.h/2:o.y;
  return (sp?`<img class="psp" src="prisoners/${nn}.png" style="left:${(o.x+sp.dx)*z}px;top:${(o.y+sp.dy)*z}px;width:${sp.w*z}px;height:${sp.h*z}px">`:'')+
  `<div class="pri" style="left:${cx*z}px;top:${cy*z}px;width:${Math.max(44,48*z)}px;height:${Math.max(44,48*z)}px;margin:${-Math.max(22,24*z)}px 0 0 ${-Math.max(22,24*z)}px" title="объект ${o.i}: X ${o.x}, Y ${o.y}"><b>${k+1}</b></div>`}).join(''):''}
prisBox.onchange=showPrisoners;

// The TAS trail (out/levels/tas-randil.json: FCEUX playing Randil's movie, player X/Y), fetched when first shown.
const trails={randil:{file:'tas-randil.json',data:null}};
// While the run plays (window.takeFrame set by the player), only the way still ahead of the player.
async function showTrail(id,box,label){const svgT=document.getElementById(id),T0=trails[id];
 if(!document.getElementById(box).checked){svgT.innerHTML='';document.getElementById(label).textContent='';return}
 if(!T0.data){try{T0.data=(await (await fetch(T0.file,{cache:'no-store'})).json()).levels}catch(e){T0.data={}}}
 const T=T0.data[cur],W=L.naturalWidth||2048,H=L.naturalHeight||1920;svgT.setAttribute('viewBox',`0 0 ${W} ${H}`);svgT.style.width=W*z+'px';svgT.style.height=H*z+'px';
 document.getElementById(label).textContent=T?`(${(T.frames/60.0988).toFixed(0)} с)`:'(нет)';
 const tf=window.takeFrame;const ahead=sg=>tf==null?sg:sg.filter(p=>p[2]-1>=tf);
 svgT.innerHTML=T?T.segments.map(sg=>ahead(sg)).filter(sg=>sg.length>1).map(sg=>`<polyline points="${sg.map(p=>p[0]+','+p[1]).join(' ')}"/>`).join(''):''}
function showTas(){showTrail('randil','randilBox','randilN')}
document.getElementById('randilBox').onchange=showTas;


const ss=document.getElementById('space-stage'),spaceBox=document.getElementById('space');
function showSpace(){const on=spaceBox.checked&&SPACES[cur];st.style.display=on?'none':'';ss.style.display=on?'block':'none';[bLevel,bCheck,bBlend].forEach(b=>b.disabled=!!on||(!S&&b!==bLevel));
 if(!on)return;const P=SPACES[cur],nn=String(cur).padStart(2,'0');let h='';
 for(let k=0;k<P.chunks;k++)h+=`<img src="${nn}-space-${k}.png" style="top:${k*P.chunkHeight*z}px;width:${2048*z}px">`;
 for(const g of P.regions)h+=`<div class="reg" style="top:${g.y*z}px"><span>Y ${g.y}: $${g.from.toString(16).toUpperCase().padStart(4,'0')}… ${g.name}</span></div>`;
 ss.innerHTML=h;ss.style.width=2048*z+'px';ss.style.height=P.chunks*P.chunkHeight*z+'px'}
spaceBox.onchange=showSpace;
ss.onmousemove=e=>{const P=SPACES[cur];if(!P)return;const r=ss.getBoundingClientRect(),x=Math.floor((e.clientX-r.left)/z),y=Math.floor((e.clientY-r.top)/z);
 const page=Math.floor(y/240),inPage=Math.min(7,Math.floor((y%240)/32)),row=page*8+inPage,col=x>>5,a=(P.layout+row*64+col)&0xffff;
 pos.textContent=`x ${x} y ${y} · страница ${page} · адрес $${a.toString(16).toUpperCase().padStart(4,'0')}`};
function pick(n){cur=n;const nn=String(n).padStart(2,'0');S=CHECKS[n]||null;L.src=nn+'.png';bCheck.disabled=bBlend.disabled=!S;if(S)C.src=S.image;else mode('l');nums();showSpace();showPrisoners();showTas();document.title='Alien 3 — уровень '+n}
lvl.onchange=()=>pick(+lvl.value);pick(1);
st.onmousemove=e=>{const r=st.getBoundingClientRect(),x=Math.floor((e.clientX-r.left)/z),y=Math.floor((e.clientY-r.top)/z);
 const page=Math.floor(y/240),ty=Math.floor(y/8),inPage=Math.floor((ty%30)/4);
 pos.textContent=`x ${x} y ${y} · тайл ${x>>3},${ty} · блок ${x>>5}, ряд раскладки ${page*8+inPage} (стр. ${page})`};
</script><script type="module" src="/src/take-player.js"></script></body></html>'''
open(f'{D}/index.html', 'w').write(html.replace('__OPTS__', opts).replace('__CHECKS__', json.dumps(checks)).replace('__PRISONERS__', json.dumps(prisoners)).replace('__SPRITES__', json.dumps(sprites)).replace('__SPACES__', json.dumps({k: {kk: v[kk] for kk in ('layout', 'chunks', 'chunkHeight', 'regions')} for k, v in spaces.items()})))
print('ok', sorted(checks), 'spaces', sorted(spaces))
