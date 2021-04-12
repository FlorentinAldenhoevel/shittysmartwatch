
#include "App.h"

App::App()
{
  logmessage("Constructed");
}

void App::setup()
{
  logmessage("setup was called");
  }

bool App::loop()
{
  logmessage("loop is running");
  return false;
  }

void App::backgroundloop()
{
  logmessage("backgroundloop is running");
  }

bool App::drawnotification(int iconIndex)
{
  return false;  
}

String App::getName()
{
  return ("GenericApp");  
}

void App::logmessage(String message)
{
  //Serial.println(getName() + ": " + message);
  }
