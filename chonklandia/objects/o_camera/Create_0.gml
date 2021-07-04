#macro _main_camera view_camera[0]

global.cam = {
	w: 1920/6,
	h: 1080/6,
	scale: 3,
	_x: 0,
	_y: 0
}

window_set_size(global.cam.w * global.cam.scale, global.cam.h * global.cam.scale);
alarm[0] = 1;
surface_resize(application_surface, global.cam.w * global.cam.scale, global.cam.h * global.cam.scale);
camera_set_view_size(_main_camera, global.cam.w, global.cam.h);

global.cam._x = (o_rm_editor.grid.spr.w / 2) - (global.cam.w / 2);
global.cam._y = -(global.cam.h / 4);
