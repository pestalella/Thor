#pragma once

#include "RotaryEncoder.h"

class Keyboard
{
public:
    Keyboard();
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
    const int buttonPin = PB9;
    bool keyState[LAST_KEY];
    RotaryEncoder encoder;
};