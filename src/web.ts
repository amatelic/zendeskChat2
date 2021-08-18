import { WebPlugin } from '@capacitor/core';

import type { ZendeskChat2Plugin } from './definitions';

export class ZendeskChat2Web extends WebPlugin implements ZendeskChat2Plugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  initialize(): Promise<void> {
    return Promise.resolve();
  };
  open(): Promise<void> {
    return Promise.resolve();
  }
  setVisitorInfo(): Promise<void> {
    return Promise.resolve();
  }
}
