
#include "display.h"
#include "keyboard.h"
#include <Arduino.h>

#define TEMP_A         PA1
#define TEMP_B         PA0

Display disp;
Keyboard keyb;

void setup() {
  Serial.begin(115200);
  Serial.println("ILI9488 Test!");

  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(TEMP_A, INPUT);
  pinMode(TEMP_B, INPUT);

  disp.setUp();
  keyb.setUp();
}

int tempDelayCounter = 0;

bool updateTemperature()
{
  tempDelayCounter++;
  if (tempDelayCounter > 500) {
    tempDelayCounter = 0;
    int tempASensorRead = analogRead(TEMP_A);
    int tempBSensorRead = analogRead(TEMP_B);
    disp.updateTemperatures(tempASensorRead*0.312, tempBSensorRead*0.312);
    return true;
  } else
    return false;
}

bool checkKeyboard()
{
  Keyboard::Key activeKey = keyb.pressedKey();
  bool keyPressed = false;
  switch (activeKey) {
    case Keyboard::Key::DisplayMode:
      disp.changeDisplayPage();
      keyPressed = true;
      break;
    default:
      break;
  }
  return keyPressed;
}

void loop() {
  bool tempUpdates = updateTemperature();
  bool keybUpdates = checkKeyboard();
  if (tempUpdates | keybUpdates) {
    disp.paint();
  }
  delay(1);
}
