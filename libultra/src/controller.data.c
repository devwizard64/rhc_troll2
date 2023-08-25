#include <ultra64.h>
#include "internal.h"

BALIGN u32 __osContPifRam[0x40/4];
u8 __osContLastCmd;
u8 __osMaxControllers;
BALIGN OSTimer __osEepromTimer;
BALIGN OSMesgQueue __osEepromTimerQ;
BALIGN OSMesg __osEepromTimerMsg[1];

DALIGN u32 __osContinitialized = 0;
