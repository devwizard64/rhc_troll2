#include <ultra64.h>
#include "internal.h"

__OSThreadTail __osThreadTail = {NULL, -1};
DALIGN OSThread *__osRunQueue = (OSThread *)&__osThreadTail;
DALIGN OSThread *__osActiveQueue = (OSThread *)&__osThreadTail;
DALIGN OSThread *__osRunningThread = NULL;
DALIGN OSThread *__osFaultedThread = NULL;
