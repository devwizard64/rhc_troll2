extern void snd_play(unsigned int snd);
extern int snd_ispause(void);
extern void snd_output(short *buffer, unsigned int size);
extern void snd_init(void);
#define snd_exit() (aud_callback = NULL)
