extern void mus_output(short *buffer, unsigned int size);
extern void mus_init(const char *start, const char *end);
#define mus_exit() (aud_callback = NULL)
