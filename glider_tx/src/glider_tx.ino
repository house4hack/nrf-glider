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
Enrf24 radio(NRF_CE, NRF_CSN, NRF_IRQ);
int loopCount = 0;

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
  flashHandler.readData(&data);
  commands.printCommandHelp(&data);

  SPI.begin();
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);

  startRadio();
}

// the loop routine runs over and over again forever:
void loop() {
  // read joystick inputs
  if (SwapAxes & data.flags) {
    leftRight = analogRead(UP_DOWN);
    upDown = analogRead(LEFT_RIGHT);
  } else {
    leftRight = analogRead(LEFT_RIGHT);
    upDown = analogRead(UP_DOWN);
  }

  if (commands.isVerbose() && loopCount++ > 100) {
    loopCount = 0;
    Serial.print(leftRight);
    Serial.print("\t");
    Serial.print(upDown);
    Serial.print("\t");
    Serial.println(analogRead(BATTERY));  
  }

  // apply trim, sensitivity, exponentials, etc.
  doTrimControl(); // handle trim button
  leftRight = applySensitivityAndTrim(leftRight, data.trimLeftRight);
  upDown = applySensitivityAndTrim(upDown, data.trimUpDown); 

  if (EnableMixing & data.flags) {
    // handle mixing (flaperons)
    if (InvertLeftRight & data.flags) {
      leftRight = map(leftRight, 0, 1023, -data.mixFactor, data.mixFactor);
    } else {
      leftRight = map(leftRight, 1023, 0, -data.mixFactor, data.mixFactor);
    }

    if (InvertUpDown & data.flags) {
      joystick[0] = map(upDown, 0, 1023,  
        255 - data.mixFactor, data.mixFactor) + leftRight; // Left flap 0 -> 255
      joystick[1] = map(upDown, 0, 1023, 
        data.mixFactor, 255 - data.mixFactor) + leftRight; // Right flap 0 -> 255
    } else {
      joystick[0] = map(upDown, 1023, 0,   
        255 - data.mixFactor, data.mixFactor) + leftRight; // Left flap 0 -> 255
      joystick[1] = map(upDown, 1023, 0,  
        data.mixFactor, 255 - data.mixFactor) + leftRight; // Right flap 0 -> 255
    }
  } else {
    // no mixing
    if (InvertLeftRight & data.flags) {
      joystick[0] = map(leftRight, 1023, 0, 0, 255);
    } else {
      joystick[0] = map(leftRight, 0, 1023, 0, 255);
    }

    if (InvertUpDown & data.flags) {
      joystick[1] = map(upDown, 1023, 0, 0, 255);
    } else {
      joystick[1] = map(upDown, 0, 1023, 0, 255);
    }
  }

  radio.write(joystick, sizeof(joystick));
  radio.flush();
  //radio.deepsleep();

  // handle serial commands
  if (commands.handleCommands(&data)) {
    // write changes to flash
    flashHandler.writeData(&data);

    // check if radio channel changed
    if (data.channel != radio.getChannel()) {
      // restart radio
      radio.end();
      startRadio();
    }
  }

  // Check battery level
  // 435 = 3.0V, 915 = 6.35V
  if (analogRead(BATTERY) < 675 && // low battery condition
      analogRead(BATTERY) > 450 // 3.3V during debugging
      ) {
    digitalWrite(BUZZER, HIGH);
  }

  // small delay for battery saving
  sleep(10);
}

void startRadio() {
  radio.begin(250000, data.channel);  // Defaults 250kbps
  radio.setTXpower(0);  // max power
  radio.autoAck(false);
  radio.setCRC(true, false);  // 8-bit CRC
  radio.setRXaddress((void*)rxaddr);
  radio.setTXaddress((void*)rxaddr);
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

unsigned int applySensitivityAndTrim(unsigned int input, int trim) {
  // apply trim level
  int retVal = input + trim;
  double normVal = 512 - retVal;

  // apply exponential
  if (data.exponential > 50) {
    double v = abs(normVal) / 512.00;
    if (data.exponential <= 100) {
      v = v * v;
    } else if (data.exponential <= 150) {
      v = v * v * v;
    } else if (data.exponential <= 200) {
      v = v * v * v * v;
    } else {
      v = v * v * v * v * v;
    }
    normVal = normVal * v;
  }

  // apply sensitivity
  if (data.sensitivity != 100) {
    normVal = normVal * data.sensitivity / 100;
  }

  // sanity check output values
  retVal = 512 + round(normVal);
  if (retVal < 0) retVal = 0;
  if (retVal > 1023) retVal = 1023;

  return retVal;
}
