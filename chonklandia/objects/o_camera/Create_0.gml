width = 20*_grid_size;
height = 20*_grid_size;

main_camera = camera_create_view(x, y, width, height, 0, self, -1, -1, width*0.5, height*0.5);
view_camera[0] = main_camera;
//camera_mode = 