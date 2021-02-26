#pragma once

#include <Arduino.h>

class Keyboard
{
public:
    const int buttonPin = PB9;
    enum Key {
        None = 0,
        DisplayMode,
        Left,
        Right,
        ChannelAEnable,
        ChannelBEnable,
        ParallelEnable,
        SerialEnable,
        LAST_KEY
    };
    void setUp();
    Key pressedKey();

private:
    bool keyState[LAST_KEY];
};