
#include "Display.h"

Display::Display()
{
  logmessage("Constructed");
}

void Display::init()
{
  tft.init();
  tft.setRotation(3);
  tft.fillScreen(TFT_WHITE);
}

void Display::logmessage(String message)
{
  //Serial.println(getName() + ": " + message);
}

void Display::fillClientarea(uint16_t color)
{
  tft.fillRect(0, FIRST_ROW, 240, 135-FIRST_ROW, color);
}

void Display::drawString(int x, int y, int h, int w, uint16_t color)
{
//  tft.drawString(x, y, h, w, color);
}
