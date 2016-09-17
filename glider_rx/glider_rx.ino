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
Servo servothrottle;
Servo servoaeliron;
Servo servoelevator;
Servo servorudder;

// most launchpads have a red LED
#define LED         P2_4 //RED_LED
#define BUZZER      P2_3
#define LEFT_RIGHT  P1_3
#define UP_DOWN     P1_1
#define BATTERY     P1_4

Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
const uint8_t rxaddr[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0x01 };
int joystick[4];
int i = 0;

// the setup routine runs once when you press reset:
void setup() {
  // initialize the digital pin as an output.
  pinMode(LED, OUTPUT);
  pinMode(BUZZER, OUTPUT);
  pinMode(LEFT_RIGHT, INPUT);
  pinMode(UP_DOWN, INPUT);

  digitalWrite(BUZZER, LOW);
  Serial.begin(9600);


  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  radio.begin(250000, 108);  // Defaults 1Mbps, channel 0, max TX power
  radio.setTXpower(0);
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
  radio.enableRX();

  servothrottle.attach(3);
  servoaeliron.attach(5);  
}

// the loop routine runs over and over again forever:
void loop() {
  if ( radio.available() )
  {
    // Read the data payload until we’ve received everything
    bool done = false;
    while (!done)
    {
      // Fetch the data payload
      while (radio.available()) {
        radio.read( joystick, sizeof(joystick) );
        done = true;
      }
      Serial.print("X = ");
      Serial.print(throttle);
      Serial.print(" Y = ");
      Serial.print(aeliron);
      Serial.print(" L = ");
      Serial.print( elevator);
      Serial.print(" M = ");
      Serial.print(rudder);
      Serial.println(" ZXN rocks ");
      throttle = map(joystick[0], 0, 1023, 0, 179);
      aeliron = map(joystick[1], 0, 1023, 0, 179);
      elevator = map(joystick[2], 0, 1023, 0, 179);
      rudder = map(joystick[3], 0, 1023, 0, 179);

      servothrottle.write(throttle);
      servoaeliron.write(aeliron);
      //servoelevator.write(elevator);
      //servorudder.write(rudder);
      delay(15);

    }
  }
  else
  {
    Serial.println("No radio available");
  }
}
