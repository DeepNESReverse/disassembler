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
# The order Randil's run rescues them in (src/rescue-order.ts): a prisoner's number on the map.
order = json.load(open(f'{D}/rescue-order.json')) if os.path.exists(f'{D}/rescue-order.json') else {}
for n, objs in prisoners.items():
    seq = order.get(n, [])
    for k, o in enumerate(objs):
        o['num'] = seq.index(o['i']) + 1 if o['i'] in seq else len(seq) + k + 1
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
#view{position:absolute;left:0;top:0;overflow:visible;pointer-events:none}
#view .hid{fill:url(#hatch)}
#view .unseen{fill:#000;fill-opacity:.72}
#view .searchonly{fill:#3f8cff;fill-opacity:.35}
#view .h{stroke:#5fd0ff;stroke-width:2;vector-effect:non-scaling-stroke}
#view .v{stroke:#ffb347;stroke-width:2;stroke-dasharray:8 5;vector-effect:non-scaling-stroke}
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

<label style="display:flex;gap:6px;align-items:center;cursor:pointer" title="Затемнено всё, что не попало в кадр ни в забеге TAS Randil, ни в моём обходе уровня в игре (без прохода сквозь стены; неуязвимость, здоровье, таймер). Синим — то, что увидел только обход (для сверки). Где обхода ещё нет — только забег"><input type="checkbox" id="runSeenBox"> не видно игроку <span id="runSeenN" class="legend"></span></label>
<label style="display:flex;gap:6px;align-items:center;cursor:pointer" title="Камера едет вбок только на верхней границе страницы (Y кратно 240), вверх-вниз — только в нечётной полосе X по 256 px; кадр 256×176. В чётных полосах нижние 64 px каждой страницы не видны никогда — даже сквозь стены (проверено облётом no-clip)"><input type="checkbox" id="hiddenBox"> никогда не видно (правило камеры)</label>
<label style="display:flex;gap:6px;align-items:center;cursor:pointer" title="Линии центра кадра камеры: голубые — где она едет только по горизонтали (верх страниц), оранжевые — только по вертикали (нечётные полосы)"><input type="checkbox" id="railsBox"> пути камеры</label>
<label style="display:flex;gap:6px;align-items:center;cursor:pointer"><input type="checkbox" id="pris" checked> пленники <span id="prisN" class="legend"></span></label>
<label style="display:flex;gap:6px;align-items:center;cursor:pointer"><input type="checkbox" id="space"> всё адресное пространство (64 КБ, 128 страниц)</label>
<span id="pos"></span>
<span class="legend">адресное пространство: приглушённое — не ROM (что прочла игра или снимок RAM); проверка: тёмное — игра ни разу не показала, оранжевое — устаревшая клетка, красное — расхождение</span>
</header>
<details><summary>Цифры проверки</summary><table id="nums"></table></details>
<div id="wrap"><div id="stage"><img id="iLevel" src="01.png"><img id="iCheck" style="display:none"><svg id="view"></svg><div id="priLayer"></div><canvas id="live" width="256" height="176"></canvas><svg id="randil"></svg></div><div id="space-stage"></div></div>
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
L.onload=()=>{size();showTas();showView()};document.querySelectorAll('[data-z]').forEach(b=>b.onclick=()=>{z=+b.dataset.z;document.querySelectorAll('[data-z]').forEach(x=>x.classList.toggle('on',x===b));size();showSpace();showPrisoners();showView();showTas()});
const priLayer=document.getElementById('priLayer'),prisBox=document.getElementById('pris');
// Prisoners (object type 6, STATUS §14), numbered in the order Randil's run rescues them: the game's own sprite, at its offset from the object's
// X/Y (taken from the game at rest, src/prisoner-sprites.ts), and a ring on it, numbered.
// While the run plays, the prisoners it has rescued are left out (window.takeRescued, by object slot).
function showPrisoners(){const done=window.takeRescued,list=(PRISONERS[cur]||[]).filter(o=>!(done&&done.has(o.i))),sp=SPRITES[cur],nn=String(cur).padStart(2,'0');document.getElementById('prisN').textContent='('+list.length+')';
 priLayer.innerHTML=prisBox.checked?list.map((o,k)=>{const cx=sp?o.x+sp.dx+sp.w/2:o.x,cy=sp?o.y+sp.dy+sp.h/2:o.y;
  return (sp?`<img class="psp" src="prisoners/${nn}.png" style="left:${(o.x+sp.dx)*z}px;top:${(o.y+sp.dy)*z}px;width:${sp.w*z}px;height:${sp.h*z}px">`:'')+
  `<div class="pri" style="left:${cx*z}px;top:${cy*z}px;width:${Math.max(44,48*z)}px;height:${Math.max(44,48*z)}px;margin:${-Math.max(22,24*z)}px 0 0 ${-Math.max(22,24*z)}px" title="объект ${o.i}: X ${o.x}, Y ${o.y}"><b>${o.num}</b></div>`}).join(''):''}
prisBox.onchange=showPrisoners;
// The camera's rule (STATUS §22): across only on a page top (Y = 240·k), up and down only on an odd
// 256-px band (X = 256·(2j+1)); the field 256 × 176. Hidden: even bands' page bottoms (Y 176-239
// in a page). Rails: where the field's middle goes.
let RUNSEEN=null,VISIBLE=null;
const rowsToSet=(rows,W,H)=>{const a=new Uint8Array(W*H);rows.forEach((row,ty)=>{let x=0,s=false;for(const k of row.split(',').map(Number)){if(s)a.fill(1,ty*W+x,ty*W+x+k);x+=k;s=!s}});return a};
const setToPath=(a,W,H,want)=>{let d='';for(let ty=0;ty<H;ty++){let tx=0;while(tx<W){if(a[ty*W+tx]===want){let k=tx;while(k<W&&a[ty*W+k]===want)k++;d+=`M${tx*8} ${ty*8}h${(k-tx)*8}v8h${-(k-tx)*8}z`;tx=k}else tx++}}return d};
async function showView(){const v=document.getElementById('view'),W=L.naturalWidth||2048,H=L.naturalHeight||1920;
 const rs=document.getElementById('runSeenBox').checked;
 if(rs&&!RUNSEEN){try{RUNSEEN=await (await fetch('run-seen.json',{cache:'no-store'})).json()}catch(e){RUNSEEN={}}
  try{VISIBLE=await (await fetch('visible.json',{cache:'no-store'})).json()}catch(e){VISIBLE={}}}
 v.setAttribute('viewBox',`0 0 ${W} ${H}`);v.style.width=W*z+'px';v.style.height=H*z+'px';
 let h='<defs><pattern id="hatch" width="12" height="12" patternUnits="userSpaceOnUse" patternTransform="rotate(45)"><rect width="12" height="12" fill="#000a"/><line x1="0" y1="0" x2="0" y2="12" stroke="#ff4d6d" stroke-width="3"/></pattern></defs>';
 // Not seen by the player: neither in Randil's run (run-seen.json) nor in the search (visible.json);
 // what only the search saw, tinted blue.
 const R=rs&&RUNSEEN?RUNSEEN[cur]:null,V=rs&&VISIBLE?VISIBLE[cur]:null;
 if(R){const TW=R.w,TH=R.h,run=rowsToSet(R.rows,TW,TH),only=V?rowsToSet(V.search,TW,TH):new Uint8Array(TW*TH),seen=new Uint8Array(TW*TH);
  let n=0;for(let i=0;i<seen.length;i++){seen[i]=run[i]|only[i];n+=seen[i]}
  document.getElementById('runSeenN').textContent=`(видно ${(100*n/seen.length).toFixed(0)} %${V?'':', только забег'})`;
  h+=`<path class="unseen" d="${setToPath(seen,TW,TH,0)}"/>`;if(V)h+=`<path class="searchonly" d="${setToPath(only,TW,TH,1)}"/>`}
 else document.getElementById('runSeenN').textContent='';
 if(document.getElementById('hiddenBox').checked)
  for(let x=0;x<W;x+=512)for(let y=0;y<H;y+=240)h+=`<rect class="hid" x="${x}" y="${y+176}" width="${Math.min(256,W-x)}" height="${Math.min(64,H-y-176)}"/>`;
 if(document.getElementById('railsBox').checked){
  for(let y=0;y+176<=H;y+=240)h+=`<line class="h" x1="128" y1="${y+88}" x2="${W-128}" y2="${y+88}"/>`;
  for(let x=256;x+256<=W;x+=512)h+=`<line class="v" x1="${x+128}" y1="88" x2="${x+128}" y2="${H-88}"/>`}
 v.innerHTML=h}
document.getElementById('hiddenBox').onchange=showView;document.getElementById('runSeenBox').onchange=showView;document.getElementById('railsBox').onchange=showView;

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
function pick(n){cur=n;const nn=String(n).padStart(2,'0');S=CHECKS[n]||null;L.src=nn+'.png';bCheck.disabled=bBlend.disabled=!S;if(S)C.src=S.image;else mode('l');nums();showSpace();showPrisoners();showView();showTas();document.title='Alien 3 — уровень '+n}
lvl.onchange=()=>pick(+lvl.value);pick(1);
st.onmousemove=e=>{const r=st.getBoundingClientRect(),x=Math.floor((e.clientX-r.left)/z),y=Math.floor((e.clientY-r.top)/z);
 const page=Math.floor(y/240),ty=Math.floor(y/8),inPage=Math.floor((ty%30)/4);
 pos.textContent=`x ${x} y ${y} · тайл ${x>>3},${ty} · блок ${x>>5}, ряд раскладки ${page*8+inPage} (стр. ${page})`};
</script><script type="module" src="/src/take-player.js"></script></body></html>'''
open(f'{D}/index.html', 'w').write(html.replace('__OPTS__', opts).replace('__CHECKS__', json.dumps(checks)).replace('__PRISONERS__', json.dumps(prisoners)).replace('__SPRITES__', json.dumps(sprites)).replace('__SPACES__', json.dumps({k: {kk: v[kk] for kk in ('layout', 'chunks', 'chunkHeight', 'regions')} for k, v in spaces.items()})))
print('ok', sorted(checks), 'spaces', sorted(spaces))
