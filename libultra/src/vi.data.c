#include <ultra64.h>
#include "internal.h"

__OSViContext vi[2] = {0};
DALIGN __OSViContext *__osViCurr = &vi[0];
DALIGN __OSViContext *__osViNext = &vi[1];
DALIGN u32 osViNtscEnabled = 1;
DALIGN u32 osViClock = 48681812;
