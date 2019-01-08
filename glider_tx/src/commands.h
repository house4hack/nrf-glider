#ifndef __COMMANDS_H__
#define __COMMANDS_H__
#include "Arduino.h"
#include "glider_tx.h"

class Commands {
    public:
        void printVersion();
        void printCommandHelp(FlashData data);
        void handleCommands(FlashData data);

    private:
        void _printCommandHelp(char command, char * item, int value);
};

#endif