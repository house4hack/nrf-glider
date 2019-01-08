#ifndef __COMMANDS_H__
#define __COMMANDS_H__
#include "Arduino.h"
#include "flash.h"

class Commands {
    public:
        void printVersion();
        void printCommandHelp(FlashData data);
        void handleCommands(FlashData data);

    private:
        void _printCommandHelp(char command, const char* item, int value);
};

#endif