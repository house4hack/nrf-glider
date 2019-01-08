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

void Commands::printCommandHelp(FlashData data) {
  printVersion();
  Serial.print("Commands (g-code style):\n");
  _printCommandHelp('C', "channel", data.channel);
  _printCommandHelp('S', "sensitivity", data.sensitivity);
}

void Commands::handleCommands(FlashData data) {
  char command, c;
  char value[3];

  while (Serial.available() > 0) {
    c = Serial.read();
    if (c == '?') {
      printCommandHelp(data);
    } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
      // command start, read up to 3 numerical digits as value
      command = c;
      char i = 0;
      while (Serial.available() > 0 && i < 3) {
        c = Serial.read();
        if (c >= '0' && c <= '9') {
          value[i++] = c;
        }
      }

      Serial.print("Got command: ");
      Serial.print(command);
      Serial.println(value);
    } else {
      // ignore
    }
  }
}