#ifndef __SM64_DEFAUDIO_H__
#define __SM64_DEFAUDIO_H__

#define NA_MODE_DEFAULT         0
#define NA_MODE_CASTLE          1
#define NA_MODE_ARENA           2
#define NA_MODE_WATER           3
#define NA_MODE_DUNGEON         4
#define NA_MODE_FIELD           5
#define NA_MODE_GHOST           6
#define NA_MODE_STAFF           7

#define NA_SEQ_SE               0
#define NA_SEQ_STAR_CATCH       1
#define NA_SEQ_TITLE            2
#define NA_SEQ_FIELD            3
#define NA_SEQ_CASTLE           4
#define NA_SEQ_WATER            5
#define NA_SEQ_FIRE             6
#define NA_SEQ_ARENA            7
#define NA_SEQ_SNOW             8
#define NA_SEQ_SLIDER           9
#define NA_SEQ_GHOST            10
#define NA_SEQ_LULLABY          11
#define NA_SEQ_DUNGEON          12
#define NA_SEQ_STAR_SELECT      13
#define NA_SEQ_WING             14
#define NA_SEQ_METAL            15
#define NA_SEQ_MSG_BOWSER       16
#define NA_SEQ_BOWSER           17
#define NA_SEQ_HI_SCORE         18
#define NA_SEQ_MERRY_GO_ROUND   19
#define NA_SEQ_FANFARE          20
#define NA_SEQ_STAR             21
#define NA_SEQ_BATTLE           22
#define NA_SEQ_ARENA_CLEAR      23
#define NA_SEQ_ENDLESS          24
#define NA_SEQ_FINAL            25
#define NA_SEQ_STAFF            26
#define NA_SEQ_SOLUTION         27
#define NA_SEQ_MSG_TOAD         28
#define NA_SEQ_MSG_PEACH        29
#define NA_SEQ_INTRO            30
#define NA_SEQ_FINAL_CLEAR      31
#define NA_SEQ_ENDING           32
#define NA_SEQ_FILE_SELECT      33
#define NA_SEQ_MSG_LAKITU       34

#define NA_SEQ_FIELD2           35
#define NA_SEQ_KINOPIO2         36
#define NA_SEQ_CHANGE           37
#define NA_SEQ_MOVIE            38
#define NA_SEQ_PAINT            39

#define NA_BGM_NULL             0
/* #define NA_BGM_STAR_CATCH       NA_SEQ_STAR_CATCH */
#define NA_BGM_TITLE            NA_SEQ_TITLE
#define NA_BGM_GAMEOVER         (0x080 | NA_SEQ_TITLE)
#define NA_BGM_FIELD            NA_SEQ_FIELD
#define NA_BGM_CASTLE           NA_SEQ_CASTLE
#define NA_BGM_WATER            NA_SEQ_WATER
#define NA_BGM_AQUARIUM         (0x080 | NA_SEQ_WATER)
#define NA_BGM_FIRE             NA_SEQ_FIRE
#define NA_BGM_ARENA            NA_SEQ_ARENA
#define NA_BGM_SNOW             NA_SEQ_SNOW
#define NA_BGM_SLIDER           NA_SEQ_SLIDER
#define NA_BGM_GHOST            NA_SEQ_GHOST
/* #define NA_BGM_LULLABY          NA_SEQ_LULLABY */
#define NA_BGM_DUNGEON          NA_SEQ_DUNGEON
#define NA_BGM_STAR_SELECT      NA_SEQ_STAR_SELECT
/* #define NA_BGM_WING             NA_SEQ_WING */
#define NA_BGM_SHELL            (0x480 | NA_SEQ_WING)
/* #define NA_BGM_METAL            NA_SEQ_METAL */
/* #define NA_BGM_MSG_BOWSER       NA_SEQ_MSG_BOWSER */
#define NA_BGM_BOWSER           NA_SEQ_BOWSER
/* #define NA_BGM_HI_SCORE         NA_SEQ_HI_SCORE */
/* #define NA_BGM_MERRY_GO_ROUND   NA_SEQ_MERRY_GO_ROUND */
/* #define NA_BGM_FANFARE          NA_SEQ_FANFARE */
/* #define NA_BGM_STAR             NA_SEQ_STAR */
/* #define NA_BGM_BATTLE           NA_SEQ_BATTLE */
/* #define NA_BGM_ARENA_CLEAR      NA_SEQ_ARENA_CLEAR */
#define NA_BGM_ENDLESS          NA_SEQ_ENDLESS
#define NA_BGM_FINAL            NA_SEQ_FINAL
/* #define NA_BGM_STAFF            NA_SEQ_STAFF */
/* #define NA_BGM_SOLUTION         NA_SEQ_SOLUTION */
/* #define NA_BGM_MSG_TOAD         NA_SEQ_MSG_TOAD */
/* #define NA_BGM_MSG_PEACH        NA_SEQ_MSG_PEACH */
/* #define NA_BGM_INTRO            NA_SEQ_INTRO */
/* #define NA_BGM_FINAL_CLEAR      NA_SEQ_FINAL_CLEAR */
/* #define NA_BGM_ENDING           NA_SEQ_ENDING */
#define NA_BGM_FILE_SELECT      NA_SEQ_FILE_SELECT
/* #define NA_BGM_MSG_LAKITU       NA_SEQ_MSG_LAKITU */

#define NA_BGM_FIELD2           NA_SEQ_FIELD2
#define NA_BGM_KINOPIO2         NA_SEQ_KINOPIO2
#define NA_BGM_CHANGE           NA_SEQ_CHANGE
#define NA_BGM_MOVIE            NA_SEQ_MOVIE
#define NA_BGM_PAINT            NA_SEQ_PAINT

#define NA_SE_NULL              0x00000000

#define NA_SE1_00               0x14000001
#define NA_SE1_10               0x14100001
#define NA_SE1_11               0x14110001
#define NA_SE1_12               0x14128001
#define NA_SE1_14               0x14140001
#define NA_SE1_19               0x1D192001
#define NA_SE1_20               0x14200001

#define NA_SE2_31               0x2431FF81
#define NA_SE2_32               0x2432FF81
#define NA_SE2_33               0x2433FFA1

#define NA_SE3_04               0x3004C081
#define NA_SE3_05               0x3005C081
#define NA_SE3_06               0x3006C081
#define NA_SE3_07               0x3007C081
#define NA_SE3_28               0x39280081
#define NA_SE3_2B               0x302B0081
#define NA_SE3_70               0x30703081

#define NA_SE4_00               0x40000001
#define NA_SE4_01               0x40010001
#define NA_SE4_02               0x40020001
#define NA_SE4_03               0x41030001
#define NA_SE4_04               0x40040001
#define NA_SE4_05               0x40050001
#define NA_SE4_08               0x40080001
#define NA_SE4_09               0x40090001
#define NA_SE4_0A               0x400A0001
#define NA_SE4_0B               0x400B0001
#define NA_SE4_0C               0x400C0001
#define NA_SE4_0D_0             0x400D0001
#define NA_SE4_0D_1             0x400D1001

#define NA_SE5_03               0x50030081
#define NA_SE5_05               0x50050081
#define NA_SE5_06               0x50060081
#define NA_SE5_15_50            0x50155081
#define NA_SE5_15_80            0x50158081
#define NA_SE5_21               0x50210081
#define NA_SE5_2D               0x502D0081
#define NA_SE5_38               0x50388081
#define NA_SE5_39               0x50390081
#define NA_SE5_3A               0x503A0081
#define NA_SE5_3B               0x503B0081
#define NA_SE5_3C               0x503C0081
#define NA_SE5_3D               0x503DA081
#define NA_SE5_41               0x50410081
#define NA_SE5_48               0x50480081
#define NA_SE5_51               0x50514001
#define NA_SE5_55               0x50558081
#define NA_SE5_58               0x50584081
#define NA_SE5_5F               0x505F8091
#define NA_SE5_60               0x5060B081
#define NA_SE5_61               0x5061B081
#define NA_SE5_6F               0x506F0081

#define NA_SE6_00               0x60000001
#define NA_SE6_02_80            0x60028001
#define NA_SE6_02_FF            0x6002FF01
#define NA_SE6_03               0x60034001
#define NA_SE6_04_40            0x60044001
#define NA_SE6_04_80            0x60048001
#define NA_SE6_10               0x60104001

#define NA_SE7_06               0x70060081
#define NA_SE7_07               0x70070081
#define NA_SE7_08               0x70080081
#define NA_SE7_09               0x70090081
#define NA_SE7_0A               0x700A0081
#define NA_SE7_0B               0x700B0081
#define NA_SE7_0C               0x700C0081
#define NA_SE7_14               0x70140081
#define NA_SE7_1E               0x701EFF81

#define NA_SE8_50               0x80504001

#define NA_SE9_04               0x90040081
#define NA_SE9_52               0x90524001
#define NA_SE9_69               0x90694081

#endif /* __SM64_DEFAUDIO_H__ */
