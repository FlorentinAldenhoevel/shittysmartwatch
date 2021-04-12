
#include "Watch.h"

Watch::Watch()
{
  }

void Watch::setup()
{
  App::setup();
  }

bool Watch::loop()
{
  return App::loop();
  }

void Watch::backgroundloop()
{
  App::backgroundloop();
  }

bool Watch::drawnotification(int iconIndex)
{
  return false;  
}

String Watch::getName()
{
  return ("Watch");  
}
