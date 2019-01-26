#include "commands.h"

Commands::Commands() {
  verboseMode = false;
}

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
  _printCommandHelp('S', "scaling", data.sensitivity);
  _printCommandHelp('F', "mix factor", data.mixFactor);
  _printCommandHelp('E', "exponential factor", data.exponential);
  _printCommandHelp('M', "mixing", EnableMixing & data.flags);
  _printCommandHelp('L', "invert left/right", InvertLeftRight & data.flags);
  _printCommandHelp('U', "invert up/down", InvertUpDown & data.flags);
  _printCommandHelp('A', "swap axes", SwapAxes & data.flags);
  _printCommandHelp('V', "verbose mode", verboseMode);
}

// Example commands: C100 S100 F60 E0 A0 L0 U0 M1 
bool Commands::handleCommands(FlashData *dataPtr) {
  FlashData data = (*dataPtr);
  bool ret = false;

  if (Serial.available() <= 0) return false;
  char len = Serial.readBytes(buf, sizeof(buf));

  if (millis() - cmdStart > 1000) {
    // timeout previous command
    if (command != 0 && valuePtr > 0) {
      _handleCommand(command, String(value).toInt(), dataPtr);
      command = 0;
      ret = true;
    }
  }

  if (len == 0) return false;
  for (int i=0; i < len; i++) {
    char c = buf[i];
    if (c == '?') {
      printCommandHelp(dataPtr);
    } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
      // command start
      command = c;
      for (c=0; c < sizeof(value); c++) value[c] = 0;
      valuePtr = 0;
      cmdStart = millis();
    } else if (command != 0 && (c >= '0' && c <= '9')) {
      // read up to 3 numerical digits as command parameter
      value[valuePtr++] = c;

      if (valuePtr >= 3) {
        _handleCommand(command, String(value).toInt(), dataPtr);
        command = 0;
        ret = true;
      }
    } else {
      // other characters act as whitespace
      if (command != 0 && valuePtr > 0) {
        _handleCommand(command, String(value).toInt(), dataPtr);
        command = 0;
        ret = true;
      }
    }
  }

  return ret;
}

bool Commands::isVerbose() {
  return verboseMode;
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
    case 'F':
      data->mixFactor = value;
      return true;
    case 'E':
      data->exponential = value;
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
    case 'V':
      if (value == 0) {
        verboseMode = false;
      } else {
        verboseMode = true;
      }
      return false;
  }

  return false;
}