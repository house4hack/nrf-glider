/*
  Blink
  The basic Energia example.
  Turns on an LED on for one second, then off for one second, repeatedly.
  Change the LED define to blink other LEDs.

  Hardware Required:
    LaunchPad with an LED

  This example code is in the public domain.
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

#define DEBUG       true

// most launchpads have a red LED
#define LED         P1_3 //RED_LED
#define BUZZER      P2_3
#define LEFT_RIGHT  P2_4
#define UP_DOWN     P2_5

#define BATTERY     P1_4
#define BATTERY_LOW 550

#define SERVO_MAX   140
#define JOYSTICK_MID   127
#define SERVO_MIN   50

Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
const uint8_t rxaddr[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0x01 };
unsigned char joystick[2];
long lastreceived = 0;
int battery = 0;
int i = 0;

unsigned long buzzerTimer = 0;
boolean buzzerOn = false;
boolean buzzerState = false;

// the setup routine runs once when you press reset:
void setup() {
  // initialize the digital pin as an output.
  pinMode(LED, OUTPUT);
  pinMode(BUZZER, OUTPUT);
  pinMode(LEFT_RIGHT, OUTPUT);
  pinMode(UP_DOWN, OUTPUT);

  digitalWrite(LED, HIGH);
  delay(500);
  digitalWrite(LED, LOW);
  digitalWrite(BUZZER, LOW);
  
  Serial.begin(9600);

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  radio.begin(2500000, 100);  // Defaults 1Mbps, channel 0, max TX power
  radio.setTXpower(0);
  radio.autoAck(false);
  radio.setCRC(true, false);
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
  radio.enableRX();

  servoelevator.attach(UP_DOWN);
  servoaeliron.attach(LEFT_RIGHT);
  //Serial.println("asdf");
}

// the loop routine runs over and over again forever:
void loop() {
  battery = analogRead(BATTERY);
  
  if (buzzerOn || battery < BATTERY_LOW) {
   int buzzerPeriod = 100;
   if (battery < BATTERY_LOW) {
    buzzerPeriod = 50;
   }
   
   if (millis() - buzzerTimer > buzzerPeriod) {
    buzzerTimer = millis();
    buzzerState = !buzzerState;
    if (!DEBUG) digitalWrite(BUZZER, buzzerState);
   }
  }
  
  if ( radio.available() )
  {
    lastreceived = millis();  
    buzzerOn = false;  
    digitalWrite(LED, LOW);
    digitalWrite(BUZZER, LOW);
    
    // Read the data payload until we’ve received everything
    bool done = false;
    while (!done)
    {
      // Fetch the data payload
      while (radio.available()) {
        radio.read( joystick, sizeof(joystick) );
        done = true;
      }

      if (DEBUG) {
        Serial.print("X = ");
        Serial.print(throttle);
        Serial.print(" Y = ");
        Serial.print(aeliron);
        Serial.print(" L = ");
        Serial.print( elevator);
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
    if (millis() - lastreceived > 50) {
      if (joystick[0] < JOYSTICK_MID) joystick[0]++;
      if (joystick[0] > JOYSTICK_MID) joystick[0]--;
      if (joystick[1] < JOYSTICK_MID) joystick[1]++;
      if (joystick[1] > JOYSTICK_MID) joystick[1]--;
      writeServoValues();
      
      if (DEBUG) {
        Serial.println("No radio available");
        digitalWrite(LED, HIGH);
      }
      buzzerOn = true; 
    }
  }
}

void writeServoValues() {
  aeliron = map(joystick[0], 0, 255, SERVO_MIN, SERVO_MAX);
  elevator = map(joystick[1], 0, 255, SERVO_MIN, SERVO_MAX);

  servoelevator.write(elevator);
  servoaeliron.write(aeliron);
}

