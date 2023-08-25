#define SND_SE1_JUMP            0
#define SND_SE1_BUMP            1
#define SND_SE1_STOMP           2
#define SND_SE1_KICK            3
#define SND_SE1_PIPE            4
#define SND_SE1_FIREBALL        5
#define SND_SE1_FLAG            6
#define SND_SE1_SMALLJUMP       7

#define SND_SE2_COIN            8
#define SND_SE2_ITEM            9
#define SND_SE2_VINE            10
#define SND_SE2_BLAST           11
#define SND_SE2_TICK            12
#define SND_SE2_POWERUP         13
#define SND_SE2_1UP             14
#define SND_SE2_FALL            15

#define SND_SE3_SHATTER         16
#define SND_SE3_FLAME           17

#define SND_SEQ_DEATH           24
#define SND_SEQ_GAMEOVER        25
#define SND_SEQ_ENDING          26
#define SND_SEQ_AXE             27
#define SND_SEQ_GAMEOVER2       28
#define SND_SEQ_FLAG            29
#define SND_SEQ_TIME            30

#define SND_SEQ_GROUND          32
#define SND_SEQ_WATER           33
#define SND_SEQ_UNDERGROUND     34
#define SND_SEQ_CASTLE          35
#define SND_SEQ_CLOUD           36
#define SND_SEQ_PIPE            37
#define SND_SEQ_STAR            38
#define SND_SEQ_NULL            39

#define SND_PAUSE               40
#define SND_UNPAUSE             41

#define SND(x)  ((0xFF - ((x) >> 3)) << 8 | 1 << ((x) & 7))
