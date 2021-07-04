/// @description draw map grid

// draw map
for(var _xx = 0; _xx < grid.cells.w; _xx++) {
	for(var _yy = 0; _yy < grid.cells.h; _yy++) {
		// set up current grid data and index
		var _data = grid.data[# _xx, _yy];
		var _flo_i = _data.flo_i;
		
		// set up height variables
		var _height = _data.tile_h;
		if(_yy + 1 < grid.cells.h)var dl_height = grid.data[# _xx, _yy + 1].tile_h;
		else var dl_height = 0;
		if(_xx + 1 < grid.cells.w)var dr_height = grid.data[# _xx + 1, _yy].tile_h;
		else var dr_height = 0;
		
		// combine those into current drawn coordinates for the tile
		var x_sq = (_xx - _yy) * (grid.spr.w / 2);
		var y_sq = ((_yy + _xx) * (grid.spr.h / 2)) - (_height * (grid.spr.h / 2));
		
		// check the difference between tile down left/right tiles to change how to draw it
		if(_height + 1 < dr_height && _height + 1 < dl_height) {
			// do not draw
			grid.data[# _xx, _yy].drawn = dt.hidden;
		} else if(dr_height + 1 < _height || dl_height + 1 < _height) {
			// draw a stack
			var h_dif = _height - floor(_height);
			var h_low = floor(min(dl_height, dr_height)) + h_dif;
			for(var h = h_low; h <= _height; h++) {
				var y_sq = ((_yy + _xx) * (grid.spr.h / 2)) - (h * (grid.spr.h / 2));
				draw_sprite(s_floor_test, _flo_i, x_sq, y_sq);
			}
			grid.data[# _xx, _yy].drawn = dt.stack;
		} else {
			// draw a single
			draw_sprite(s_floor_test, _flo_i, x_sq, y_sq);
			grid.data[# _xx, _yy].drawn = dt.single;
		}
		
		if(_xx == grid.mx && _yy == grid.my)draw_sprite(s_cursor_test, 0, x_sq, y_sq);
	}
}
