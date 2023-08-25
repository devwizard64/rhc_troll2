#include <sm64.h>

extern void game_exit_fadeout(int, int);
extern void game_8024A9CC(PLAYER *, int);
extern int player_80250940(PLAYER *);
extern int player_802509B8(PLAYER *, int);
extern int player_80252CF4(PLAYER *, u32, u32);
extern int pl_demo_80257640(int);
extern void *s_stage_background(int code, SHAPE *shape, void *data);
extern SHORT camera_8028FF04(SHORT, OBJECT *, SHORT);
extern SHORT camera_8029000C(SHORT, OBJECT *);
extern SHORT obj_lib_8029E530(SHORT, SHORT, SHORT);
extern OBJECT *obj_lib_8029F95C(O_SCRIPT *);
extern void obj_lib_802A2320(void);
extern void obj_lib_802A2348(int);
extern void obj_lib_802A34A4(OBJECT *, OBJ_COL *);
extern void obj_lib_802A37AC(void);
extern void obj_lib_802A4704(void);
extern void obj_lib_802A4728(void);
extern void obj_lib_802A5588(float, float, float, float);
extern void message_802D8D48(int);
extern void object_b_802F2B88(float, float, float);
extern void map_data_803839CC(void);

#include "PL.h"

#include "sprite.h"
#include "paint.h"
#include "nes/defsnd.h"
#include "nes/snd.h"
#include "nes/mus.h"

#include "new/audio.c"
#include "new/game.c"
#include "new/collision.c"
#include "new/player.c"

#include "new/userinfo.c"
#include "new/stage1.c"
#include "new/stage2.c"
#include "new/grounds.c"
#include "new/ending.c"

#include "new/kinopio.c"

#include "new/bouncearea.c"
#include "new/teleport.c"

#include "new/bombking.c"
#include "new/door.c"

SHORT object_b_802E4E90(void);
void object_b_802E5360(OBJECT *, SHORT);
void object_b_802E5C6C(int, int, int, int);
void object_b_802E5EA4(void);
void object_b_802E7324(s32 *);

#include "new/cannonbomb.c"
#include "new/cannonlid.c"
#include "new/ironball.c"
#include "new/redcoin.c"
#include "new/chest.c"

#include "new/retrolift.c"
#include "new/retrostar.c"

#include "new/jugem.c"

#include "new/logo.c"
