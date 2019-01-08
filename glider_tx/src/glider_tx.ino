/*
  NRF Glider transmitter code
*/

#include <SPI.h>
#include "Enrf24.h"
#include "config.h"
#include "glider_tx.h"
#include "flash.h"
#include "commands.h"

unsigned char joystick[2];
unsigned int leftRight = 127;
unsigned int upDown = 127;
unsigned long trimStart = 0;

FlashData data;
FlashHandler flashHandler;
Commands commands;
#ifdef VERSION1
  Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
#else
  Enrf24 radio(P2_6, P2_7, P2_5); // CE, CSN, IRQ
#endif

// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(TRIM_BUTTON, INPUT_PULLUP);
  pinMode(BUZZER, OUTPUT);
  pinMode(LEFT_RIGHT, INPUT);
  pinMode(UP_DOWN, INPUT);

  digitalWrite(BUZZER, HIGH);
  delay(500);
  digitalWrite(BUZZER, LOW);  

  Serial.begin(9600); 
  commands.printCommandHelp(data);
  flashHandler.readData(data);

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  radio.begin(250000, data.channel);  // Defaults 250kbps
  radio.setTXpower(0);  // max power
  radio.autoAck(false);
  radio.setCRC(true, false);  // 8-bit CRC
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
}

// the loop routine runs over and over again forever:
void loop() {
  leftRight = analogRead(LEFT_RIGHT);
  upDown = analogRead(UP_DOWN);

  #ifdef DEBUG_PRINT
    Serial.print(leftRight);
    Serial.print("\t");
    Serial.print(upDown);
    Serial.print("\t");
    Serial.println(analogRead(BATTERY));  
  #endif

  doTrimControl();
  leftRight = applySensitivityAndTrim(leftRight, data.trimLeftRight);
  upDown = applySensitivityAndTrim(upDown, data.trimUpDown); 

#ifdef VERSION1 
  leftRight = map(leftRight, 1023, 0, -MIX_FACTOR, MIX_FACTOR);
  joystick[0] = map(upDown, 1023, 0,   
    255 - MIX_FACTOR, MIX_FACTOR) + leftRight; // Left flap 0 -> 255
  joystick[1] = map(upDown, 1023, 0,  
    MIX_FACTOR, 255 - MIX_FACTOR) + leftRight; // Right flap 0 -> 255
#else
  leftRight = map(leftRight, 0, 1023, -MIX_FACTOR, MIX_FACTOR);
  joystick[0] = map(upDown, 0, 1023,  
    255 - MIX_FACTOR, MIX_FACTOR) + leftRight; // Left flap 0 -> 255
  joystick[1] = map(upDown, 0, 1023, 
    MIX_FACTOR, 255 - MIX_FACTOR) + leftRight; // Right flap 0 -> 255
#endif

  radio.write(joystick, sizeof(joystick));
  radio.flush();

  commands.handleCommands(data);

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
  if (digitalRead(TRIM_BUTTON) == LOW // trim pressed
      && millis() - trimStart > TRIM_TIMEOUT // wait till previous trim applied
      && abs(leftRight - 512) < MAX_TRIM // don't allow extreme trims
      && abs(upDown - 512) < MAX_TRIM) {
    trimStart = millis();

    data.trimLeftRight = leftRight - 512;
    data.trimUpDown = upDown - 512;
    flashHandler.writeData(&data);

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
  normVal = normVal * data.sensitivity / 100;
  retVal = 512 + round(normVal);

  // sanity check output values
  if (retVal < 0) retVal = 0;
  if (retVal > 1023) retVal = 1023;

  return retVal;
}
