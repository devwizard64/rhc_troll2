#include <ultra64.h>
#include "internal.h"

BALIGN OSMesg siAccessBuf[1];
BALIGN OSMesgQueue __osSiAccessQueue;

DALIGN u32 __osSiAccessQueueEnabled = 0;
