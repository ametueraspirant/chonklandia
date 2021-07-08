var cam_w = camera_get_view_width(_main_camera);
var cam_h = camera_get_view_height(_main_camera);
var cam_x = camera_get_view_x(_main_camera) + cam_w / 2;
var cam_y = camera_get_view_y(_main_camera) + cam_h /2;

var view_mat = matrix_build_lookat(cam_x + global.cam.tilt,
								   cam_y + global.cam.tilt,
								   global.cam.tilt, cam_x, 
								   cam_y, 0, 0, 0, 1);
var proj_mat = matrix_build_projection_ortho(-global.cam.w * global.cam.zoom.cur, 
											 -global.cam.h * global.cam.zoom.cur, 
											 -500, 30000);

camera_set_view_mat(_main_camera, view_mat);
camera_set_proj_mat(_main_camera, proj_mat);

camera_apply(_main_camera);