#ifndef __COMMANDS_H__
#define __COMMANDS_H__
#include "Arduino.h"
#include "flash.h"

class Commands {
    public:
        void printVersion();
        void printCommandHelp(FlashData *data);
        bool handleCommands(FlashData *data);

    private:
        void _printCommandHelp(char command, const char* item, int value);
        bool _handleCommand(char command, int value, FlashData *data);
};

#endif