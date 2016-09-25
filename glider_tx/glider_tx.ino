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

#define TEST        false  // send test pattern

// most launchpads have a red LED
#define LED         P2_4 //RED_LED
#define BUZZER      P2_3 
#define LEFT_RIGHT  P1_1
#define UP_DOWN     P1_3
#define BATTERY     P1_4

// Mixing parameters
#define MAX_FACTOR    0  // 0 - maximum movement, 255 - no movement at all
#define MIX_FACTOR    60 // ratio of aeleron to elevetor, out of 255

// trimming
#define TRIM_UP_DOWN    -60   // higher -> up, -512 to 512
#define TRIM_LEFT_RIGHT 7 // higher -> trim to right, -127 to 127

Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
const uint8_t rxaddr[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0x01 };
unsigned char joystick[2];
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

  radio.begin(2500000, 100);  // Defaults 1Mbps, channel 0, max TX power
  radio.setTXpower(0);
  radio.autoAck(false);
  radio.setCRC(true, false);
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
}

// the loop routine runs over and over again forever:
void loop() {
  if (TEST) {
    i += 2;
    if (i > 255) i = 0;
    joystick[0] = i; //UP_DOWN
    joystick[1] = i; //LEFT_RIGHT
  } else {
    int leftRight = map(analogRead(LEFT_RIGHT), 0, 1023, -MIX_FACTOR, MIX_FACTOR);
    if (leftRight - TRIM_LEFT_RIGHT >= 0 && leftRight - TRIM_LEFT_RIGHT <= 1023) {
      leftRight -=  TRIM_LEFT_RIGHT;
    }
    
    int upDown = analogRead(UP_DOWN);
    if (upDown + TRIM_UP_DOWN <= 1023 && upDown + TRIM_UP_DOWN >= 0) upDown += TRIM_UP_DOWN; 

    joystick[0] = map(upDown, 0, 1023, 
      255 - MAX_FACTOR - MIX_FACTOR, MIX_FACTOR + MAX_FACTOR) + leftRight; //i; //UP_DOWN
    joystick[1] = map(upDown, 0, 1023, 
      MIX_FACTOR + MAX_FACTOR, 255 - MAX_FACTOR - MIX_FACTOR) + leftRight; //i; //LEFT_RIGHT
  }

  if (true) {
    Serial.print(joystick[0]);
    Serial.print(" ");
    Serial.print(joystick[1]);
    Serial.print(" ");
    Serial.print(analogRead(BATTERY));  
  }
  
  radio.write(joystick, sizeof(joystick));
  radio.flush();
  
  if (radio.lastTXfailed) {
    Serial.println(" X");
    digitalWrite(LED, HIGH);
    //digitalWrite(BUZZER, HIGH);
  } else {
    Serial.println("");
    digitalWrite(LED, LOW);
    digitalWrite(BUZZER, LOW);
  }

  // 435 = 3.0V, 915 = 6.35V
  if (analogRead(BATTERY) < 420) {
    digitalWrite(BUZZER, HIGH);
  }

  Serial.flush();
  delay(20);
}

void testCode() {  
  digitalWrite(LED, HIGH);   // turn the LED on (HIGH is the voltage level)
  //digitalWrite(BUZZER, HIGH);
  delay(100);               // wait for a second

  Serial.print(analogRead(UP_DOWN), DEC);
  Serial.print(" ");
  Serial.print(analogRead(LEFT_RIGHT), DEC);
  Serial.print(" ");
  Serial.println(analogRead(BATTERY), DEC);
  
  digitalWrite(LED, LOW);    // turn the LED off by making the voltage LOW
  //digitalWrite(BUZZER, LOW);
  delay(100);               // wait for a second
}
