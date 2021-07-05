var cam_w = camera_get_view_width(_main_camera);
var cam_h = camera_get_view_height(_main_camera);
var cam_x = camera_get_view_x(_main_camera) + cam_w / 2;
var cam_y = camera_get_view_y(_main_camera) + cam_h /2;

var view_mat = matrix_build_lookat(cam_x, cam_y, global.cam.dist, cam_x, cam_y, 0, 0, 1, 0);
var proj_mat = matrix_build_projection_perspective_fov(global.cam.fov, global.cam.asp, 3, 30000);

camera_apply(_main_camera);