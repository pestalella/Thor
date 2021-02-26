#include "keyboard.h"

void Keyboard::setUp()
{
    pinMode(buttonPin, INPUT);
}

Keyboard::Key Keyboard::pressedKey()
{
    bool curState = (digitalRead(buttonPin) == HIGH);
    Key retKey = Key::None;
    if (curState && !keyState[DisplayMode]) {
        // keypress happened
        retKey = Key::DisplayMode;
    }
    keyState[DisplayMode] = curState;
    return retKey;
}