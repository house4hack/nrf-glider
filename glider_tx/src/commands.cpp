#include "commands.h"

void Commands::printVersion() {
  #ifdef VERSION1
    Serial.println("NRF Glider v1.0");
  #else
    Serial.println("NRF Glider v2.0");
  #endif
}

void Commands::_printCommandHelp(char command, char* item, int value) {
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
}