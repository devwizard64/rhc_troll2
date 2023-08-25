#include <ultra64.h>
#include "internal.h"

BALIGN OSMesg piAccessBuf[1];
BALIGN OSMesgQueue __osPiAccessQueue;

DALIGN u32 __osPiAccessQueueEnabled = 0;
