/*
  NRF Glider transmitter code
*/

#include <SPI.h>
#include "Enrf24.h"
#include "MspFlash.h"

#define TEST        false  // send test pattern
#define DEBUG       false  // serial output

#define CHANNEL     100    // default channel if not in flash

#define flash        SEGMENT_D // four segments, segment A read-only
#define CHECK_BYTE  0xA1  // indicates if flash has valid data

// most launchpads have a red LED
#define BUTTON      P2_4 // trim button
#define BUZZER      P2_3 
#define LEFT_RIGHT  P1_1
#define UP_DOWN     P1_3
#define BATTERY     P1_4

// Mixing parameters
#define MIX_FACTOR    60  // ratio of aeleron to elevetor, out of 255
#define SENSITIVITY   0.7 // 0 -> 1: min to max sensitivity

Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
const uint8_t rxaddr[] = {0xDE, 0xAD, 0xBE, 0xEF, 0x01};
unsigned char joystick[2];

// Config data stored into flash
struct FlashData {
  byte checkByte;
  byte channel;
  int trimUpDown;
  int trimLeftRight;
} data;

unsigned int leftRight = 127;
unsigned int upDown = 127;
unsigned long trimStart = 0;
int i = 0; // for test code

// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(BUTTON, INPUT_PULLUP);
  pinMode(BUZZER, OUTPUT);
  pinMode(LEFT_RIGHT, INPUT);
  pinMode(UP_DOWN, INPUT);

  digitalWrite(BUZZER, HIGH);
  delay(500);
  digitalWrite(BUZZER, LOW);  

  Serial.begin(9600); 
  Serial.println("NRF Glider v2.0");

  // read data from flash
  Serial.println("Reading flash...");
  Flash.read(flash, (unsigned char *)&data, sizeof(data));
  if (data.checkByte != CHECK_BYTE) {
    Serial.println("No data in flash...");
    // TODO - read in channel from serial port
    data.checkByte = CHECK_BYTE;
    data.channel = CHANNEL;
    data.trimLeftRight = 0;
    data.trimUpDown = 0;
    Serial.println("Writing flash...");
    writeData(data);
  } else {
    Serial.println("Read data from flash.");
  }

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  radio.begin(250000, data.channel);  // Defaults 1Mbps, channel 0, max TX power
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
    radio.write(joystick, sizeof(joystick));
    radio.flush();
  } else {
    leftRight = analogRead(LEFT_RIGHT);
    upDown = analogRead(UP_DOWN);

    doTrimControl();
    leftRight = applySensitivityAndTrim(leftRight, data.trimLeftRight);
    upDown = applySensitivityAndTrim(upDown, data.trimUpDown); 

    leftRight = map(leftRight, 0, 1023, -MIX_FACTOR, MIX_FACTOR);
    joystick[0] = map(upDown, 0, 1023, 
      255 - MIX_FACTOR, MIX_FACTOR) + leftRight; // Left flap 0 -> 255
    joystick[1] = map(upDown, 0, 1023, 
      MIX_FACTOR, 255 - MIX_FACTOR) + leftRight; // Right flap 0 -> 255

    radio.write(joystick, sizeof(joystick));
    radio.flush();
  }

  if (DEBUG) {
    Serial.print(joystick[0]);
    Serial.print(" ");
    Serial.print(joystick[1]);
    Serial.print(" ");
    Serial.print(analogRead(BATTERY));  
  }
  
  // 435 = 3.0V, 915 = 6.35V
  if (analogRead(BATTERY) < 675 && // low battery condition
      analogRead(BATTERY) > 450 // 3.3V during debugging
      ) {
    digitalWrite(BUZZER, HIGH);
  }

  delay(10);
}

void doTrimControl() {
  // trim control
  if (digitalRead(BUTTON) == LOW // button pressed
      && millis() - trimStart > 5000 // at least 5s between trims
      && abs(leftRight - 512) < 256 // don't allow extreme trims
      && abs(upDown - 512) < 256) {
    trimStart = millis();

    data.trimLeftRight = leftRight - 512;
    data.trimUpDown = upDown - 512;
    writeData(data);

    // give user a short time to return to zero
    while (millis() - trimStart < 500) {
      digitalWrite(BUZZER, HIGH);
      delay(50);
      radio.write(joystick, sizeof(joystick));
      radio.flush();
      digitalWrite(BUZZER, LOW);
      radio.write(joystick, sizeof(joystick));
      radio.flush();
    }

    // now let the joystick take over
    leftRight = analogRead(LEFT_RIGHT);
    upDown = analogRead(UP_DOWN);
  } else {
    digitalWrite(BUZZER, LOW);
  }
}

unsigned int applySensitivityAndTrim(int input, int trim) {
  // apply trim level
  int retVal = input + trim;

  // apply sensitivity in normalized space
  double normVal = 512 - retVal;
  normVal = normVal * SENSITIVITY;
  retVal = 512 + round(normVal);

  // sanity check output values
  if (retVal < 0) retVal = 0;
  if (retVal > 1023) retVal = 1023;

  return retVal;
}

void writeData(FlashData data) {
  Flash.erase(flash);
  Flash.write(flash, (unsigned char *)&data, sizeof(data));  
}

void testCode() {  
  //digitalWrite(BUZZER, HIGH);
  delay(100);               // wait for a second

  Serial.print(analogRead(UP_DOWN), DEC);
  Serial.print(" ");
  Serial.print(analogRead(LEFT_RIGHT), DEC);
  Serial.print(" ");
  Serial.println(analogRead(BATTERY), DEC);
  
  //digitalWrite(BUZZER, LOW);
  delay(100);               // wait for a second
}
