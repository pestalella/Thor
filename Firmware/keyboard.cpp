#include "keyboard.h"

RotaryEncoder *isrEncoderObject;
bool encoderUpdated;
bool encoderPushed;
long encoderPosition;
int rotaryPinA = PB5;
int rotaryPinB = PB6;
int rotaryPush = PB7;

void checkPosition()
{
  isrEncoderObject->tick(); // just call tick() to check the state.
  encoderUpdated = true;
  encoderPosition = isrEncoderObject->getPosition();
}

void pushButtonClick()
{
    encoderPushed = true;
}

Keyboard::Keyboard() :
    encoder(rotaryPinA, rotaryPinB, RotaryEncoder::LatchMode::TWO03)
{

}


void Keyboard::setUp()
{
    pinMode(rotaryPush, INPUT_PULLUP);

    isrEncoderObject = &encoder;
    encoderUpdated = false;

    attachInterrupt(rotaryPush, pushButtonClick, FALLING);
    attachInterrupt(rotaryPinA, checkPosition, CHANGE);
    attachInterrupt(rotaryPinB, checkPosition, CHANGE);
}

Keyboard::Key Keyboard::pressedKey()
{  
    static int encoderPos = 0;

    // bool curState = (digitalRead(buttonPin) == HIGH);
    Key retKey = Key::None;
    if (encoderPushed) {
        // keypress happened
        retKey = Key::DisplayMode;
        encoderPushed = false;
    }
    // keyState[DisplayMode] = curState;

    if (encoderUpdated && encoderPos != encoderPosition) {
        Serial.print("pos:");
        Serial.print(encoderPosition);
        Serial.print(" dir:");
        Serial.println((int)(encoder.getDirection()));
        encoderPos = encoderPosition;
        encoderUpdated = false;
    }

    return retKey;
}

