#include <sm64/segment.h>

#ifdef NEWSPEC
#define MAXADDR(x) maxaddr x
#else
#define MAXADDR(x)
#endif

beginseg
	name    "code"
	flags   OBJECT BOOT
	address ADDRESS_CODE
	entry   entry
	stack   entry_stack + BOOT_STACK_SIZE
	include "$(BUILD)/code.o"
	include "build/libultra/src/PR/rspboot.o"
	include "build/libultra/src/PR/gspFast3D.fifo.o"
	include "build/libultra/src/PR/aspMain.o"
endseg

beginseg
	name    "ulib"
	flags   OBJECT
	MAXADDR(ADDRESS_CIMG)
	include "$(BUILD)/ulib.o"
endseg

beginseg
	name    "cimg"
	flags   OBJECT
	address ADDRESS_CIMG
	MAXADDR(0x80400000)
	include "$(BUILD)/data/cimg.o"
endseg

beginseg
	name    "zimg"
	flags   OBJECT
	address ADDRESS_ZIMG
	MAXADDR(ADDRESS_MEM_START)
	include "$(BUILD)/data/zimg.o"
endseg

beginseg
	name    "buffer"
	flags   OBJECT
	address ADDRESS_BUFFER
	MAXADDR(ADDRESS_FIFO)
	include "$(BUILD)/src/audio/heap.o"
	include "$(BUILD)/data/buffer.o"
	include "$(BUILD)/src/audio/bss.o"
endseg

beginseg
	name    "fifo"
	flags   OBJECT
	address ADDRESS_FIFO
	MAXADDR(ADDRESS_CODE)
	include "$(BUILD)/data/fifo.o"
endseg

beginseg
	name    "Main"
	flags   OBJECT
	address ADDRESS_MAIN
	include "$(BUILD)/data/main.o"
endseg

beginseg
	name    "Gfx"
	flags   OBJECT
	number  SEG_GFX
	include "$(BUILD)/data/gfx.szp.o"
endseg

beginseg
	name    "Setup"
	flags   OBJECT
	number  0
	include "$(BUILD)/data/setup.szp.o"
endseg

beginseg
	name    "Avatar"
	flags   OBJECT
	number  0
	include "$(BUILD)/data/avatar.szp.o"
endseg

beginseg
	name    "Player_gfx"
	flags   OBJECT
	number  SEG_PLAYER_GFX
	include "$(BUILD)/shape/player/gfx.szp.o"
endseg

beginseg
	name    "Player_data"
	flags   OBJECT
	address ADDRESS_PLAYER_DATA
	include "$(BUILD)/shape/player/shape.o"
endseg

beginseg
	name    "Shape1A_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1a/gfx.szp.o"
endseg

beginseg
	name    "Shape1A_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1a/shape.o"
endseg

beginseg
	name    "Shape1B_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1b/gfx.szp.o"
endseg

beginseg
	name    "Shape1B_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1b/shape.o"
endseg

beginseg
	name    "Shape1C_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1c/gfx.szp.o"
endseg

beginseg
	name    "Shape1C_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1c/shape.o"
endseg

beginseg
	name    "Shape1D_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1d/gfx.szp.o"
endseg

beginseg
	name    "Shape1D_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1d/shape.o"
endseg

beginseg
	name    "Shape1E_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1e/gfx.szp.o"
endseg

beginseg
	name    "Shape1E_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1e/shape.o"
endseg

beginseg
	name    "Shape1F_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1f/gfx.szp.o"
endseg

beginseg
	name    "Shape1F_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1f/shape.o"
endseg

beginseg
	name    "Shape1G_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1g/gfx.szp.o"
endseg

beginseg
	name    "Shape1G_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1g/shape.o"
endseg

beginseg
	name    "Shape1H_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1h/gfx.szp.o"
endseg

beginseg
	name    "Shape1H_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1h/shape.o"
endseg

beginseg
	name    "Shape1I_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1i/gfx.szp.o"
endseg

beginseg
	name    "Shape1I_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1i/shape.o"
endseg

beginseg
	name    "Shape1J_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1j/gfx.szp.o"
endseg

beginseg
	name    "Shape1J_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1j/shape.o"
endseg

beginseg
	name    "Shape1K_gfx"
	flags   OBJECT
	number  SEG_SHAPE1_GFX
	include "$(BUILD)/shape/1k/gfx.szp.o"
endseg

beginseg
	name    "Shape1K_data"
	flags   OBJECT
	address ADDRESS_SHAPE1_DATA
	include "$(BUILD)/shape/1k/shape.o"
endseg

beginseg
	name    "Shape2A_gfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2a/gfx.szp.o"
endseg

beginseg
	name    "Shape2A_data"
	flags   OBJECT
	address ADDRESS_SHAPE2_DATA
	include "$(BUILD)/shape/2a/shape.o"
endseg

beginseg
	name    "Shape2B_gfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2b/gfx.szp.o"
endseg

beginseg
	name    "Shape2B_data"
	flags   OBJECT
	address ADDRESS_SHAPE2_DATA
	include "$(BUILD)/shape/2b/shape.o"
endseg

beginseg
	name    "Shape2C_gfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2c/gfx.szp.o"
endseg

beginseg
	name    "Shape2C_data"
	flags   OBJECT
	address ADDRESS_SHAPE2_DATA
	include "$(BUILD)/shape/2c/shape.o"
endseg

beginseg
	name    "Shape2D_gfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2d/gfx.szp.o"
endseg

beginseg
	name    "Shape2D_data"
	flags   OBJECT
	address ADDRESS_SHAPE2_DATA
	include "$(BUILD)/shape/2d/shape.o"
endseg

beginseg
	name    "Shape2E_gfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2e/gfx.szp.o"
endseg

beginseg
	name    "Shape2E_data"
	flags   OBJECT
	address ADDRESS_SHAPE2_DATA
	include "$(BUILD)/shape/2e/shape.o"
endseg

beginseg
	name    "Shape2F_gfx"
	flags   OBJECT
	number  SEG_SHAPE2_GFX
	include "$(BUILD)/shape/2f/gfx.szp.o"
endseg

beginseg
	name    "Shape2F_data"
	flags   OBJECT
	address ADDRESS_SHAPE2_DATA
	include "$(BUILD)/shape/2f/shape.o"
endseg

beginseg
	name    "Common_gfx"
	flags   OBJECT
	number  SEG_SHAPE3_GFX
	include "$(BUILD)/shape/3common/gfx.szp.o"
endseg

beginseg
	name    "Common_data"
	flags   OBJECT
	address ADDRESS_SHAPE3_DATA
	include "$(BUILD)/shape/3common/shape.o"
endseg

beginseg
	name    "Global_gfx"
	flags   OBJECT
	number  SEG_GLOBAL_GFX
	include "$(BUILD)/shape/global/gfx.szp.o"
endseg

beginseg
	name    "Global_data"
	flags   OBJECT
	address ADDRESS_GLOBAL_DATA
	include "$(BUILD)/shape/global/shape.o"
endseg

beginseg
	name    "Object"
	flags   OBJECT
	address ADDRESS_OBJECT
	include "$(BUILD)/data/object/object_a.o"
	include "$(BUILD)/data/object/player.o"
	include "$(BUILD)/data/object/object_b.o"
	include "$(BUILD)/data/object/object_c.o"
	include "$(BUILD)/data/object/camera.o"
endseg

beginseg
	name    "menu"
	flags   OBJECT
	address ADDRESS_MENU
	MAXADDR(ADDRESS_MEM_END-16)
	include "$(BUILD)/src/title.o"
	include "$(BUILD)/src/title_bg.o"
	include "$(BUILD)/src/file_select.o"
	include "$(BUILD)/src/file_select.data.o"
	include "$(BUILD)/src/star_select.o"
	include "$(BUILD)/src/star_select.data.o"
	include "$(BUILD)/face.o"
endseg

beginseg
	name    "Title_data"
	flags   OBJECT
	address ADDRESS_MENU_DATA
	include "$(BUILD)/stage/title/program.o"
	include "$(BUILD)/stage/title/shape.o"
endseg

beginseg
	name    "TitleLogo_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/title/logo.szp.o"
endseg

beginseg
	name    "TitleDebug_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/title/debug.szp.o"
endseg

beginseg
	name    "BackgroundTitle"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/title.szp.o"
endseg

beginseg
	name    "FaceData"
	flags   OBJECT
	address ADDRESS_FACE_DATA
	MAXADDR(ADDRESS_FACE_DATA+0x70000)
	include "$(BUILD)/src/face/data.o"
endseg

beginseg
	name    "Select_data"
	flags   OBJECT
	address ADDRESS_MENU_DATA
	include "$(BUILD)/stage/select/program.o"
	include "$(BUILD)/stage/select/shape.o"
endseg

beginseg
	name    "Select_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/select/gfx.szp.o"
endseg

beginseg
	name    "nes"
	flags   OBJECT
	address ADDRESS_NES
	MAXADDR(ADDRESS_MEM_END-16)
	include "$(BUILD)/src/nes/nes.o"
endseg

beginseg
	name    "app_szp"
	flags   OBJECT
	number  0
	include "$(BUILD)/data/nes/app.szp.o"
endseg

beginseg
	name    "music_szp"
	flags   OBJECT
	number  0
	include "$(BUILD)/data/nes/music.szp.o"
endseg

beginseg
	name    "Paint_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/paint/program.o"
endseg

beginseg
	name    "Paint_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/paint/gfx.szp.o"
endseg

beginseg
	name    "Game"
	flags   OBJECT
	address ADDRESS_GAME
	include "$(BUILD)/data/game.o"
endseg

beginseg
	name    "BackgroundA"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/a.szp.o"
endseg

beginseg
	name    "BackgroundB"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/b.szp.o"
endseg

beginseg
	name    "BackgroundC"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/c.szp.o"
endseg

beginseg
	name    "BackgroundD"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/d.szp.o"
endseg

beginseg
	name    "BackgroundE"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/e.szp.o"
endseg

beginseg
	name    "BackgroundF"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/f.szp.o"
endseg

beginseg
	name    "BackgroundG"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/g.szp.o"
endseg

beginseg
	name    "BackgroundH"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/h.szp.o"
endseg

beginseg
	name    "BackgroundI"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/i.szp.o"
endseg

beginseg
	name    "BackgroundJ"
	flags   OBJECT
	number  SEG_BACKGROUND
	include "$(BUILD)/data/background/j.szp.o"
endseg

beginseg
	name    "TextureA"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/a.szp.o"
endseg

beginseg
	name    "TextureB"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/b.szp.o"
endseg

beginseg
	name    "TextureC"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/c.szp.o"
endseg

beginseg
	name    "TextureD"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/d.szp.o"
endseg

beginseg
	name    "TextureE"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/e.szp.o"
endseg

beginseg
	name    "TextureF"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/f.szp.o"
endseg

beginseg
	name    "TextureG"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/g.szp.o"
endseg

beginseg
	name    "TextureH"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/h.szp.o"
endseg

beginseg
	name    "TextureI"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/i.szp.o"
endseg

beginseg
	name    "TextureJ"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/j.szp.o"
endseg

beginseg
	name    "TextureK"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/k.szp.o"
endseg

beginseg
	name    "TextureL"
	flags   OBJECT
	number  SEG_TEXTURE
	include "$(BUILD)/data/texture/l.szp.o"
endseg

beginseg
	name    "Weather"
	flags   OBJECT
	number  SEG_WEATHER
	include "$(BUILD)/data/weather/gfx.szp.o"
endseg

beginseg
	name    "Stage1_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/stage1/gfx.szp.o"
endseg

beginseg
	name    "Stage1_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/stage1/program.o"
	include "$(BUILD)/stage/stage1/shape.o"
endseg

beginseg
	name    "Stage2_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/stage2/gfx.szp.o"
endseg

beginseg
	name    "Stage2_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/stage2/program.o"
	include "$(BUILD)/stage/stage2/shape.o"
endseg

beginseg
	name    "Stage3_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/stage3/gfx.szp.o"
endseg

beginseg
	name    "Stage3_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/stage3/program.o"
	include "$(BUILD)/stage/stage3/shape.o"
endseg

beginseg
	name    "BBH_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bbh/gfx.szp.o"
endseg

beginseg
	name    "BBH_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bbh/program.o"
	include "$(BUILD)/stage/bbh/shape.o"
endseg

beginseg
	name    "CCM_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ccm/gfx.szp.o"
endseg

beginseg
	name    "CCM_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ccm/program.o"
	include "$(BUILD)/stage/ccm/shape.o"
endseg

beginseg
	name    "Inside_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/inside/gfx.szp.o"
endseg

beginseg
	name    "Inside_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/inside/program.o"
	include "$(BUILD)/stage/inside/shape.o"
endseg

beginseg
	name    "HMC_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/hmc/gfx.szp.o"
endseg

beginseg
	name    "HMC_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/hmc/program.o"
	include "$(BUILD)/stage/hmc/shape.o"
endseg

beginseg
	name    "SSL_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ssl/gfx.szp.o"
endseg

beginseg
	name    "SSL_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ssl/program.o"
	include "$(BUILD)/stage/ssl/shape.o"
endseg

beginseg
	name    "BoB_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bob/gfx.szp.o"
endseg

beginseg
	name    "BoB_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bob/program.o"
	include "$(BUILD)/stage/bob/shape.o"
endseg

beginseg
	name    "SL_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/sl/gfx.szp.o"
endseg

beginseg
	name    "SL_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/sl/program.o"
	include "$(BUILD)/stage/sl/shape.o"
endseg

beginseg
	name    "WDW_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/wdw/gfx.szp.o"
endseg

beginseg
	name    "WDW_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/wdw/program.o"
	include "$(BUILD)/stage/wdw/shape.o"
endseg

beginseg
	name    "JRB_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/jrb/gfx.szp.o"
endseg

beginseg
	name    "JRB_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/jrb/program.o"
	include "$(BUILD)/stage/jrb/shape.o"
endseg

beginseg
	name    "THI_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/thi/gfx.szp.o"
endseg

beginseg
	name    "THI_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/thi/program.o"
	include "$(BUILD)/stage/thi/shape.o"
endseg

beginseg
	name    "TTC_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ttc/gfx.szp.o"
endseg

beginseg
	name    "TTC_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ttc/program.o"
	include "$(BUILD)/stage/ttc/shape.o"
endseg

beginseg
	name    "RR_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/rr/gfx.szp.o"
endseg

beginseg
	name    "RR_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/rr/program.o"
	include "$(BUILD)/stage/rr/shape.o"
endseg

beginseg
	name    "Grounds_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/grounds/gfx.szp.o"
endseg

beginseg
	name    "Grounds_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/grounds/program.o"
	include "$(BUILD)/stage/grounds/shape.o"
endseg

beginseg
	name    "BitDW_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitdw/gfx.szp.o"
endseg

beginseg
	name    "BitDW_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitdw/program.o"
	include "$(BUILD)/stage/bitdw/shape.o"
endseg

beginseg
	name    "VCutM_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/vcutm/gfx.szp.o"
endseg

beginseg
	name    "VCutM_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/vcutm/program.o"
	include "$(BUILD)/stage/vcutm/shape.o"
endseg

beginseg
	name    "BitFS_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitfs/gfx.szp.o"
endseg

beginseg
	name    "BitFS_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitfs/program.o"
	include "$(BUILD)/stage/bitfs/shape.o"
endseg

beginseg
	name    "SA_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/sa/gfx.szp.o"
endseg

beginseg
	name    "SA_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/sa/program.o"
	include "$(BUILD)/stage/sa/shape.o"
endseg

beginseg
	name    "BitS_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bits/gfx.szp.o"
endseg

beginseg
	name    "BitS_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bits/program.o"
	include "$(BUILD)/stage/bits/shape.o"
endseg

beginseg
	name    "LLL_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/lll/gfx.szp.o"
endseg

beginseg
	name    "LLL_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/lll/program.o"
	include "$(BUILD)/stage/lll/shape.o"
endseg

beginseg
	name    "DDD_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ddd/gfx.szp.o"
endseg

beginseg
	name    "DDD_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ddd/program.o"
	include "$(BUILD)/stage/ddd/shape.o"
endseg

beginseg
	name    "WF_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/wf/gfx.szp.o"
endseg

beginseg
	name    "WF_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/wf/program.o"
	include "$(BUILD)/stage/wf/shape.o"
endseg

beginseg
	name    "Ending_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ending/gfx.szp.o"
endseg

beginseg
	name    "Ending_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ending/program.o"
endseg

beginseg
	name    "Courtyard_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/courtyard/gfx.szp.o"
endseg

beginseg
	name    "Courtyard_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/courtyard/program.o"
	include "$(BUILD)/stage/courtyard/shape.o"
endseg

beginseg
	name    "PSS_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/pss/gfx.szp.o"
endseg

beginseg
	name    "PSS_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/pss/program.o"
	include "$(BUILD)/stage/pss/shape.o"
endseg

beginseg
	name    "CotMC_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/cotmc/gfx.szp.o"
endseg

beginseg
	name    "CotMC_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/cotmc/program.o"
	include "$(BUILD)/stage/cotmc/shape.o"
endseg

beginseg
	name    "TotWC_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/totwc/gfx.szp.o"
endseg

beginseg
	name    "TotWC_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/totwc/program.o"
	include "$(BUILD)/stage/totwc/shape.o"
endseg

beginseg
	name    "BitDWA_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitdwa/gfx.szp.o"
endseg

beginseg
	name    "BitDWA_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitdwa/program.o"
	include "$(BUILD)/stage/bitdwa/shape.o"
endseg

beginseg
	name    "WMotR_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/wmotr/gfx.szp.o"
endseg

beginseg
	name    "WMotR_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/wmotr/program.o"
	include "$(BUILD)/stage/wmotr/shape.o"
endseg

beginseg
	name    "BitFSA_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitfsa/gfx.szp.o"
endseg

beginseg
	name    "BitFSA_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitfsa/program.o"
	include "$(BUILD)/stage/bitfsa/shape.o"
endseg

beginseg
	name    "BitSA_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/bitsa/gfx.szp.o"
endseg

beginseg
	name    "BitSA_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/bitsa/program.o"
	include "$(BUILD)/stage/bitsa/shape.o"
endseg

beginseg
	name    "TTM_gfx"
	flags   OBJECT
	number  SEG_STAGE_GFX
	include "$(BUILD)/stage/ttm/gfx.szp.o"
endseg

beginseg
	name    "TTM_data"
	flags   OBJECT
	address ADDRESS_STAGE_DATA
	include "$(BUILD)/stage/ttm/program.o"
	include "$(BUILD)/stage/ttm/shape.o"
endseg

beginseg
	name    "Anime"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/anime.o"
endseg

beginseg
	name    "Demo"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/demo.o"
endseg

beginseg
	name    "Change_vid"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/video/change.vid.o"
endseg

beginseg
	name    "Movie_vid"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/video/Movie.vid.o"
endseg

beginseg
	name    "Scatman_vid"
	flags   OBJECT
	address 0
	include "$(BUILD)/data/video/scatman.vid.o"
endseg

beginseg
	name    "Audioctl"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/ctl.o"
endseg

beginseg
	name    "Audiotbl"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/tbl.o"
endseg

beginseg
	name    "Audioseq"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/seq.o"
endseg

beginseg
	name    "Audiobnk"
	flags   OBJECT
	address 0
	include "$(BUILD)/audio/bnk.o"
endseg
