
#include "Display.h"

Display::Display()
{
  logmessage("Constructed");
}

void Display::init()
{
  logmessage("init()");
  tft.init();
  tft.setRotation(3);
  tft.fillScreen(TFT_WHITE);
}

void Display::logmessage(String message)
{
  Serial.println("Display: " + message);
}

void Display::fillClientarea(uint16_t color)
{
  tft.fillRect(0, FIRST_ROW, 240, 135-FIRST_ROW, color);
}

void Display::drawString(String text,int x, int y, int font)
{
  logmessage("drawString(\"" + text + "\" at " + x + ", " + y + " in Font " + font + "\"");
  tft.drawString(text, x, y, font);
}

void Display::setTextColor(uint16_t color, uint16_t backgroundcolor)
{
  tft.setTextColor(color, backgroundcolor);
}
