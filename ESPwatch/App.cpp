#include "ESPWatch_config.h"
#include "Display.h"
#include "App.h"

App::App()
{
  logmessage("Constructed");
}

void App::setup()
{
  logmessage("setup()");
}

bool App::loop()
{
  logmessage("loop()");

  bool done = !digitalRead(PIN_BUTTON_EXIT);
  if (done) {
    logmessage("loop(): Done");
  }
  
  return done;
}

void App::start()
{
  logmessage("start()");
  display.fillClientarea(TFT_BLUE); 
  display.setTextColor(TFT_WHITE, TFT_WHITE); 
  display.drawString(getName(), 2, 32, 4);
}

void App::backgroundloop()
{
  logmessage("backgroundloop()");
}

bool App::drawnotification(int iconIndex)
{
  return false;  
}

String App::getName()
{
  return "App";  
}

void App::logmessage(String message)
{
  // Serial.println(getName() + ": " + message);
}
