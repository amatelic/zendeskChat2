import { registerPlugin } from '@capacitor/core';

import type { ZendeskChat2Plugin } from './definitions';

const ZendeskChat2 = registerPlugin<ZendeskChat2Plugin>('ZendeskChat2', {
  web: () => import('./web').then(m => new m.ZendeskChat2Web()),
});

export * from './definitions';
export { ZendeskChat2 };
