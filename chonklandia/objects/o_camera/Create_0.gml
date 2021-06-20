#macro _main_camera view_camera[0]

cam = {
	width: 40*_grid_size,
	height: 40*_grid_size,
	_x: 0,
	_y: 0
}

cam._x = (o_rm_editor.grid.spr.w / 2) - (cam.width / 2);
cam._y = -(cam.height / 4);

main_camera = camera_create_view(cam._x, cam._y, cam.width/2, cam.height/2, 0, self, -1, -1, cam.width*0.5, cam.height*0.5);
_main_camera = main_camera;
window_set_size(cam.width, cam.height);

camera_set_view_pos(_main_camera, cam._x, cam._y); 
