#macro _main_camera view_camera[0]

cam = {
	w: 1920/6,
	h: 1080/6,
	scale: 3,
	_x: 0,
	_y: 0
}

window_set_size(cam.w * cam.scale, cam.h * cam.scale);
alarm[0] = 1;
surface_resize(application_surface, cam.w * cam.scale, cam.h * cam.scale);

cam._x = (o_rm_editor.grid.spr.w / 2) - (cam.w / 2);
cam._y = -(cam.h / 4);
