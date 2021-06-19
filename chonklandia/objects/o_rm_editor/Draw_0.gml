for(var wid = 0; wid < grid.cells.w; wid++) {
	for(var hei = 0; hei < grid.cells.h; hei++) {
		var index = grid.data[# wid, hei];
		x_sq = (wid - hei) * (grid.spr.w / 2);
		y_sq = (hei + wid) * (grid.spr.h / 2);
		
		draw_sprite(s_floor_test, index, x_sq, y_sq);
		
		if(wid == grid.mx && hei == grid.my)draw_sprite(s_cursor_test, 0, x_sq, y_sq);
	}
}