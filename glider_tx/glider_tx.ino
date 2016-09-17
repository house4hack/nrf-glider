/*
  Blink
  The basic Energia example.
  Turns on an LED on for one second, then off for one second, repeatedly.
  Change the LED define to blink other LEDs.
  
  Hardware Required:
  * LaunchPad with an LED
  
  This example code is in the public domain.
*/

#include <SPI.h>
#include "Enrf24.h"

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
  digitalWrite(LED, HIGH);  
  Serial.begin(9600); 

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  radio.begin(250000, 108);  // Defaults 1Mbps, channel 0, max TX power
  radio.setTXpower(0);
  radio.autoAck(true);
  radio.setCRC(true, true);
  radio.setAutoAckParams(0, 2000);
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
}

// the loop routine runs over and over again forever:
void loop() {
  i += 10;
  if (i > 1023) i = 0;

  joystick[0] = 0; //analogRead(JOYSTICK_X);
  joystick[1] = 0; //analogRead(JOYSTICK_Y);
  joystick[2] = i; //analogRead(JOYSTICK_L);
  joystick[3] = i; //analogRead(JOYSTICK_M);
  
  delay(10);
  Serial.println(joystick[3]);
  radio.write(joystick, sizeof(joystick));
  radio.flush();
  
  if (radio.lastTXfailed) {
    Serial.println(F("failed"));
  }
  delay(10);

  
//  digitalWrite(LED, HIGH);   // turn the LED on (HIGH is the voltage level)
//  //digitalWrite(BUZZER, HIGH);
//  delay(100);               // wait for a second
//
//  Serial.print(analogRead(UP_DOWN), DEC);
//  Serial.print(" ");
//  Serial.print(analogRead(LEFT_RIGHT), DEC);
//  Serial.print(" ");
//  Serial.println(analogRead(BATTERY), DEC);
//  
//  digitalWrite(LED, LOW);    // turn the LED off by making the voltage LOW
//  //digitalWrite(BUZZER, LOW);
//  delay(100);               // wait for a second
}
