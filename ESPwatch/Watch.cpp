#include "Watch.h"
#include "Display.h"
#include <RotaryEncoder.h>

#define REFRESHINTERVAL 300
#define precisionfactor 2

int lastmillis = 0;

int initmillis = 0;

int state = 0; //0 is display, 1 is setting hours, 2 is setting minutes, 3 is setting seconds
int refpos = 0;

Watch::Watch()
{
}

void Watch::setup()
{
  App::setup();
}

RotaryEncoder myencoder(PIN_ENC_A, PIN_ENC_B, RotaryEncoder::LatchMode::TWO03);

bool Watch::loop()
{
  myencoder.tick();
  bool draw = false;
  
  if(digitalRead(PIN_ENC_BUTTON))
  {
    state = (state + 1) % 4;
    //refpos = myencoder.getPosition()/precisionfactor;
    delay(200);
    draw = true;
  }

  draw = draw || (millis()%REFRESHINTERVAL == 0);

  if(draw)
  {
    int scaledpos = myencoder.getPosition()/precisionfactor;
    if(state == 1)
    {
      initmillis  = initmillis + (scaledpos - refpos)*3600000;
    }
    else if(state == 2)
    {
      initmillis  = initmillis + (scaledpos - refpos)*60000;
    }
    else if(state == 3)
    {
      initmillis  = initmillis + (scaledpos - refpos)*1000;
    }

    refpos = scaledpos;
    
    int m = millis() + initmillis;

    int hours   =  (m/3600000 + 24000) % 24; //milliseconds in an Hour
    int minutes =  (m/60000 + 60000)  % 60; //milliseconds in a Minute
    int seconds =  (m/1000 + 60000) % 60;  //milliseconds in a Second
    
    
    char buffHours[3];
    snprintf(buffHours, 3, "%02d", hours);
    
    char buffMinutes[3];
    snprintf(buffMinutes, 3, "%02d", minutes);
    
    char buffSeconds[3];
    snprintf(buffSeconds, 3, "%02d", seconds);

    display.fillClientarea(TFT_BLUE);

    if(state == 1)
    {display.setTextColor(TFT_BLACK, TFT_BLACK);}
    else
    {display.setTextColor(TFT_WHITE, TFT_WHITE);}
    display.drawString(((String)buffHours + ":"), 2, 32, 6);

    
    if(state == 2)
    {display.setTextColor(TFT_BLACK, TFT_BLACK);}
    else
    {display.setTextColor(TFT_WHITE, TFT_WHITE);}
    display.drawString((String)buffMinutes + ":", 72, 32, 6);

    if(state == 3)
    {display.setTextColor(TFT_BLACK, TFT_BLACK);}
    else
    {display.setTextColor(TFT_WHITE, TFT_WHITE);}
    display.drawString((String)buffSeconds, 142, 32, 6);
    
    //String time = (String) buffHours + (String) buffMinutes + (String) buffSeconds;
    //display.drawString(time, 2, 32, 6);
  }
  
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
  return "Watch";  
}

/*
void Watch::start();
{
    
}
*/
