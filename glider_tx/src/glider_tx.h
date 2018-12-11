#ifndef __GLIDER_TX_H__

#define __GLIDER_TX_H__

// Config data stored into flash (max 64 bytes)
struct FlashData {
  unsigned char checkByte;
  unsigned char channel;
  unsigned char sensitivity;
  int trimUpDown;
  int trimLeftRight;
} data;

#endif