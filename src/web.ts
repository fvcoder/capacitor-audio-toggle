import type { PluginListenerHandle} from '@capacitor/core';
import { WebPlugin } from '@capacitor/core';

import type { AudioTogglePlugin } from './definitions';

export class AudioToggleWeb extends WebPlugin implements AudioTogglePlugin {
  async setSpeakerOn(): Promise<void> {
    throw this.unimplemented('Not implemented on web.');
  } 

  async reset(): Promise<void> {
    throw this.unimplemented('Not implemented on web.');
  }

  addListener(
    eventName: 'speakerOn',
    listenerFunc: (data: {status: boolean}) => void,
  ): Promise<PluginListenerHandle> & PluginListenerHandle {
    return this.addListener(eventName, listenerFunc);
  };

  async removeAllListeners(): Promise<void> {
    return Promise.resolve();
  }
}
