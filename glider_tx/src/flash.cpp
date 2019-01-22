#include "flash.h"

void FlashHandler::readData(FlashData *data) {
  // read data from flash
  Serial.print("Reading flash ");
  Serial.print(sizeof(FlashData));
  Serial.println(" bytes");

  Flash.read(flash, (unsigned char *)data, sizeof(FlashData));
  if (data->checkByte != CHECK_BYTE) {
    Serial.println("No data in flash, using defaults...");
    data->checkByte = CHECK_BYTE;
    data->channel = CHANNEL; // 0 to 127
    data->sensitivity = 100; // 0 to 100 as percentage
    data->mixFactor = 60; // ratio of aeleron to elevetor, out of 255;
    data->exponential = 0; // 0 to 255
    data->trimLeftRight = 0; // 0 to 512
    data->trimUpDown = 0; // 0 to 512
    data->flags = 0xff & EnableMixing; // default flags
    Serial.println("Writing flash...");
    writeData(data);
  } else {
    Serial.println("Read data from flash.");
    if (!sanityCheck(data)) {
      Serial.println("Some data was invalid, resetting...");
      writeData(data);
    }
  }
}

void FlashHandler::writeData(FlashData *data) {
  sanityCheck(data);
  Flash.erase(flash);
  Flash.write(flash, (unsigned char *)data, sizeof(FlashData));  
}

bool FlashHandler::sanityCheck(FlashData *data) {
  bool passed = true;

  // sanity check the values!
  if (data->channel < 1 || data->channel  > 127) {
    Serial.print("Invalid channel ");
    Serial.println(data->channel);
    data->channel = CHANNEL;
    passed = false;
  }

  if (data->trimLeftRight > MAX_TRIM || data->trimLeftRight < -MAX_TRIM ||
      data->trimUpDown > MAX_TRIM || data->trimUpDown < -MAX_TRIM) {
    Serial.print("Invalid trim ");
    Serial.print(data->trimLeftRight);
    Serial.print(" ");
    Serial.println(data->trimUpDown);
    data->trimLeftRight = 0;
    data->trimUpDown = 0;
    passed = false;
  }

  if (data->sensitivity < MIN_SENSITIVITY || data->sensitivity > 100) {
    Serial.print("Invalid sensitivity ");
    Serial.println(data->sensitivity);
    data->sensitivity = 100;
    passed = false;
  }

  return passed;
}

