#include <ultra64.h>

extern void __osPiGetAccess(void);
extern void __osPiRelAccess(void);

s32 osPiReadIo(u32 devAddr, u32 *data)
{
	register s32 ret;
	__osPiGetAccess();
	ret = osPiRawReadIo(devAddr, data);
	__osPiRelAccess();
	return ret;
}
