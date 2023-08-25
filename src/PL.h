#ifndef __PL_H__
#define __PL_H__

#define PL_OK                   0
#define PL_ENOTSUP              1
#define PL_ESIZE                2
#define PL_EPIPE                3
#define PL_ENOTRECOVERABLE      4
#define PL_EAGAIN               5
#define PL_EINVAL               6

typedef struct PL_Version_s
{
	u16 major;
	u16 minor;
	u16 patch;
}
PL_Version;

typedef struct PL_GfxPlugin_s
{
	u32 flag;
	char name[12];
}
PL_GfxPlugin;

extern int PL_GetMagic(void);
extern int PL_GetCoreVersion(PL_Version *version);
extern int PL_GetToken(u32 *token);
extern int PL_GetCheatsUsed(void);
extern int PL_GetGfxPlugin(PL_GfxPlugin *info);
extern int PL_GetCheatFlags(void);
extern int PL_ClearCheatsUsed(void);
extern int PL_ClearCheatFlags(u8 flags);
extern int PL_GetLauncherVersion(PL_Version *version);
extern int PL_GetUsername(char *username);
extern int PL_GetAvatar(const char *username, void *avatar, int siz, int flag);

#endif /* __PL_H__ */
