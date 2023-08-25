#include <ultra64.h>

extern void __osPiGetAccess(void);
extern void __osPiRelAccess(void);

s32 osPiWriteIo(u32 devAddr, u32 data)
{
	s32 ret;
	__osPiGetAccess();
	ret = osPiRawWriteIo(devAddr, data);
	__osPiRelAccess();
	return ret;
}
