#ifndef __SM64_BUFFER_H__
#define __SM64_BUFFER_H__

extern u64 entry_stack[BOOT_STACK_LEN];
extern u64 idle_stack[IDLE_STACK_LEN];
extern u64 sc_stack[MAIN_STACK_LEN];
extern u64 aud_stack[MAIN_STACK_LEN];
extern u64 gfx_stack[MAIN_STACK_LEN];
extern u64 gfx_sp_yield[OS_YIELD_DATA_SIZE/8];
extern SAVE save;
extern u64 gfx_sp_stack[SP_DRAM_STACK_SIZE64];
extern FRAME frame_data[2];

#endif /* __SM64_BUFFER_H__ */
