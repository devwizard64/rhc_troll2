#ifndef __SM64_COLLISION_H__
#define __SM64_COLLISION_H__

typedef struct collision
{
	u32 type;
	int (*callback)(struct player *pl, u32 flag, struct object *obj);
}
COLLISION;

extern u8 collision_8033B270;
extern s16 collision_8033B272;
extern COLLISION collision_data[];
extern u32 collision_8032DA48[];
extern u32 collision_8032DA6C[];
extern u8 collision_8032DA90;
extern u8 collision_8032DA94;
extern u8 collision_8032DA98;

extern int collision_8024DB2C(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024DBF0(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024DC28(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024DE4C(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024DF10(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E0C4(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E420(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E6EC(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E778(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E7D4(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E8F0(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024E9D0(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024EAD8(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024EC54(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024ED84(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024EE44(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024EFF8(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F170(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F1E0(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F354(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F4AC(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F55C(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F5CC(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F6A4(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024F8BC(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024FA60(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024FB30(struct player *pl, u32 flag, struct object *obj);
extern int collision_8024FD2C(struct player *pl, u32 flag, struct object *obj);
extern int collision_80250198(struct player *pl, u32 flag, struct object *obj);

#endif /* __SM64_COLLISION_H__ */
