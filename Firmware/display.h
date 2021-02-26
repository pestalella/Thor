#pragma once

#include <ILI9488.h>

class Display
{
    enum class DisplayPage {
        Temperatures,
        ChannelOutput,
        NumDisplayPages
    };

public:
    Display();
    void setUp();
    void updateTemperatures(float channelATemp, float channelBTemp);
    void paint();
    void changeDisplayPage();

private:
    void paintVoltages();
    void paintTemperatures();
    void clearScreen();

private:
    ILI9488 tft;
    float temperatureChannelA;
    float temperatureChannelB;    
    String tempAdisplayed;
    String tempBdisplayed;
    DisplayPage pageShown;
};
