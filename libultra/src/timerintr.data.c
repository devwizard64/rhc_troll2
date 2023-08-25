#include <ultra64.h>
#include "internal.h"

BALIGN OSTimer __osBaseTimer;
OSTime __osCurrentTime;
u32 __osBaseCounter;
u32 __osViIntrCount;
u32 __osTimerCounter;

DALIGN OSTimer *__osTimerList = &__osBaseTimer;
