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
int joystick[2];
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

  radio.begin(250000, 100);  // Defaults 1Mbps, channel 0, max TX power
  radio.setTXpower(0);
  radio.autoAck(false);
  radio.setCRC(true, true);
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
}

// the loop routine runs over and over again forever:
void loop() {
  i += 10;
  if (i > 1023) i = 0;

  joystick[0] = i; //LEFT_RIGHT
  joystick[1] = i; //UP_DOWN
  
  delay(10);
  Serial.print(joystick[0]);
  radio.write(joystick, sizeof(joystick));
  radio.flush();
  
  if (radio.lastTXfailed) {
    Serial.println(" X");
    //digitalWrite(LED, HIGH);
    //digitalWrite(BUZZER, HIGH);
  } else {
    Serial.println("");
    digitalWrite(LED, LOW);
    digitalWrite(BUZZER, LOW);
  }
  Serial.flush();
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
