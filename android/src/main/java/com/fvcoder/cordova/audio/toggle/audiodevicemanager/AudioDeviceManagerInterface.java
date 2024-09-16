package com.fvcoder.cordova.audio.toggle.audiodevicemanager;

public interface AudioDeviceManagerInterface {
    void setSpeakerOn(boolean status);

    void reset();

    void setSpeakerChangeListener(AudioDeviceManagerListener speakerChangeListener);

    void onDestroy();
}
