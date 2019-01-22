#ifndef __CONFIG_H__
#define __CONFIG_H__

//#define DEBUG

// Default parameters if flash has no data
#ifdef VERSION1
  #define CHANNEL     100    // default channel if not in flash
#else
  #define CHANNEL     120    // default channel if not in flash
#endif

// hardware connections
#ifdef VERSION1
  #define TRIM_BUTTON P2_4
  #define BUZZER      P2_3 
  #define LEFT_RIGHT  P1_1
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  #define NRF_CE      P2_0
  #define NRF_CSN     P2_1
  #define NRF_IRQ     P2_2
#else
  #define TRIM_BUTTON P2_1
  #define BUZZER      P2_0 
  #define LEFT_RIGHT  P1_0
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  #define NRF_CE      P2_6
  #define NRF_CSN     P2_7
  #define NRF_IRQ     P2_5
#endif

// Hard-coded parameters
#define MIN_SENSITIVITY 50  // min allowed sensitivity
#define MAX_TRIM        350 // max allowed trim 0 -> 512
#define TRIM_TIMEOUT    2000  // min millis between trims

// Joystick parameters - hard-coded because they shouldn't change
// Use verbose mode to find these values for your hardware
#ifdef VERSION1
  #define LR_LOW          80
  #define LR_HIGH         1020
  #define UD_LOW          49
  #define UD_HIGH         1020
#else
  #define LR_LOW          0
  #define LR_HIGH         1023
  #define UD_LOW          0
  #define UD_HIGH         1023
#endif

// receive address
const uint8_t rxaddr[] = {0xDE, 0xAD, 0xBE, 0xEF, 0x01};

#endif