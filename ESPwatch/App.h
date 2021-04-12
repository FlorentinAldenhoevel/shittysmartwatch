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
 
#ifndef App_h
#define App_h

#include "Arduino.h"

class App
{
  public: 
  App();
  virtual void setup();
  virtual bool loop();
  virtual void backgroundloop();
  virtual bool drawnotification(int iconIndex);
  virtual String getName();
  protected:
  void logmessage(String message);
  private:
};

#endif
