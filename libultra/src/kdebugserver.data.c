#include <ultra64.h>
#include "internal.h"

BALIGN u8 kdebugserver__buffer[0x100];
BALIGN OSThread __osThreadSave;

DALIGN u32 debug_state = 0;
DALIGN u32 numChars = 0;
DALIGN u32 numCharsToReceive = 0;
