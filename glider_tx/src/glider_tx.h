#ifndef __GLIDER_TX_H__
#define __GLIDER_TX_H__

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

#endif