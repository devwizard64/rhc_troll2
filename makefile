TARGET  ?= E00

BUILD   := build/$(TARGET)
TITLE   := ワールズエンド・ダンスホール
$(eval VERSION := $$$(TARGET))
REGION  := $(subst $(VERSION),,$(TARGET))

CODE_OBJ := \
	$(BUILD)/src/main.o \
	$(BUILD)/src/graphics.o \
	$(BUILD)/src/audio.o \
	$(BUILD)/src/fault.o \
	$(BUILD)/src/printf.o \
	$(BUILD)/src/watch.o \
	$(BUILD)/src/error.o \
	$(BUILD)/src/game.o $(BUILD)/src/game.data.o \
	$(BUILD)/src/collision.o $(BUILD)/src/collision.data.o \
	$(BUILD)/src/player.o $(BUILD)/src/player.data.o \
	$(BUILD)/src/pl_physics.o $(BUILD)/src/pl_physics.data.o \
	$(BUILD)/src/pl_demo.o $(BUILD)/src/pl_demo.data.o \
	$(BUILD)/src/pl_hang.o $(BUILD)/src/pl_hang.data.o \
	$(BUILD)/src/pl_wait.o $(BUILD)/src/pl_wait.data.o \
	$(BUILD)/src/pl_walk.o $(BUILD)/src/pl_walk.data.o \
	$(BUILD)/src/pl_jump.o $(BUILD)/src/pl_jump.data.o \
	$(BUILD)/src/pl_swim.o $(BUILD)/src/pl_swim.data.o \
	$(BUILD)/src/pl_grab.o $(BUILD)/src/pl_grab.data.o \
	$(BUILD)/src/pl_callback.o $(BUILD)/src/pl_callback.data.o \
	$(BUILD)/src/memory.o \
	$(BUILD)/src/save.o \
	$(BUILD)/src/scene.o \
	$(BUILD)/src/draw.o \
	$(BUILD)/src/sprite.o \
	$(BUILD)/src/time.o \
	$(BUILD)/src/slidec.o \
	$(BUILD)/src/camera.o $(BUILD)/src/camera.data.o \
	$(BUILD)/src/course.o \
	$(BUILD)/src/object.o $(BUILD)/src/object.data.o \
	$(BUILD)/src/obj_lib.o $(BUILD)/src/obj_lib.data.o \
	$(BUILD)/src/object_a.o $(BUILD)/src/object_a.data.o \
	$(BUILD)/src/obj_physics.o \
	$(BUILD)/src/obj_collision.o $(BUILD)/src/obj_collision.data.o \
	$(BUILD)/src/obj_list.o $(BUILD)/src/obj_list.data.o \
	$(BUILD)/src/obj_sfx.o \
	$(BUILD)/src/obj_debug.o $(BUILD)/src/obj_debug.data.o \
	$(BUILD)/src/wipe.o $(BUILD)/src/wipe.data.o \
	$(BUILD)/src/shadow.o $(BUILD)/src/shadow.data.o \
	$(BUILD)/src/background.o $(BUILD)/src/background.data.o \
	$(BUILD)/src/scroll.o $(BUILD)/src/scroll.data.o \
	$(BUILD)/src/obj_shape.o $(BUILD)/src/obj_shape.data.o \
	$(BUILD)/src/wave.o $(BUILD)/src/wave.data.o \
	$(BUILD)/src/dprint.o \
	$(BUILD)/src/message.o $(BUILD)/src/message.data.o \
	$(BUILD)/src/weather_snow.o $(BUILD)/src/weather_snow.data.o \
	$(BUILD)/src/weather_lava.o $(BUILD)/src/weather_lava.data.o \
	$(BUILD)/src/obj_data.o \
	$(BUILD)/src/hud.o $(BUILD)/src/hud.data.o \
	$(BUILD)/src/object_b.o $(BUILD)/src/object_b.data.o \
	$(BUILD)/src/object_c.o $(BUILD)/src/object_c.data.o \
	$(BUILD)/src/new.o \
	$(BUILD)/src/video.o \
	$(BUILD)/src/paint.o \
	$(BUILD)/src/pi/piread.o \
	$(BUILD)/src/pi/piwrite.o \
	$(BUILD)/src/pi/pirawwrite.o

ULIB_OBJ := \
	$(BUILD)/src/math.o $(BUILD)/src/math.data.o \
	$(BUILD)/src/math_table.o \
	$(BUILD)/src/shape.o \
	$(BUILD)/src/s_script.o $(BUILD)/src/s_script.data.o \
	$(BUILD)/src/p_script.o $(BUILD)/src/p_script.data.o \
	$(BUILD)/src/map.o $(BUILD)/src/map.data.o \
	$(BUILD)/src/map_data.o $(BUILD)/src/map_data.data.o \
	$(BUILD)/src/o_script.o $(BUILD)/src/o_script.data.o \
	$(BUILD)/src/PL.o

FF_OBJ := \
	$(BUILD)/src/ff/memset.o \
	$(BUILD)/src/ff/memcmp.o \
	$(BUILD)/src/ff/diskio.o \
	$(BUILD)/src/ff/ff.o \
	$(BUILD)/src/ff/ffsystem.o \
	$(BUILD)/src/ff/ffunicode.o

MENU_OBJ := \
	$(BUILD)/src/title.o \
	$(BUILD)/src/title_bg.o \
	$(BUILD)/src/file_select.o $(BUILD)/src/file_select.data.o \
	$(BUILD)/src/star_select.o $(BUILD)/src/star_select.data.o

NES_OBJ := \
	$(BUILD)/src/nes/nes.o

AUDIO_OBJ := \
	$(BUILD)/src/audio/a.o $(BUILD)/src/audio/a.data.o \
	$(BUILD)/src/audio/b.o $(BUILD)/src/audio/b.data.o \
	$(BUILD)/src/audio/c.o \
	$(BUILD)/src/audio/d.o $(BUILD)/src/audio/d.data.o \
	$(BUILD)/src/audio/e.o $(BUILD)/src/audio/e.data.o \
	$(BUILD)/src/audio/f.o $(BUILD)/src/audio/f.data.o \
	$(BUILD)/src/audio/g.o $(BUILD)/src/audio/g.data.o \
	$(BUILD)/src/audio/data.o

FACE_OBJ := \
	$(BUILD)/src/face/main.o $(BUILD)/src/face/main.data.o \
	$(BUILD)/src/face/mem.o $(BUILD)/src/face/mem.data.o \
	$(BUILD)/src/face/sfx.o \
	$(BUILD)/src/face/draw.o $(BUILD)/src/face/draw.data.o \
	$(BUILD)/src/face/object.o $(BUILD)/src/face/object.data.o \
	$(BUILD)/src/face/skin.o $(BUILD)/src/face/skin.data.o \
	$(BUILD)/src/face/particle.o $(BUILD)/src/face/particle.data.o \
	$(BUILD)/src/face/dynlist.o $(BUILD)/src/face/dynlist.data.o \
	$(BUILD)/src/face/gadget.o $(BUILD)/src/face/gadget.data.o \
	$(BUILD)/src/face/stdio.o $(BUILD)/src/face/stdio.data.o \
	$(BUILD)/src/face/joint.o $(BUILD)/src/face/joint.data.o \
	$(BUILD)/src/face/net.o $(BUILD)/src/face/net.data.o \
	$(BUILD)/src/face/math.o $(BUILD)/src/face/math.data.o \
	$(BUILD)/src/face/shape.o $(BUILD)/src/face/shape.data.o \
	$(BUILD)/src/face/gfx.o $(BUILD)/src/face/gfx.data.o \
	$(BUILD)/src/face/bss.o

IDO_C := \
	$(BUILD)/src/main.o \
	$(BUILD)/src/audio.o \
	$(BUILD)/src/memory.o \
	$(BUILD)/src/save.o \
	$(BUILD)/src/scene.o \
	$(BUILD)/src/draw.o \
	$(BUILD)/src/time.o \
	$(BUILD)/src/course.o \
	$(BUILD)/src/obj_physics.o \
	$(BUILD)/src/obj_sfx.o \
	$(BUILD)/src/dprint.o \
	$(BUILD)/src/obj_data.o \
	$(BUILD)/src/title.o \
	$(BUILD)/src/title_bg.o \
	$(BUILD)/data/cimg.o \
	$(BUILD)/data/zimg.o \
	$(BUILD)/data/buffer.o \
	$(BUILD)/data/fifo.o

OBJ := \
	build/libultra/src/PR/rspboot.o \
	build/libultra/src/PR/gspFast3D.fifo.o \
	build/libultra/src/PR/aspMain.o \
	$(BUILD)/code.o \
	$(BUILD)/ulib.o \
	$(BUILD)/face.o \
	$(BUILD)/src/face/data.o

DATA := \
	$(BUILD)/data/cimg.o \
	$(BUILD)/data/zimg.o \
	$(BUILD)/data/buffer.o \
	$(BUILD)/data/fifo.o \
	$(BUILD)/data/main.o \
	$(BUILD)/data/game.o \
	$(BUILD)/data/anime.o \
	$(BUILD)/data/demo.o

SZP := \
	$(BUILD)/data/gfx.szp.o \
	$(BUILD)/data/setup.szp.o \
	$(BUILD)/data/avatar.szp.o \
	$(BUILD)/data/weather/gfx.szp.o

OBJECT_DATA := \
	$(BUILD)/data/object/object_a.o \
	$(BUILD)/data/object/player.o \
	$(BUILD)/data/object/object_b.o \
	$(BUILD)/data/object/object_c.o \
	$(BUILD)/data/object/camera.o

SHAPE_SZP := \
	$(BUILD)/shape/player/gfx.szp.o \
	$(BUILD)/shape/1a/gfx.szp.o \
	$(BUILD)/shape/1b/gfx.szp.o \
	$(BUILD)/shape/1c/gfx.szp.o \
	$(BUILD)/shape/1d/gfx.szp.o \
	$(BUILD)/shape/1e/gfx.szp.o \
	$(BUILD)/shape/1f/gfx.szp.o \
	$(BUILD)/shape/1g/gfx.szp.o \
	$(BUILD)/shape/1h/gfx.szp.o \
	$(BUILD)/shape/1i/gfx.szp.o \
	$(BUILD)/shape/1j/gfx.szp.o \
	$(BUILD)/shape/1k/gfx.szp.o \
	$(BUILD)/shape/2a/gfx.szp.o \
	$(BUILD)/shape/2b/gfx.szp.o \
	$(BUILD)/shape/2c/gfx.szp.o \
	$(BUILD)/shape/2d/gfx.szp.o \
	$(BUILD)/shape/2e/gfx.szp.o \
	$(BUILD)/shape/2f/gfx.szp.o \
	$(BUILD)/shape/3common/gfx.szp.o \
	$(BUILD)/shape/global/gfx.szp.o

SHAPE_DATA := \
	$(BUILD)/shape/player/shape.o \
	$(BUILD)/shape/1a/shape.o \
	$(BUILD)/shape/1b/shape.o \
	$(BUILD)/shape/1c/shape.o \
	$(BUILD)/shape/1d/shape.o \
	$(BUILD)/shape/1e/shape.o \
	$(BUILD)/shape/1f/shape.o \
	$(BUILD)/shape/1g/shape.o \
	$(BUILD)/shape/1h/shape.o \
	$(BUILD)/shape/1i/shape.o \
	$(BUILD)/shape/1j/shape.o \
	$(BUILD)/shape/1k/shape.o \
	$(BUILD)/shape/2a/shape.o \
	$(BUILD)/shape/2b/shape.o \
	$(BUILD)/shape/2c/shape.o \
	$(BUILD)/shape/2d/shape.o \
	$(BUILD)/shape/2e/shape.o \
	$(BUILD)/shape/2f/shape.o \
	$(BUILD)/shape/3common/shape.o \
	$(BUILD)/shape/global/shape.o

BACKGROUND_SZP := \
	$(BUILD)/data/background/title.szp.o \
	$(BUILD)/data/background/a.szp.o \
	$(BUILD)/data/background/b.szp.o \
	$(BUILD)/data/background/c.szp.o \
	$(BUILD)/data/background/d.szp.o \
	$(BUILD)/data/background/e.szp.o \
	$(BUILD)/data/background/f.szp.o \
	$(BUILD)/data/background/g.szp.o \
	$(BUILD)/data/background/h.szp.o \
	$(BUILD)/data/background/i.szp.o \
	$(BUILD)/data/background/j.szp.o

TEXTURE_SZP := \
	$(BUILD)/data/texture/a.szp.o \
	$(BUILD)/data/texture/b.szp.o \
	$(BUILD)/data/texture/c.szp.o \
	$(BUILD)/data/texture/d.szp.o \
	$(BUILD)/data/texture/e.szp.o \
	$(BUILD)/data/texture/f.szp.o \
	$(BUILD)/data/texture/g.szp.o \
	$(BUILD)/data/texture/h.szp.o \
	$(BUILD)/data/texture/i.szp.o \
	$(BUILD)/data/texture/j.szp.o \
	$(BUILD)/data/texture/k.szp.o \
	$(BUILD)/data/texture/l.szp.o

STAGE_SZP := \
	$(BUILD)/stage/title/logo.szp.o \
	$(BUILD)/stage/title/debug.szp.o \
	$(BUILD)/stage/select/gfx.szp.o \
	$(BUILD)/stage/paint/gfx.szp.o \
	$(BUILD)/stage/stage1/gfx.szp.o \
	$(BUILD)/stage/stage2/gfx.szp.o \
	$(BUILD)/stage/stage3/gfx.szp.o \
	$(BUILD)/stage/bbh/gfx.szp.o \
	$(BUILD)/stage/ccm/gfx.szp.o \
	$(BUILD)/stage/inside/gfx.szp.o \
	$(BUILD)/stage/hmc/gfx.szp.o \
	$(BUILD)/stage/ssl/gfx.szp.o \
	$(BUILD)/stage/bob/gfx.szp.o \
	$(BUILD)/stage/sl/gfx.szp.o \
	$(BUILD)/stage/wdw/gfx.szp.o \
	$(BUILD)/stage/jrb/gfx.szp.o \
	$(BUILD)/stage/thi/gfx.szp.o \
	$(BUILD)/stage/ttc/gfx.szp.o \
	$(BUILD)/stage/rr/gfx.szp.o \
	$(BUILD)/stage/grounds/gfx.szp.o \
	$(BUILD)/stage/bitdw/gfx.szp.o \
	$(BUILD)/stage/vcutm/gfx.szp.o \
	$(BUILD)/stage/bitfs/gfx.szp.o \
	$(BUILD)/stage/sa/gfx.szp.o \
	$(BUILD)/stage/bits/gfx.szp.o \
	$(BUILD)/stage/lll/gfx.szp.o \
	$(BUILD)/stage/ddd/gfx.szp.o \
	$(BUILD)/stage/wf/gfx.szp.o \
	$(BUILD)/stage/ending/gfx.szp.o \
	$(BUILD)/stage/courtyard/gfx.szp.o \
	$(BUILD)/stage/pss/gfx.szp.o \
	$(BUILD)/stage/cotmc/gfx.szp.o \
	$(BUILD)/stage/totwc/gfx.szp.o \
	$(BUILD)/stage/bitdwa/gfx.szp.o \
	$(BUILD)/stage/wmotr/gfx.szp.o \
	$(BUILD)/stage/bitfsa/gfx.szp.o \
	$(BUILD)/stage/bitsa/gfx.szp.o \
	$(BUILD)/stage/ttm/gfx.szp.o

STAGE_DATA := \
	$(BUILD)/stage/title/program.o \
	$(BUILD)/stage/title/shape.o \
	$(BUILD)/stage/select/program.o \
	$(BUILD)/stage/select/shape.o \
	$(BUILD)/stage/paint/program.o \
	$(BUILD)/stage/stage1/program.o \
	$(BUILD)/stage/stage1/shape.o \
	$(BUILD)/stage/stage2/program.o \
	$(BUILD)/stage/stage2/shape.o \
	$(BUILD)/stage/stage3/program.o \
	$(BUILD)/stage/stage3/shape.o \
	$(BUILD)/stage/bbh/program.o \
	$(BUILD)/stage/bbh/shape.o \
	$(BUILD)/stage/ccm/program.o \
	$(BUILD)/stage/ccm/shape.o \
	$(BUILD)/stage/inside/program.o \
	$(BUILD)/stage/inside/shape.o \
	$(BUILD)/stage/hmc/program.o \
	$(BUILD)/stage/hmc/shape.o \
	$(BUILD)/stage/ssl/program.o \
	$(BUILD)/stage/ssl/shape.o \
	$(BUILD)/stage/bob/program.o \
	$(BUILD)/stage/bob/shape.o \
	$(BUILD)/stage/sl/program.o \
	$(BUILD)/stage/sl/shape.o \
	$(BUILD)/stage/wdw/program.o \
	$(BUILD)/stage/wdw/shape.o \
	$(BUILD)/stage/jrb/program.o \
	$(BUILD)/stage/jrb/shape.o \
	$(BUILD)/stage/thi/program.o \
	$(BUILD)/stage/thi/shape.o \
	$(BUILD)/stage/ttc/program.o \
	$(BUILD)/stage/ttc/shape.o \
	$(BUILD)/stage/rr/program.o \
	$(BUILD)/stage/rr/shape.o \
	$(BUILD)/stage/grounds/program.o \
	$(BUILD)/stage/grounds/shape.o \
	$(BUILD)/stage/bitdw/program.o \
	$(BUILD)/stage/bitdw/shape.o \
	$(BUILD)/stage/vcutm/program.o \
	$(BUILD)/stage/vcutm/shape.o \
	$(BUILD)/stage/bitfs/program.o \
	$(BUILD)/stage/bitfs/shape.o \
	$(BUILD)/stage/sa/program.o \
	$(BUILD)/stage/sa/shape.o \
	$(BUILD)/stage/bits/program.o \
	$(BUILD)/stage/bits/shape.o \
	$(BUILD)/stage/lll/program.o \
	$(BUILD)/stage/lll/shape.o \
	$(BUILD)/stage/ddd/program.o \
	$(BUILD)/stage/ddd/shape.o \
	$(BUILD)/stage/wf/program.o \
	$(BUILD)/stage/wf/shape.o \
	$(BUILD)/stage/ending/program.o \
	$(BUILD)/stage/courtyard/program.o \
	$(BUILD)/stage/courtyard/shape.o \
	$(BUILD)/stage/pss/program.o \
	$(BUILD)/stage/pss/shape.o \
	$(BUILD)/stage/cotmc/program.o \
	$(BUILD)/stage/cotmc/shape.o \
	$(BUILD)/stage/totwc/program.o \
	$(BUILD)/stage/totwc/shape.o \
	$(BUILD)/stage/bitdwa/program.o \
	$(BUILD)/stage/bitdwa/shape.o \
	$(BUILD)/stage/wmotr/program.o \
	$(BUILD)/stage/wmotr/shape.o \
	$(BUILD)/stage/bitfsa/program.o \
	$(BUILD)/stage/bitfsa/shape.o \
	$(BUILD)/stage/bitsa/program.o \
	$(BUILD)/stage/bitsa/shape.o \
	$(BUILD)/stage/ttm/program.o \
	$(BUILD)/stage/ttm/shape.o

NES_SZP := \
	$(BUILD)/data/nes/app.szp.o \
	$(BUILD)/data/nes/music.szp.o

VID := \
	$(BUILD)/data/video/change.vid.o \
	$(BUILD)/data/video/Movie.vid.o \
	$(BUILD)/data/video/scatman.vid.o

AUDIO_DATA := \
	$(BUILD)/src/audio/heap.o \
	$(BUILD)/src/audio/bss.o \
	$(BUILD)/audio/ctl.o \
	$(BUILD)/audio/tbl.o \
	$(BUILD)/audio/seq.o \
	$(BUILD)/audio/bnk.o

INS := audio/se.ins audio/music.ins audio/stream.ins
SEQ := \
	audio/se/se.seq \
	audio/music/star_catch.seq \
	audio/music/title.seq \
	audio/music/field.seq \
	audio/music/castle.seq \
	audio/music/water.seq \
	audio/music/fire.seq \
	audio/music/arena.seq \
	audio/music/snow.seq \
	audio/music/slider.seq \
	audio/music/ghost.seq \
	audio/music/lullaby.seq \
	audio/music/dungeon.seq \
	audio/music/star_select.seq \
	audio/music/wing.seq \
	audio/music/metal.seq \
	audio/music/msg_bowser.seq \
	audio/music/bowser.seq \
	audio/music/hi_score.seq \
	audio/music/merry_go_round.seq \
	audio/music/fanfare.seq \
	audio/music/star.seq \
	audio/music/battle.seq \
	audio/music/arena_clear.seq \
	audio/music/endless.seq \
	audio/music/final.seq \
	audio/music/staff.seq \
	audio/music/solution.seq \
	audio/music/msg_toad.seq \
	audio/music/msg_peach.seq \
	audio/music/intro.seq \
	audio/music/final_clear.seq \
	audio/music/ending.seq \
	audio/music/file_select.seq \
	audio/music/msg_lakitu.seq \
	audio/music/field2.seq \
	audio/music/kinopio2.seq \
	audio/stream/stereo.seq \
	audio/stream/stereo.seq \
	audio/stream/stereo.seq

LIBULTRA_OBJ := \
	build/libultra/src/parameters.o \
	build/libultra/src/vitbl.o \
	build/libultra/src/settime.o \
	build/libultra/src/maptlb.o \
	build/libultra/src/unmaptlball.o \
	build/libultra/src/sprintf.o \
	build/libultra/src/createmesgqueue.o \
	build/libultra/src/seteventmesg.o build/libultra/src/seteventmesg.data.o \
	build/libultra/src/visetevent.o \
	build/libultra/src/createthread.o \
	build/libultra/src/recvmesg.o \
	build/libultra/src/sptask.o build/libultra/src/sptask.data.o \
	build/libultra/src/sptaskyield.o \
	build/libultra/src/sendmesg.o \
	build/libultra/src/sptaskyielded.o \
	build/libultra/src/startthread.o \
	build/libultra/src/writebackdcacheall.o \
	build/libultra/src/vimgr.o build/libultra/src/vimgr.data.o \
	build/libultra/src/visetmode.o \
	build/libultra/src/viblack.o \
	build/libultra/src/visetspecial.o \
	build/libultra/src/pimgr.o build/libultra/src/pimgr.data.o \
	build/libultra/src/setthreadpri.o \
	build/libultra/src/initialize.o build/libultra/src/initialize.data.o \
	build/libultra/src/viswapbuf.o \
	build/libultra/src/sqrtf.o \
	build/libultra/src/contreaddata.o \
	build/libultra/src/controller.o build/libultra/src/controller.data.o \
	build/libultra/src/conteepprobe.o \
	build/libultra/src/ll.o \
	build/libultra/src/invaldcache.o \
	build/libultra/src/pidma.o \
	build/libultra/src/bzero.o \
	build/libultra/src/invalicache.o \
	build/libultra/src/conteeplongread.o \
	build/libultra/src/conteeplongwrite.o \
	build/libultra/src/bcopy.o \
	build/libultra/src/ortho.o \
	build/libultra/src/perspective.o build/libultra/src/perspective.data.o \
	build/libultra/src/gettime.o \
	build/libultra/src/llcvt.o build/libultra/src/llcvt.data.o \
	build/libultra/src/cosf.o build/libultra/src/cosf.data.o \
	build/libultra/src/sinf.o build/libultra/src/sinf.data.o \
	build/libultra/src/translate.o \
	build/libultra/src/rotate.o build/libultra/src/rotate.data.o \
	build/libultra/src/scale.o \
	build/libultra/src/aisetfreq.o \
	build/libultra/src/bnkf.o \
	build/libultra/src/writebackdcache.o \
	build/libultra/src/aigetlen.o \
	build/libultra/src/aisetnextbuf.o build/libultra/src/aisetnextbuf.data.o \
	build/libultra/src/timerintr.o build/libultra/src/timerintr.data.o \
	build/libultra/src/xprintf.o build/libultra/src/xprintf.data.o \
	build/libultra/src/string.o \
	build/libultra/src/thread.o build/libultra/src/thread.data.o \
	build/libultra/src/interrupt.o \
	build/libultra/src/vi.o build/libultra/src/vi.data.o \
	build/libultra/src/exceptasm.o \
	build/libultra/src/libm_vals.o \
	build/libultra/src/virtualtophysical.o \
	build/libultra/src/spsetstat.o \
	build/libultra/src/spsetpc.o \
	build/libultra/src/sprawdma.o \
	build/libultra/src/sp.o \
	build/libultra/src/spgetstat.o \
	build/libultra/src/getthreadpri.o \
	build/libultra/src/vigetcurrcontext.o \
	build/libultra/src/viswapcontext.o \
	build/libultra/src/getcount.o \
	build/libultra/src/piacs.o build/libultra/src/piacs.data.o \
	build/libultra/src/pirawdma.o \
	build/libultra/src/devmgr.o \
	build/libultra/src/setsr.o \
	build/libultra/src/getsr.o \
	build/libultra/src/setfpccsr.o \
	build/libultra/src/sirawread.o \
	build/libultra/src/sirawwrite.o \
	build/libultra/src/maptlbrdb.o \
	build/libultra/src/pirawread.o \
	build/libultra/src/siacs.o build/libultra/src/siacs.data.o \
	build/libultra/src/sirawdma.o \
	build/libultra/src/settimer.o \
	build/libultra/src/conteepwrite.o \
	build/libultra/src/jammesg.o \
	build/libultra/src/pigetcmdq.o \
	build/libultra/src/conteepread.o build/libultra/src/conteepread.data.o \
	build/libultra/src/mtx.o \
	build/libultra/src/normalize.o \
	build/libultra/src/ai.o \
	build/libultra/src/setcompare.o \
	build/libultra/src/xlitob.o build/libultra/src/xlitob.data.o \
	build/libultra/src/xldtob.o build/libultra/src/xldtob.data.o \
	build/libultra/src/vimodentsclan1.o \
	build/libultra/src/vimodepallan1.o \
	build/libultra/src/kdebugserver.o build/libultra/src/kdebugserver.data.o \
	build/libultra/src/syncputchars.o build/libultra/src/syncputchars.data.o \
	build/libultra/src/setintmask.o \
	build/libultra/src/destroythread.o \
	build/libultra/src/probetlb.o \
	build/libultra/src/si.o \
	build/libultra/src/ldiv.o \
	build/libultra/src/getcause.o \
	build/libultra/src/atomic.o

IRIX_S := \
	build/libultra/src/PR/Boot.o

IRIX_C := \
	build/libultra/src/string.o

ROMHEADER   := libultra/src/PR/romheader
BOOT        := build/libultra/src/PR/Boot
FONT        := libultra/src/PR/font

TOOLS := \
	tools/makerom \
	tools/nrdc \
	tools/hbheader \
	tools/sbc \
	tools/slienc \
	tools/videnc \
	tools/symext \
	tools/fixobj \
	tools/texture

LIBCART := ../libcart

CC          := gcc
CFLAGS      := -O2 -Wall -Wextra -Wpedantic

U64_PREFIX  := mips-linux-gnu-
U64_CC      := $(U64_PREFIX)gcc
U64_LD      := $(U64_PREFIX)ld
U64_AR      := $(U64_PREFIX)ar
U64_OBJCOPY := $(U64_PREFIX)objcopy
U64_ARCH    := -mabi=32 -march=vr4300 -mfix4300
U64_OPT     := -Os
U64_WARN    := -Wall -Wextra -Wpedantic -Werror=implicit-function-declaration
U64_CPPFLAGS = -Ilibultra/include -I$(LIBCART)/include -Iinclude -I. -D_ULTRA64 -DTARGET_$(TARGET) -DREGION=\'$(REGION)\' -DVERSION=0x$(VERSION) -DBUILD=$(BUILD)
U64_CFLAGS = $(U64_ARCH) -mno-abicalls -fno-PIC -mno-check-zero-division -ffreestanding -fno-common -fno-zero-initialized-in-bss -fno-toplevel-reorder -G 0 $(U64_OPT) $(U64_WARN)
U64_ASFLAGS = $(U64_ARCH) -mno-abicalls -fno-PIC

IDO_CC      := $(IDO)/bin/cc
IDO_ARCH    := -mips2
IDO_OPT     := -g
IDO_WARN    := -fullwarn -prototypes
IDO_CPPFLAGS = -I$(IDO)/include $(U64_CPPFLAGS)
IDO_CFLAGS = $(IDO_ARCH) -non_shared -Wab,-r4300_mul -signed -Xcpluscomm -G 0 $(IDO_OPT) $(IDO_WARN)

IRIX_ARCH   := -mips2
IRIX_OPT    := -O3
IRIX_WARN   := -fullwarn -prototypes
IRIX_CPPFLAGS = -I$(IDO)/include -Ilibultra/include -D_ULTRA64
IRIX_CFLAGS = $(IRIX_ARCH) -non_shared -G 0 $(IRIX_OPT) $(IRIX_WARN)
IRIX_ASFLAGS = -D__ASSEMBLER__ $(IRIX_ARCH) -non_shared -O2

.PHONY: default
default: $(BUILD)/app.z64

.PHONY: dist
dist: $(BUILD)/app.bps

.PHONY: clean
clean:
	rm -f -r build

include dep.mk

.PHONY: clobber
clobber: clean
	rm -f -r build $(TOOLS) tools/__pycache__ tools/*.pyc $(DEP)

.PHONY: load
load: $(BUILD)/app.z64
	scload -s 1 -S $(HOME)/.local/share/parallel-launcher/retro-data/saves/app.srm $(BUILD)/app.z64

$(BUILD)/src/ff/ff.o: U64_WARN += -Wno-overflow
$(BUILD)/data/nes/app.szp.o: data/nes/app.nes
$(BUILD)/data/nes/music..szp.o: data/nes/music.nes

$(BUILD)/data/%.o: data/%.bin

stage/stage1/gfx.c: $(BUILD)/data/texture/c.szp.h
stage/stage2/gfx.c: $(BUILD)/data/gfx.szp.h
stage/stage3/gfx.c: $(BUILD)/data/texture/l.szp.h
stage/bob/gfx.c: $(BUILD)/data/texture/c.szp.h

$(BUILD)/data/gfx.elf:          ADDRESS := 0x02000000
$(BUILD)/shape/global/%.elf:    ADDRESS := 0x03000000
$(BUILD)/shape/player/%.elf:    ADDRESS := 0x04000000
$(BUILD)/shape/1%.elf:          ADDRESS := 0x05000000
$(BUILD)/shape/2%.elf:          ADDRESS := 0x06000000
$(BUILD)/stage/%.elf:           ADDRESS := 0x07000000
$(BUILD)/shape/3%.elf:          ADDRESS := 0x08000000
$(BUILD)/data/texture/%.elf:    ADDRESS := 0x09000000
$(BUILD)/data/background/%.elf: ADDRESS := 0x0A000000
$(BUILD)/data/weather/%.elf:    ADDRESS := 0x0B000000
$(BUILD)/data/setup.elf:        ADDRESS := 0
$(BUILD)/data/avatar.elf:       ADDRESS := 0
$(BUILD)/data/nes/%.elf:        ADDRESS := 0
$(BUILD)/data/video/%.elf:      ADDRESS := 0

$(BUILD)/app.bps: $(BUILD)/app.z64
	flips $(DONOR)/UNSM$(TARGET).z64 $< $@

$(BUILD)/app.z64: $(BUILD)/app.elf $(ROMHEADER) $(BOOT) $(FONT) tools/makerom tools/nrdc tools/hbheader
	tools/makerom -r $@ -h $(ROMHEADER) -b $(BOOT) -F $(FONT) -s 64 -f 0xff $<
	tools/nrdc -b -t "$(TITLE)" -i NSM$(REGION) -v 0x$(VERSION) $@
	tools/hbheader -eep4k -p3 mouse $@

$(BUILD)/app.elf: $(BUILD)/app.ld $(OBJ) $(MENU_OBJ) $(NES_OBJ) $(DATA) $(SZP) $(OBJECT_DATA) $(SHAPE_SZP) $(SHAPE_DATA) $(BACKGROUND_SZP) $(TEXTURE_SZP) $(STAGE_SZP) $(STAGE_DATA) $(NES_SZP) $(VID) $(AUDIO_DATA)
	$(U64_LD) -Map $(@:.elf=.map) -T$(BUILD)/app.ld -o $@

$(BUILD)/app.ld: spec include/sm64/segment.h tools/spec
	@mkdir -p $(dir $@)
	BUILD=$(BUILD) tools/spec $(U64_CPPFLAGS) -DNEWSPEC -o $@ $<

$(BUILD)/code.o: $(CODE_OBJ) $(AUDIO_OBJ) build/libultra/libultra.a
	$(U64_LD) -Lbuild/libultra -Llib -Trel.ld --wrap osAiSetNextBuffer --wrap Na_SE_play --wrap Na_BGM_play -r -o $@ $(CODE_OBJ) $(AUDIO_OBJ) -lultra -lgcc

$(BUILD)/ulib.o: $(ULIB_OBJ) $(FF_OBJ)
	$(U64_LD) -L$(LIBCART)/lib -Trel.ld -r -o $@ $(ULIB_OBJ) $(FF_OBJ) -lcart

$(BUILD)/face.o: $(FACE_OBJ)
	$(U64_LD) -Trel.ld -r -o $@ $(FACE_OBJ)

$(BUILD)/shape/2d/gfx.o: $(BUILD)/shape/2d/gfxA.o $(BUILD)/shape/2d/gfxB.o
	$(U64_LD) -r -o $@ $(BUILD)/shape/2d/gfxA.o $(BUILD)/shape/2d/gfxB.o

$(BUILD)/%.szp.s: %.bin tools/slienc
	@mkdir -p $(dir $@)
	tools/slienc $< $(@:.szp.s=.szp) > $@

$(BUILD)/%.szp.h: $(BUILD)/%.elf tools/symext
	tools/symext $< > $@

$(BUILD)/%.szp.s: $(BUILD)/%.elf tools/slienc
	tools/slienc $< $(@:.szp.s=.szp) > $@

$(BUILD)/%.vid.s: $(BUILD)/%.elf tools/videnc
	tools/videnc $< $(@:.vid.s=.vid) > $@

$(BUILD)/%.elf: $(BUILD)/%.o
	$(U64_LD) -Tdata $(ADDRESS) -Telf.ld -o $@ $<

$(BUILD)/%.o: %.asm
	@mkdir -p $(dir $@)
	armips -strequ BUILD $(BUILD) -sym $(@:.o=.sym) $<
	$(U64_CC) $(U64_ASFLAGS) -c -o $@ $(<:.asm=.s)

$(BUILD)/%.o: %.s
	@mkdir -p $(dir $@)
	$(U64_CC) -Iinclude $(U64_ASFLAGS) -c -o $@ $<

$(BUILD)/%.o: %.sx
	@mkdir -p $(dir $@)
	$(U64_CC) $(U64_CPPFLAGS) $(U64_ASFLAGS) -MMD -MP -c -o $@ $<

$(BUILD)/%.o: %.c
	@mkdir -p $(dir $@)
	$(U64_CC) $(U64_CPPFLAGS) $(U64_CFLAGS) -MMD -MP -c -o $@ $<

$(IDO_C): $(BUILD)/%.o: %.c
	@mkdir -p $(dir $@)
	$(IDO_CC) $(IDO_CPPFLAGS) $(IDO_CFLAGS) -c -o $@ $<

$(BUILD)/%.o: $(BUILD)/%.s
	$(U64_CC) $(U64_ASFLAGS) -c -o $@ $<

$(BUILD)/audio/tbl.s: $(BUILD)/audio/ctl.s;
$(BUILD)/audio/ctl.s: $(INS) tools/ic
	@mkdir -p $(dir $@)
	tools/ic $(U64_CPPFLAGS) -ctl $@ -tbl $(@:ctl.s=tbl.s) $(INS)

$(BUILD)/audio/seq.s: $(SEQ) tools/sbc
	@mkdir -p $(dir $@)
	tools/sbc 3 $(@:.s=.bin) $(SEQ) > $@

$(BUILD)/audio/bnk.s: audio/bnk.txt
	@mkdir -p $(dir $@)
	tools/audiobnk $@ $<

shape/2d/ul.ci4.h: shape/2d/pal.rgba16.png
shape/2d/ur.ci4.h: shape/2d/pal.rgba16.png
shape/2d/ll.ci4.h: shape/2d/pal.rgba16.png
shape/2d/lr.ci4.h: shape/2d/pal.rgba16.png
stage/paint/tool.ci4.h: stage/paint/tool.rgba16.png
stage/stage1/throwback/B_mokume_brown.ci4.h: stage/stage1/throwback/B_mokume_brown.rgba16.png
stage/stage1/throwback/B_mokume_whiteS.ci4.h: stage/stage1/throwback/B_mokume_whiteS.rgba16.png

%.h: %.png tools/texture
	tools/texture $@ $(filter %.png,$^)

shape/global/butterfly/%.h: GFXFLAGS += -g
stage/title/debug/%.h: GFXFLAGS += -g

%.vtx.h: %.h;
%.h: %.ply tools/gfx
	tools/gfx $(GFXFLAGS) -o $@ $<

%.h: %.obj tools/map
	tools/map $@ $<

%.inc.h: %.h;
%.h: %.txt tools/message
	tools/message $@ $<

%.aifc: %.aiff
	tabledesign -s 1 $< > $(@:.aifc=.table)
	vadpcm_enc -c $(@:.aifc=.table) $< $@

build/libultra/src/PR/gspFast3D.fifo.o: $(wildcard libultra/src/PR/gspFast3D/*)

build/libultra/libultra.a: $(LIBULTRA_OBJ)
	$(U64_AR) rc $@ $(LIBULTRA_OBJ)

build/libultra/src/PR/Boot: build/libultra/src/PR/Boot.elf
	$(U64_OBJCOPY) -O binary $< $@

build/libultra/src/PR/Boot.elf: build/libultra/src/PR/Boot.o
	$(U64_LD) -Tlibultra/src/PR/Boot.ld -o $@ $<

build/libultra/%.o: libultra/%.asm
	@mkdir -p $(dir $@)
	armips -sym $(@:.o=.sym) $<
	$(U64_CC) $(U64_ASFLAGS) -c -o $@ $(<:.asm=.s)

build/libultra/%.o: libultra/%.s
	@mkdir -p $(dir $@)
	$(U64_CC) $(U64_ASFLAGS) -c -o $@ $<

build/libultra/%.o: libultra/%.sx
	@mkdir -p $(dir $@)
	$(U64_CC) $(U64_CPPFLAGS) $(U64_ASFLAGS) -c -o $@ $<

build/libultra/%.o: libultra/%.c
	@mkdir -p $(dir $@)
	$(U64_CC) $(U64_CPPFLAGS) $(U64_CFLAGS) -c -o $@ $<

$(IRIX_S): build/libultra/%.o: libultra/%.s tools/fixobj
	@mkdir -p $(dir $@)
	$(IRIX_CC) $(IRIX_CPPFLAGS) $(IRIX_ASFLAGS) -c -o $@ $<
	tools/fixobj $@

$(IRIX_C): build/libultra/%.o: libultra/%.c
	@mkdir -p $(dir $@)
	$(IRIX_CC) $(IRIX_CPPFLAGS) $(IRIX_CFLAGS) -c -o $@ $<

$(TOOLS):
tools/%: tools/%.c
	$(CC) $(CFLAGS) -s -o $@ $<

print-%:
	$(info $* = $(flavor $*): [$($*)]) @true

$(SZP:.szp.o=.o):
$(SHAPE_SZP:.szp.o=.o):
$(BACKGROUND_SZP:.szp.o=.o):
$(TEXTURE_SZP:.szp.o=.o):
$(STAGE_SZP:.szp.o=.o):
$(NES_SZP:.szp.o=.o):
$(VID:.vid.o=.o):

-include $(CODE_OBJ:.o=.d)
-include $(ULIB_OBJ:.o=.d)
-include $(FF_OBJ:.o=.d)
-include $(MENU_OBJ:.o=.d)
-include $(NES_OBJ:.o=.d)
-include $(AUDIO_OBJ:.o=.d)
-include $(FACE_OBJ:.o=.d)

-include $(DATA:.o=.d)
-include $(SZP:.szp.o=.d)
-include $(OBJECT_DATA:.o=.d)
-include $(SHAPE_SZP:.szp.o=.d)
-include $(SHAPE_DATA:.o=.d)
-include $(BACKGROUND_SZP:.szp.o=.d)
-include $(TEXTURE_SZP:.szp.o=.d)
-include $(STAGE_SZP:.szp.o=.d)
-include $(STAGE_DATA:.o=.d)
-include $(NES_SZP:.szp.o=.d)
-include $(VID:.vid.o=.d)
-include $(AUDIO_DATA:.o=.d)
