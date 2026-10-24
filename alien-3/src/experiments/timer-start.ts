// Header bytes $00-$0B: the timer's start, one of three picked by $07A8? Set $07A8 = 0, 1, 2 on the
// card and read the timer digits $0741-$0744 when the level starts.
import { cardState, loadState } from '../teleport.ts';
const { m, state } = cardState(0);
console.log('$07A8 on the card:', m.ram[0x7a8]);
for (const v of [0, 1, 2]) {
  loadState(m, state);
  m.ram[0x7a8] = v;
  m.frames(1181 - 900);
  console.log(`$07A8=${v}: timer ${m.ram[0x741]}${m.ram[0x742]}:${m.ram[0x743]}${m.ram[0x744]}`);
}
