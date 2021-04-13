#include "ESPWatch_config.h"
#include "App.h"
#include "Watch.h"
#include "Wasserwage.h"
#include "Datalogger.h"
#include "Display.h"
#include <RotaryEncoder.h>

int menuselection = -1;
App* foregroundapp = NULL;
App* apps[MAXAPPS];

RotaryEncoder encoder(PIN_ENC_A, PIN_ENC_B, RotaryEncoder::LatchMode::TWO03);

void setup() {
  Serial.begin(115200);
  while(!Serial) {};
  Serial.println("setup(): Hello!");

  apps[0] = new Watch();
  apps[1] = new Wasserwage();
  apps[2] = new Datalogger();
  
  Serial.println("setup(): Setting up Display");
  display = Display();
  display.init(); 

  Serial.println("setup(): Setting up GPIO-pins");
  digitalWrite(PIN_ENC_BUTTON, LOW);
  pinMode(PIN_ENC_BUTTON, INPUT_PULLDOWN);

  digitalWrite(PIN_BUTTON_UTIL, LOW);
  pinMode(PIN_BUTTON_UTIL, INPUT_PULLDOWN);

  digitalWrite(PIN_BUTTON_EXIT, LOW);
  pinMode(PIN_BUTTON_EXIT, INPUT_PULLDOWN);

  Serial.println("Setup(): Done");
}

//FIX ME!!
/* 
void startApp(App* app)
{
    assert(foregroundapp == NULL);

    Serial.println("startApp(" + app->getName() + ")");
    foregroundapp = app;

    foregroundapp->start();
}
*/

void loop() {
  if (foregroundapp != NULL)
  {
    bool done = foregroundapp->loop();
    if(done)
    {
      Serial.println("loop: " + foregroundapp->getName() + " done");
      foregroundapp = NULL;
      menuselection = -1;
    }
  }
  else
  {
    menu();
  }
  for(int i = 0; i<MAXAPPS; i++)
  {
    if (apps[i] != NULL)
    {
      apps[i]->backgroundloop();
    }  
  }
}

void menu()
{
  encoder.tick();
  
  int newmenuselection = (int) ((encoder.getPosition()/2));
  
  if(digitalRead(PIN_ENC_BUTTON))
  {
    int startappindex;
    if(newmenuselection < 0)
    {
      int temp = MAXAPPS - newmenuselection + 1;
      startappindex = temp % MAXAPPS;
    }
    else
    {
      startappindex = (1 + newmenuselection) % MAXAPPS; 
    }

    //startApp(apps[startappindex]);
    //copy of startApp()
    assert(foregroundapp == NULL);

    Serial.println("startApp(" + apps[startappindex]->getName() + ")");
    foregroundapp = apps[startappindex];

    foregroundapp->start();
    
    return;
  }
 
  if(menuselection != newmenuselection)
  {
    Serial.println("menu(): Drawing menu");
    menuselection = newmenuselection;
    display.fillClientarea(TFT_WHITE);


    
    for(int z=0; z<5; z++)
    {
      int appindex;
      if(menuselection < 0)
      {
        int temp = MAXAPPS - menuselection + z;
        appindex = temp % MAXAPPS;
      }
      else
      {
        appindex = (z + menuselection) % MAXAPPS; 
      }
      
      String text; 
      if(apps[appindex] != NULL)
      {
        text = apps[appindex]->getName();
      }
      else
      {
        text = "XXXXXXXXXXXXXXXXXXXXXXX";  
      }
      
      if(z==1)
      {
        display.setTextColor(TFT_RED, TFT_RED); // highlight selected App
      }
      else
      {
        display.setTextColor(TFT_BLACK, TFT_BLACK);
      }
      
      display.drawString(text, 2, FIRST_ROW+(z*TEXTHEIGHT), 4);
    }  //of for
  } //of new menuselection
}
