#define DEBUG       false  // serial output

// Default parameters if flash has no data
#ifdef VERSION1
  #define CHANNEL     100    // default channel if not in flash
#else
  #define CHANNEL     110    // default channel if not in flash
#endif

#define flash        SEGMENT_D // four segments, segment A read-only
#define CHECK_BYTE  0xA1  // indicates if flash has valid data

// hardware connections
#ifdef VERSION1
  #define TRIM_BUTTON P2_4
  #define BUZZER      P2_3 
  #define LEFT_RIGHT  P1_1
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  Enrf24 radio(P2_0, P2_1, P2_2); // P2.0=CE, P2.1=CSN, P2.2=IRQ
#else
  #define TRIM_BUTTON P2_1
  #define BUZZER      P2_0 
  #define LEFT_RIGHT  P1_0
  #define UP_DOWN     P1_3
  #define BATTERY     P1_4
  Enrf24 radio(P2_6, P2_7, P2_5); // CE, CSN, IRQ
#endif

// Hard-coded parameters
#define MIX_FACTOR      60  // ratio of aeleron to elevetor, out of 255
#define MIN_SENSITIVITY 50  // min allowed sensitivity
#define MAX_TRIM        350 // max allowed trim 0 -> 512
#define TRIM_TIMEOUT    2000  // min millis between trims

// receive address
const uint8_t rxaddr[] = {0xDE, 0xAD, 0xBE, 0xEF, 0x01};