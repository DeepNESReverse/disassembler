/**
 * nes-explorer's core (FCEUX's twin) and its replay, which the run was played on and must be replayed
 * on. From a checkout of github.com/DeepNESReverse/xrom-nes-explorer: `EXPLORER`, by default
 * ~/nes-explorer. The run holds its immortality as `latePins` with `bits` (a cell's bits set), which
 * replay.ts must know.
 */
import { join } from 'node:path';

const root = process.env.EXPLORER ?? join(process.env.HOME ?? '', 'nes-explorer');
const core = await import(join(root, 'src/core/core.ts'));
const replay = await import(join(root, 'src/agent/replay.ts'));

export const { Core, parseRom } = core;
export const { interventionsOf, pathFiles, readPath, step } = replay;
