#ifndef __SM64_O_SCRIPT_H__
#define __SM64_O_SCRIPT_H__

#include <sm64/defshape.h>
#include <sm64/defobject.h>
#include <sm64/script_s.h>

#define o_init(type) \
	_C(0x00, type, 0)
#define o_sleep(time) \
	_C(0x01, 0, time)
#define o_call(script) \
	_C(0x02, 0, 0); \
	_P(script)
#define o_return() \
	_C(0x03, 0, 0)
#define o_jump(script) \
	_C(0x04, 0, 0); \
	_P(script)
#define o_for(count) \
	_C(0x05, 0, count)
#define o_fend() \
	_C(0x06, 0, 0)
#define o_fcontinue() \
	_C(0x07, 0, 0)
#define o_while() \
	_C(0x08, 0, 0)
#define o_wend() \
	_C(0x09, 0, 0)
#define o_exit() \
	_C(0x0A, 0, 0)
#define o_exit2() \
	_C(0x0B, 0, 0)
#define o_callback(callback) \
	_C(0x0C, 0, 0); \
	_P(callback)
#define o_addf(mem, val) \
	_C(0x0D, mem, val)
#define o_setf(mem, val) \
	_C(0x0E, mem, val)
#define o_addi(mem, val) \
	_C(0x0F, mem, val)
#define o_seti(mem, val) \
	_C(0x10, mem, val)
#define o_setflag(mem, val) \
	_C(0x11, mem, val)
#define o_clrflag(mem, val) \
	_C(0x12, mem, val)
#define o_setrandr(mem, val, shift) \
	_C(0x13, mem, val); \
	_H(shift, 0)
#define o_setrandf(mem, val, mul) \
	_C(0x14, mem, val); \
	_H(mul, 0)
#define o_setrandi(mem, val, mul) \
	_C(0x15, mem, val); \
	_H(mul, 0)
#define o_addrandf(mem, val, mul) \
	_C(0x16, mem, val); \
	_H(mul, 0)
#define o_addrandr(mem, val, shift) \
	_C(0x17, mem, val); \
	_H(shift, 0)
/* 0x18 */
/* 0x19 */
/* 0x1A */
#define o_shape(shape) \
	_C(0x1B, 0, shape)
#define o_object(shape, script) \
	_C(0x1C, 0, 0); \
	_W(shape); \
	_P(script)
#define o_destroy() \
	_C(0x1D, 0, 0)
#define o_ground() \
	_C(0x1E, 0, 0)
#define o_memaddf(mem, a, b) \
	_B(0x1F, mem, a, b)
#define o_memaddi(mem, a, b) \
	_B(0x20, mem, a, b)
#define o_billboard() \
	_C(0x21, 0, 0)
#define o_shapehide() \
	_C(0x22, 0, 0)
#define o_col_hit(radius, height) \
	_C(0x23, 0, 0); \
	_H(radius, height)
/* 0x24 */
#define o_memsleep(mem) \
	_C(0x25, mem, 0)
#define o_for2(count) \
	_C(0x26, count, 0)
#define o_ptr(mem, ptr) \
	_C(0x27, mem, 0); \
	_P(ptr)
#define o_anime(anime) \
	_C(0x28, anime, 0)
#define o_objectarg(shape, script, arg) \
	_C(0x29, 0, arg); \
	_W(shape); \
	_P(script)
#define o_map(map) \
	_C(0x2A, 0, 0); \
	_P(map)
#define o_col_off(radius, height, offset) \
	_C(0x2B, 0, 0); \
	_H(radius, height); \
	_H(offset, 0)
#define o_child(shape, script) \
	_C(0x2C, 0, 0); \
	_W(shape); \
	_P(script)
#define o_origin() \
	_C(0x2D, 0, 0)
#define o_col_dmg(radius, height) \
	_C(0x2E, 0, 0); \
	_H(radius, height)
#define o_col_type(type) \
	_C(0x2F, 0, 0); \
	_W(type)
#define o_physics(wall_r, gravity, bounce, drag, friction, density, g, h) \
	_C(0x30, 0, 0); \
	_H(wall_r, gravity); \
	_H(bounce, drag); \
	_H(friction, density); \
	_H(g, h)
#define o_col_arg(arg) \
	_C(0x31, 0, 0); \
	_W(arg)
#define o_scale(scale) \
	_C(0x32, 0, scale)
#define o_memclrflag(mem, flag) \
	_C(0x33, mem, 0); \
	_W(flag)
#define o_inc(mem, time) \
	_C(0x34, mem, time)
#define o_shapedisable() \
	_C(0x35, 0, 0)
#define o_sets(mem, val) \
	_C(0x36, 0, 0); \
	_W(val)
#define o_splash(splash) \
	_C(0x37, 0, 0); \
	_P(splash)

#endif /* __SM64_DEFOSCRIPT_H__ */
