#ifndef __SM64_MAIN_H__
#define __SM64_MAIN_H__

#define SCREEN_WD               320
#define SCREEN_HT               240
#define BORDER_HT               8

typedef struct sc_task
{
	OSTask task;
	OSMesgQueue *mq;
	OSMesg msg;
	s32 state;
}
SC_TASK;

typedef struct sc_client
{
	OSMesgQueue *mq;
	OSMesg msg;
}
SC_CLIENT;

extern OSThread rmon_thread;
extern OSThread idle_thread;
extern OSThread sc_thread;
extern OSThread gfx_thread;
extern OSThread aud_thread;
extern OSMesgQueue pi_mq;
extern OSMesgQueue sc_mq;
extern OSMesgQueue sc_task_mq;
extern OSMesg dma_mbox;
extern OSMesg pi_mbox[32];
extern OSMesg si_mbox;
extern OSMesg sc_mbox[16];
extern OSMesg sc_task_mbox[16];
extern OSMesgQueue dma_mq;
extern OSMesgQueue si_mq;
extern SC_CLIENT *sc_client_1;
extern SC_CLIENT *sc_client_2;
extern SC_TASK *sc_task;
extern SC_TASK *sc_audtask;
extern SC_TASK *sc_gfxtask;
extern SC_TASK *sc_audtask_next;
extern SC_TASK *sc_gfxtask_next;
extern char sc_aud;
extern u32 sc_vi;
extern s8 reset_timer;
extern s8 reset_frame;
extern char sys_halt;
extern char debug_stage;
extern char debug_thread;
extern char debug_time;
extern char debug_mem;

extern void debug_update(void);
extern void sc_client_init(
	int i,
	SC_CLIENT *client,
	OSMesgQueue *mq,
	OSMesg msg
);
extern void sc_queue_task(SC_TASK *task);
extern void sc_queue_audtask(SC_TASK *task);
extern void sc_queue_gfxtask(SC_TASK *task);
extern void sc_aud_enable(void);
extern void sc_aud_disable(void);
extern void entry(void);

#endif /* __SM64_MAIN_H__ */
