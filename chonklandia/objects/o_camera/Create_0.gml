#macro _main_camera view_camera[0]

global.cam = {
	w: 1920/6,
	h: 1080/6,
	xx: 0,
	yy: 0,
	scale: 3,
	dist: -300,
	fov: 90,
	asp: camera_get_view_width(_main_camera) / camera_get_view_height(_main_camera)
}

// set window and camera size to desired parameters
window_set_size(global.cam.w * global.cam.scale, global.cam.h * global.cam.scale);
alarm[0] = 1;
surface_resize(application_surface, global.cam.w * global.cam.scale, global.cam.h * global.cam.scale);
camera_set_view_size(_main_camera, global.cam.w, global.cam.h);

// set camx and y to some variables i dunno
global.cam.xx = (o_rm_editor.grid.spr.w / 2) - (global.cam.w / 2);
global.cam.yy = -(global.cam.h / 4);

// set up vertex format and 3d settings
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_texrepeat(true);

vertex_format_begin();
	
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();

global.v_format = vertex_format_end();