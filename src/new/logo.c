void logo_scale(SHAPE *shape, float *x, float *y, float *z)
{
	SHAPE_CAMERA *camera = (SHAPE_CAMERA *)shape->parent;
	camera->rz_p = 0;
	*x = 1;
	*y = 1;
	*z = 1;
	if (title_bg_frame >= 36 && title_bg_frame < 46) camera->rz_p = 0x2000;
	if (title_bg_frame >= 37 && title_bg_frame < 47) *x = 4;
	if (title_bg_frame >= 54 && title_bg_frame < 61) camera->rz_p = -0x8000;
	if (title_bg_frame >= 55 && title_bg_frame < 62) *y = 5;
}
