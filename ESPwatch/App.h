#ifndef App_h
#define App_h

#include "Arduino.h"

class App
{
  public: 
  App();
  virtual void setup();
  virtual bool loop();
  virtual void start();
  virtual void backgroundloop();
  virtual bool drawnotification(int iconIndex);
  virtual String getName();
  
  protected:
  void logmessage(String message);
  
  private:
};

#endif
