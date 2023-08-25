#include <ultra64.h>
#include "internal.h"

BALIGN OSThread viThread;
BALIGN u64 viThreadStack[0x1000/8];
BALIGN OSMesgQueue viEventQueue;
BALIGN OSMesg viEventBuf[5];
BALIGN OSIoMesg viRetraceMsg;
BALIGN OSIoMesg viCounterMsg;
u16 viMgrMain__retrace;

OSDevMgr __osViDevMgr = {0};
