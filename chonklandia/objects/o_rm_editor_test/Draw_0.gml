for(var wid = 0; wid < grid.cells.w; wid++) {
	for(var hei = 0; hei < grid.cells.h; hei++) {
		var index = grid.data[# wid, hei];
		x_sq = wid * _grid_size;
		y_sq = hei * _grid_size;
		
		draw_sprite(s_floor_test, index, x_sq, y_sq);
	}
}