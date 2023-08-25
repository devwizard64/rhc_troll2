#ifndef __SM64_MATH_H__
#define __SM64_MATH_H__

#define sin(x)  math_sin[(u16)(x) >> 4]
#define cos(x)  math_cos[(u16)(x) >> 4]

typedef struct bspline
{
	s16 time;
	VECS pos;
}
BSPLINE;

extern BSPLINE *bspline;
extern float bspline_phase;
extern int bspline_mode;
extern Mtx mtx_1;
extern VECF vecf_0;
extern VECS vecs_0;
extern VECF vecf_1;
extern VECS vecs_1;
extern float math_sin[];
extern float math_cos[];
extern short math_atan[];

extern VECF *vecf_cpy(VECF dst, VECF src);
extern VECF *vecf_set(VECF vf, float x, float y, float z);
extern VECF *vecf_add(VECF vf, VECF a);
extern VECF *vecf_addto(VECF vf, VECF a, VECF b);
extern VECS *vecs_cpy(VECS dst, VECS src);
extern VECS *vecs_set(VECS vs, SHORT x, SHORT y, SHORT z);
extern VECS *vecs_add(VECS vs, VECS a);
extern VECS *vecs_addto(VECS vs, VECS a, VECS b);
extern VECS *vecs_sub(VECS vs, VECS a);
extern VECF *vecs_to_vecf(VECF dst, VECS src);
extern VECS *vecf_to_vecs(VECS dst, VECF src);
extern VECF *vecf_normal(VECF vf, VECF v0, VECF v1, VECF v2);
extern VECF *vecf_cross(VECF vf, VECF a, VECF b);
extern VECF *vecf_normalise(VECF vf);
extern void mtxf_cpy(MTXF dst, MTXF src);
extern void mtxf_identity(MTXF mf);
extern void mtxf_pos(MTXF mf, VECF pos);
extern void mtxf_lookat(MTXF mf, VECF eye, VECF look, SHORT rz);
extern void mtxf_posang(MTXF mf, VECF pos, VECS ang);
extern void mtxf_joint(MTXF mf, VECF pos, VECS ang);
extern void mtxf_billboard(MTXF dst, MTXF src, VECF pos, SHORT rz);
extern void mtxf_stand(MTXF mf, VECF normal, VECF pos, SHORT ang);
extern void mtxf_ground(MTXF mf, VECF pos, SHORT ang, float radius);
extern void mtxf_cat(MTXF mf, MTXF a, MTXF b);
extern void mtxf_scale(MTXF dst, MTXF src, VECF scale);
extern void mtxf_transform(MTXF mf, VECS vs);
extern void mtxf_to_mtx(Mtx *m, MTXF mf);
extern void mtx_rz(Mtx *m, SHORT rz);
extern void vecf_untransform(VECF vf, MTXF mf, MTXF cam);
extern void cartesian_to_polar(
	VECF a,
	VECF b,
	float *dist,
	short *ax,
	short *ay
);
extern void polar_to_cartesian(VECF a, VECF b, float dist, SHORT ax, SHORT ay);
extern int converge_i(int x, int dst, int inc, int dec);
extern float converge_f(float x, float dst, float inc, float dec);
extern SHORT atan2(float x, float y);
extern float atan2f(float x, float y);
extern void bspline_init(BSPLINE *b);
extern int bspline_update(VECF dst);

#endif /* __SM64_MATH_H__ */
