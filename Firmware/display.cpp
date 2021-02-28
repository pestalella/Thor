#include "display.h"

#include "SPI.h"
#include <Adafruit_GFX.h>
#include "ILI9488.h"
#include <Fonts/FreeSans18pt7b.h>
#include <Fonts/FreeSans24pt7b.h>

#define TFT_CS         PA4
#define TFT_DC         PB1
#define TFT_RST        PB0

#define COLOR_ORANGE 0xFBE0

Display::Display() :
    tft(TFT_CS, TFT_DC, TFT_RST),
    temperatureChannelA(20.0),
    temperatureChannelB(20.0),
    tempAdisplayed(""),
    tempBdisplayed("")
{
}

void Display::setUp()
{
    tft.begin();
    tft.fillScreen(ILI9488_BLACK);
    tft.setRotation(1);
    Serial.print("TFT geometry: ");
    Serial.print(tft.width());
    Serial.print("x");
    Serial.println(tft.height());
    clearScreen();
}

void Display::clearScreen()
{
    tft.fillScreen(ILI9488_BLACK);

    tft.fillRect(0, 0, tft.width()/2-1, 50, COLOR_ORANGE);

    tft.fillRect(tft.width()/2 + 1, 0, tft.width()/2-1, 50, ILI9488_BLUE);
    tft.drawRect(                0, 50, tft.width()/2-1, tft.height() - 50, COLOR_ORANGE);
    tft.drawRect(tft.width()/2 + 1, 50, tft.width()/2-1, tft.height() - 50, ILI9488_BLUE);

    //  tft.setFont(&FreeSans18pt7b);

    tft.setTextColor(0xFFFF);
    tft.setTextSize(4);
    tft.setCursor(70, 10);
    tft.print("CH 1");
    tft.setCursor(tft.width()/2 + 70, 10);
    tft.print("CH 2");    
}

void Display::changeDisplayPage()
{
    pageShown = static_cast<DisplayPage>((static_cast<int>(pageShown) + 1) % static_cast<int>(DisplayPage::NumDisplayPages));
    switch (pageShown) {
    case DisplayPage::Temperatures:
        Serial.println("[changeDisplayPage] Show Temperatures");
        break;
    case DisplayPage::ChannelOutput:
        Serial.println("[changeDisplayPage] Show Channel outputs");
        break;
    }
    clearScreen();
}

void Display::paintVoltages()
{
//  tft.setFont(&FreeSans24pt7b);
    tft.setTextSize(4);

    float v1 = 2.3;
    float v2 = 12.5;
    float i1 = 0.001;
    float i2 = 1.25;
    String newCh1V = String(v1,3) + "V";
    String newCh2V = String(v2,3) + "V";
    String newCh1I = String(i1,3) + "A";
    String newCh2I = String(i2,3) + "A";

    int x = 20;
    int y = 100;
        tft.fillRect(x, y, 160, 33, ILI9488_BLUE);
    tft.setTextColor(ILI9488_WHITE);
    tft.setCursor(x, y);
    tft.print(newCh1V);

    x = 20;
    y = 180;
        tft.fillRect(x, y, 160, 33, ILI9488_BLUE);
    tft.setTextColor(ILI9488_WHITE);
    tft.setCursor(x, y);
    tft.print(newCh1I);

    x = tft.width()/2 + 20;
    y = 100;
        tft.fillRect(x, y, 160, 33, ILI9488_BLUE);
    tft.setTextColor(ILI9488_WHITE);
    tft.setCursor(x, y);
    tft.print(newCh2V);

    x = tft.width()/2 + 20;
    y = 180;
        tft.fillRect(x, y, 160, 33, ILI9488_BLUE);
    tft.setTextColor(ILI9488_WHITE);
    tft.setCursor(x, y);
    tft.print(newCh2I);
}

void Display::paintTemperatures()
{
  String channelATemp = String(temperatureChannelA,1) + " C";
  String channelBTemp = String(temperatureChannelB,1) + " C";

  int x;
  int y;

    if (tempAdisplayed != channelATemp) {
        tempAdisplayed = channelATemp;  
        x = 20;
        y = 180;
        tft.fillRect(x, y, 160, 33, ILI9488_BLUE);
        tft.setTextColor(ILI9488_WHITE);
        tft.setCursor(x, y);
        tft.print(channelATemp);
    }

    if (tempBdisplayed != channelBTemp) {
        tempBdisplayed = channelBTemp;  
        x = tft.width()/2 + 20;
        y = 180;
        tft.fillRect(x, y, 160, 33, ILI9488_BLUE);
        tft.setTextColor(ILI9488_WHITE);
        tft.setCursor(x, y);
        tft.print(channelBTemp);
    }
}

void Display::paint()
{
    switch (pageShown) {
        case DisplayPage::Temperatures:
            paintTemperatures();
            break;
        case DisplayPage::ChannelOutput:
            paintVoltages();
            break;
    }
}

void Display::updateTemperatures(float channelATemp, float channelBTemp)
{
    temperatureChannelA = (temperatureChannelA + channelATemp)*0.5;
    temperatureChannelB = (temperatureChannelB + channelBTemp)*0.5;
}
