#include "level2.h"

int pl_demo_802572B0(UNUSED PLAYER *pl)
{
	if (pl->star_prev < pl->star)
	{
		pl->star_prev = pl->star;
		if (pl->star-1 < 3)
		{
			int star = save_star_get(save_course-1);
			if      (!(star & 1)) message_80331620 = 1;
			else if (!(star & 2)) message_80331620 = 2;
			else if (!(star & 4)) message_80331620 = 3;
			else if (!(star & 8)) message_80331620 = 4;
			message_str = str_level2[message_80331620-1];
			return 141 + pl->star-1;
		}
	}
	return 0;
}

void pl_staranime(PLAYER *pl)
{
	static u8 anime;
	float x = (float)-97/4;
	float z = (float)+84/4;
	float s = sin(pl->ang[1]);
	float c = cos(pl->ang[1]);
	pl->obj->list.s.pos[0] = pl->pos[0] + c*x + s*z;
	pl->obj->list.s.pos[1] = pl->pos[1];
	pl->obj->list.s.pos[2] = pl->pos[2] + c*z - s*x;
	pl->obj->list.s.ang[0] = 0;
	pl->obj->list.s.ang[1] = pl->ang[1];
	pl->obj->list.s.ang[2] = 0;
	if (pl->timer == 0) anime = 209;
	player_802509B8(pl, anime);
	if (player_80250940(pl)) if (++anime >= 212) anime = 210;
}

#if 0
void mario_updatenew(void)
{
	int i;
	for (i = 0; i < 12; i++)
	{
		if (setab[i][0] > 0)
		{
			setab[i][0]--;
			dprintf(80, 192-16*i, "%04x", setab[i][1]);
		}
	}
	if (cont_1->held & L_TRIG)
	{
		mario->state = 0x03000880;
		mario->vel[1] = 40;
	}
#if 0
	dprintf(20, 92, "%04x", mario->state >> 16);
	dprintf(68, 92, "%04x", mario->state & 0xFFFF);
	dprintf(128, 92, "%04x", mario->event);
	dprintf(188, 92, "%d", mario->mode);
	dprintf(200, 92, "%d", mario->timer);
#endif
#if 0
	dprintf(20, 74, "x %d", mario->pos[0]);
	dprintf(20, 56, "y %d", mario->pos[1]);
	dprintf(20, 38, "z %d", mario->pos[2]);
	dprintf(20, 20, "a %04x", (u16)mario->ang[1]);
#endif
}
#endif
