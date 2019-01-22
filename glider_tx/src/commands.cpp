#include "commands.h"

void Commands::printVersion() {
  #ifdef VERSION1
    Serial.println("NRF Glider v1.0");
  #else
    Serial.println("NRF Glider v2.0");
  #endif
}

void Commands::_printCommandHelp(char command, const char* item, int value) {
  Serial.print(command);
  Serial.print(" - Set ");
  Serial.print(item);
  Serial.print(" (");
  Serial.print(value);
  Serial.println(")"); 
}

void Commands::printCommandHelp(FlashData *dataPtr) {
  FlashData data = (*dataPtr);
  printVersion();
  Serial.print("Commands (g-code style):\n");
  _printCommandHelp('C', "channel", data.channel);
  _printCommandHelp('S', "sensitivity", data.sensitivity);
  _printCommandHelp('M', "mixing", EnableMixing & data.flags);
  _printCommandHelp('L', "invert left/right", InvertLeftRight & data.flags);
  _printCommandHelp('U', "invert up/down", InvertUpDown & data.flags);
  _printCommandHelp('A', "Swap axes", SwapAxes & data.flags);
}

bool Commands::handleCommands(FlashData *dataPtr) {
  FlashData data = (*dataPtr);
  char command, c;
  char value[3];

  for (c=0; c < sizeof(value); c++) value[c] = 0;
  while (Serial.available() > 0) {
    c = Serial.read();
    if (c == '?') {
      printCommandHelp(dataPtr);
    } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
      // command start, read up to 3 numerical digits as value
      command = c;
      char i = 0;
      unsigned long start = millis();
      while (millis() - start < 1000 && i < 3) {
        if (Serial.available() > 0) {
          c = Serial.read();
        } else {
          c = 0;
        }

        if (c >= '0' && c <= '9') {
          value[i++] = c;
        } else if (c != 0) {
          break;
        }
      }

      return _handleCommand(command, String(value).toInt(), dataPtr);
    } else {
      // ignore
    }
  }

  return false;
}

bool Commands::_handleCommand(char command, int value, FlashData *data) {
  Serial.print("Got command: ");
  Serial.print(command);
  Serial.println(value);

  switch (command) {
    case 'C':
      data->channel = value;
      return true;
    case 'S':
      data->sensitivity = value;
      return true;
    case 'M':
      if (value == 0) {
        data->flags = data->flags & (!EnableMixing);
      } else {
        data->flags = data->flags | EnableMixing;
      }
      return true;
    case 'L':
      if (value == 0) {
        data->flags = data->flags & (!InvertLeftRight);
      } else {
        data->flags = data->flags | InvertLeftRight;
      }
      return true;
    case 'U':
      if (value == 0) {
        data->flags = data->flags & (!InvertUpDown);
      } else {
        data->flags = data->flags | InvertUpDown;
      }
      return true;
    case 'A':
      if (value == 0) {
        data->flags = data->flags & (!SwapAxes);
      } else {
        data->flags = data->flags | SwapAxes;
      }
      return true;
  }

  return false;
}