/* 06/16/2017 Copyright Tlera Corporation
 *  
 *  Created by Kris Winer
 *  
 *  The BMA280 is an inexpensive (~$1), three-axis, high-resolution (14-bit) acclerometer in a tiny 2 mm x 2 mm LGA12 package with 32-slot FIFO, 
 *  two multifunction interrupts and widely configurable sample rate (15 - 2000 Hz), full range (2 - 16 g), low power modes, 
 *  and interrupt detection behaviors. This accelerometer is nice choice for low-frequency sound and vibration analysis,
 *  tap detection and simple orientation estimation.
 *  
 *  Library may be used freely and without limit with attribution.
 *  
 */
 
#ifndef Display_h
#define Display_h

#include <TFT_eSPI.h> // Graphics and font library for ST7735 driver chip
#include <SPI.h>
#include "Arduino.h"

#define GREY 0x5AEB
#define TEXTHEIGHT 19
#define FIRST_ROW 32

class Display
{
  public: 
  Display();
  void init();
  void fillClientarea(uint16_t color);
  void drawString(String text, int x, int y, int font); 
  void setTextColor(uint16_t color, uint16_t backgroundcolor);
  
  protected:
  void logmessage(String message);
  
  private:
};

static TFT_eSPI tft = TFT_eSPI();
static Display display;
 
#endif
