/*
  NRF Glider transmitter code
*/

#include <SPI.h>
#include "Enrf24.h"
#include "MspFlash.h"

#define DEBUG       false  // serial output

// Default parameters if flash has no data
#ifdef VERSION1
  #define CHANNEL     100    // default channel if not in flash
#else
  #define CHANNEL     110    // default channel if not in flash
#endif

#define flash        SEGMENT_D // four segments, segment A read-only
#define CHECK_BYTE  0xA1  // indicates if flash has valid data

// hardware connections
#ifdef VERSION1
  #define TRIM_BUTTON P2_4
  #define BUZZER      P2_3 
  #define LEFT_RIGHT  P1_1
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
#else
  #define TRIM_BUTTON P2_1
  #define BUZZER      P2_0 
  #define LEFT_RIGHT  P1_0
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  Enrf24 radio(P2_6, P2_7, P2_5); // CE, CSN, IRQ
#endif

// Hard-coded parameters
#define MIX_FACTOR      60  // ratio of aeleron to elevetor, out of 255
#define MIN_SENSITIVITY 50  // min allowed sensitivity
#define MAX_TRIM        350 // max allowed trim 0 -> 512
#define TRIM_TIMEOUT    2000  // min millis between trims

const uint8_t rxaddr[] = {0xDE, 0xAD, 0xBE, 0xEF, 0x01};
unsigned char joystick[2];

// Config data stored into flash (max 64 bytes)
struct FlashData {
  unsigned char checkByte;
  unsigned char channel;
  unsigned char sensitivity;
  int trimUpDown;
  int trimLeftRight;
} data;

unsigned int leftRight = 127;
unsigned int upDown = 127;
unsigned long trimStart = 0;

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
  Serial.println("NRF Glider v2.0");

  // read data from flash
  Serial.print("Reading flash ");
  Serial.print(sizeof(FlashData));
  Serial.println(" bytes");

  Flash.read(flash, (unsigned char *)&data, sizeof(FlashData));
  if (data.checkByte != CHECK_BYTE) {
    Serial.println("No data in flash, using defaults...");
    data.checkByte = CHECK_BYTE;
    data.channel = CHANNEL;
    data.sensitivity = 100;
    data.trimLeftRight = 0;
    data.trimUpDown = 0;
    Serial.println("Writing flash...");
    writeData(&data);
  } else {
    Serial.println("Read data from flash.");
    if (!sanityCheck(&data)) {
      Serial.println("Some data was invalid, resetting...");
      writeData(&data);
    }
  }

  printMenu();

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

  if (DEBUG) {
    Serial.print(joystick[0]);
    Serial.print(" ");
    Serial.print(joystick[1]);
    Serial.print(" ");
    Serial.print(analogRead(BATTERY));  
  }

  handleMenu();

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
    writeData(&data);

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

void writeData(FlashData *data) {
  Flash.erase(flash);
  Flash.write(flash, (unsigned char *)data, sizeof(FlashData));  
}

bool sanityCheck(FlashData *dataIn) {
  bool passed = true;
  FlashData data = (*dataIn);

  // sanity check the values!
  if (data.channel < 1 || data.channel  > 127) {
    Serial.print("Invalid channel ");
    Serial.println(data.channel);
    data.channel = CHANNEL;
    passed = false;
  }

  if (data.trimLeftRight > MAX_TRIM || data.trimLeftRight < -MAX_TRIM ||
      data.trimUpDown > MAX_TRIM || data.trimUpDown < -MAX_TRIM) {
    Serial.print("Invalid trim ");
    Serial.print(data.trimLeftRight);
    Serial.print(" ");
    Serial.println(data.trimUpDown);
    data.trimLeftRight = 0;
    data.trimUpDown = 0;
    passed = false;
  }

  if (data.sensitivity < MIN_SENSITIVITY || data.sensitivity > 100) {
    Serial.print("Invalid sensitivity ");
    Serial.println(data.sensitivity);
    data.sensitivity = 100;
    passed = false;
  }

  return passed;
}

void printMenu() {
  Serial.print("*** Menu ***\n");
  Serial.print("(1) Set channel (");
  Serial.print(data.channel);
  Serial.print(")\n");

  Serial.print("(2) Set sensitivity (");
  Serial.print(data.sensitivity);
  Serial.print(")\n");
}

void handleMenu() {
  // flush the input buffer
  while (Serial.available() > 1) Serial.read();
  String val;
  Serial.setTimeout(5000); // amount of time to enter input

  if (Serial.available()) {
    switch (Serial.read()) {
      case '1': // set channel
                Serial.print("Enter Channel (1 -> 127) > ");
                val = Serial.readStringUntil('\n');
                if (val.length() == 0) break;
                Serial.println(val);
                data.channel = val.toInt();
                if (sanityCheck(&data)) {
                  writeData(&data);
                } else {
                  Serial.println("ERROR - invalid channel");
                }
                break;

      case '2': // set sensitivity
                Serial.print("Enter Sensitivity (");
                Serial.print(MIN_SENSITIVITY);
                Serial.print(" -> 100) > ");
                
                val = Serial.readStringUntil('\n');
                if (val.length() == 0) break;
                Serial.println(val);
                data.sensitivity = val.toInt();
                if (sanityCheck(&data)) {
                  writeData(&data);
                } else {
                  Serial.println("ERROR - invalid sensitivity");
                }
                break;
    }

    printMenu();
  } 
}