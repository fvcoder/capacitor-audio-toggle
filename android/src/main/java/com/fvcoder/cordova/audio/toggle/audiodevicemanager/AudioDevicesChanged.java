package com.fvcoder.cordova.audio.toggle.audiodevicemanager;

import android.media.AudioDeviceInfo;

public interface AudioDevicesChanged {
    void on(AudioDeviceInfo[] devices);
}
