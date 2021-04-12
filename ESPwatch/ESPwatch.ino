#include "App.h"
#include "Watch.h"
#include "Wasserwage.h"
#include "Datalogger.h"
#include "Display.h"
#include <RotaryEncoder.h>


#define GREY 0x5AEB
#define TEXTHEIGHT 19
#define FIRST_ROW 32

#define MAXAPPS 5

#define PIN_IN1 37
#define PIN_IN2 38

int menuselection = -1;
App* foregroundapp = NULL;
App* apps[MAXAPPS];

RotaryEncoder encoder(PIN_IN1, PIN_IN2, RotaryEncoder::LatchMode::TWO03);


void setup() {
  Serial.begin(9600);
  Serial.println("Mainsetup wurde aufgerufen");
  apps[0] = new Watch();
  apps[1] = new Wasserwage();
  apps[2] = new Datalogger();
  Serial.print("apps[0] is: ");
  Serial.println(apps[0]->getName());
  //startApp(apps[0]);
  display = Display();
  display.init();
  Serial.println("Mainsetup is done");
}

void startApp(App *app)
{
    assert(foregroundapp == 0);
    foregroundapp = app;
    Serial.println("Starting " + app->getName());
}

void loop() {
  if (foregroundapp != NULL)
  {
    bool done = foregroundapp->loop();
    if(done)
    {
      Serial.println(foregroundapp->getName() + " returned Done");
      foregroundapp = NULL;
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
  
  
  //tft.fillRect(0, 51, 240, 19, TFT_RED);
  //tft.setTextColor(TFT_BLACK, TFT_BLACK);
  int newmenuselection = (int) ((encoder.getPosition()/2));
  if(menuselection != newmenuselection)
  {
    menuselection = newmenuselection;
    display.fillClientarea(TFT_RED);
    Serial.println("----------------------------------------------------------------------");
    Serial.println(menuselection);
  
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
      
      Serial.println(appindex);
      
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
        tft.setTextColor(TFT_RED, TFT_RED); //highlight selected Programm
      }
      else
      {
        tft.setTextColor(TFT_BLACK, TFT_BLACK);
      }
      
      tft.drawString(text, 102, FIRST_ROW+(z*TEXTHEIGHT), 4);
    }  //of for
  } //of new menuselection
}
