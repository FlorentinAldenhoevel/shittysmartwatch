
#include "Datalogger.h"

Datalogger::Datalogger()
{
  }

void Datalogger::setup()
{
  App::setup();
  }

bool Datalogger::loop()
{
  return App::loop();
  }

void Datalogger::backgroundloop()
{
  App::backgroundloop();
  }

bool Datalogger::drawnotification(int iconIndex)
{
  return false;  
}

String Datalogger::getName()
{
  return ("Datalogger");  
}
