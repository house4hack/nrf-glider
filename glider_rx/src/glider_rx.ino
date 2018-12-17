/*
  NRF Glider receiver code
*/

#include <SPI.h>
#include "Enrf24.h"

#include <Servo.h>

int throttle;
int aeliron;
int elevator;
int rudder;
Servo servoaeliron;
Servo servoelevator;

#define DEBUG false

// hardware connections
#ifdef VERSION1
  #define CHANNEL     100
  #define BUZZER      P2_3
  #define LEFT_RIGHT  P2_4
  #define UP_DOWN     P2_5
  #define BATTERY     P1_4
  Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
  #define BATTERY_LOW 550
  #define BATTERY_33 450
  #define SERVO_MAX 140
  #define SERVO_MIN 50
  #define INVERT_SERVOS false
#else
  #define CHANNEL     120
  #define BUZZER      P2_0
  #define LEFT_RIGHT  P1_0
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  Enrf24 radio(P2_6, P2_7, P2_5); // CE, CSN, IRQ
  #define BATTERY_LOW 465 //465=4.5v x=1024/3.3V*4.5V*10K/30K
  #define BATTERY_33 345 //345=3.4v x=1024/3.3V*3.3V*10K/30K
  #define SERVO_MAX 170 //140
  #define SERVO_MIN 20 //50
  #define INVERT_SERVOS false
//  #define INVERT_SERVOS true
#endif

#define JOYSTICK_MID 127

const uint8_t rxaddr[] = {0xDE, 0xAD, 0xBE, 0xEF, 0x01};
unsigned char joystick[2];
long lastreceived = 0;
int battery = 0;
int i = 0;

unsigned long buzzerTimer = 0;
boolean buzzerOn = false;
boolean buzzerState = false;

// the setup routine runs once when you press reset:
void setup()
{
  // initialize the digital pin as an output.
  pinMode(BUZZER, OUTPUT);
  pinMode(LEFT_RIGHT, OUTPUT);
  pinMode(UP_DOWN, OUTPUT);

  digitalWrite(BUZZER, HIGH);
  delay(500);
  digitalWrite(BUZZER, LOW);

  Serial.begin(9600);

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  radio.begin(250000, CHANNEL);
  radio.setTXpower(0);
  radio.autoAck(false);
  radio.setCRC(true, false);
  radio.setRXaddress((void *)rxaddr);
  radio.setTXaddress((void *)rxaddr);
  radio.enableRX();

  servoelevator.attach(UP_DOWN);
  servoaeliron.attach(LEFT_RIGHT);
}

// the loop routine runs over and over again forever:
int buzzerPeriod = 100;

void loop()
{
  battery = analogRead(BATTERY);
  if (battery < BATTERY_LOW && battery > BATTERY_33)
  {
    buzzerOn = true;
    buzzerPeriod = 100;
  }

  if (buzzerOn)
  {
    if (millis() - buzzerTimer > buzzerPeriod)
    {
      buzzerTimer = millis();
      buzzerState = !buzzerState;
      if (!DEBUG)
        digitalWrite(BUZZER, buzzerState);
    }
  }

  if (radio.available())
  {
    lastreceived = millis();
    buzzerOn = false;
    digitalWrite(BUZZER, LOW);

    // Read the data payload until we’ve received everything
    bool done = false;
    while (!done)
    {
      // Fetch the data payload
      while (radio.available())
      {
        radio.read(joystick, sizeof(joystick));
        done = true;
      }

      if (DEBUG)
      {
        Serial.print("X = ");
        Serial.print(throttle);
        Serial.print(" Y = ");
        Serial.print(aeliron);
        Serial.print(" L = ");
        Serial.print(elevator);
        Serial.print(" M = ");
        Serial.print(rudder);
        Serial.println(" ZXN rocks ");
      }

      writeServoValues();
      delay(15);
    }
  }
  else
  {
    if (millis() - lastreceived > 100)
    {
      if (joystick[0] < JOYSTICK_MID)
        joystick[0]++;
      if (joystick[0] > JOYSTICK_MID)
        joystick[0]--;
      if (joystick[1] < JOYSTICK_MID)
        joystick[1]++;
      if (joystick[1] > JOYSTICK_MID)
        joystick[1]--;
      writeServoValues();
      delay(10); // slowly return to midpoint

      if (DEBUG)
      {
        Serial.println("No radio available");
        //digitalWrite(LED, HIGH);
      }

      if (millis() - lastreceived > 2000) {
        buzzerOn = true;
      }
    }
  }
}

void writeServoValues()
{
  if (!INVERT_SERVOS) 
  {  
     aeliron = map(joystick[0], 0, 255, SERVO_MIN, SERVO_MAX);
     elevator = map(joystick[1], 0, 255, SERVO_MIN, SERVO_MAX);
  }
  else
  {  
     aeliron = map(joystick[0], 255, 0, SERVO_MIN, SERVO_MAX);
     elevator = map(joystick[1], 255, 0, SERVO_MIN, SERVO_MAX);
  }
  servoelevator.write(elevator);
  servoaeliron.write(aeliron);
}
