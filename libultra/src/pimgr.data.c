#include <ultra64.h>
#include "internal.h"

BALIGN OSThread piThread;
BALIGN u64 piThreadStack[0x1000/8];
BALIGN OSMesgQueue piEventQueue;
BALIGN OSMesg piEventBuf[1];

OSDevMgr __osPiDevMgr = {0};
