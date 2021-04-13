
#include "Wasserwage.h"

Wasserwage::Wasserwage()
{
}

void Wasserwage::setup()
{
  App::setup();
}

bool Wasserwage::loop()
{
  return App::loop();
}

void Wasserwage::backgroundloop()
{
  App::backgroundloop();
}

bool Wasserwage::drawnotification(int iconIndex)
{
  return false;  
}

String Wasserwage::getName()
{
  return "Wasserwage";  
}
