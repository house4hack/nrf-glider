#ifndef __FLASH_H__
#define __FLASH_H__
#include "MspFlash.h"
#include "glider_tx.h"
#include "config.h"

#define flash        SEGMENT_D // four segments, segment A read-only
#define CHECK_BYTE  0xA1  // indicates if flash has valid data

// What is stored in the flags byte
enum Flags {
  InvertUpDown,
  InvertLeftRight,
  SwapAxes,
  EnableMixing
};

// Config data stored into flash (max 64 bytes)
struct FlashData {
  unsigned char checkByte;
  unsigned char channel;
  unsigned char sensitivity;
  unsigned char exponential;
  unsigned char mixFactor;
  int trimUpDown;
  int trimLeftRight;
  unsigned char flags; // see Flags enum for what each bit stores
};

class FlashHandler {
    public:
        void readData(FlashData *data);
        void writeData(FlashData *data);
    
    private:
        bool sanityCheck(FlashData *dataIn);
};

#endif