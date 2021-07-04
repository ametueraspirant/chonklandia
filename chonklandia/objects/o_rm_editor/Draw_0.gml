/// @description draw map grid

for(var _xx = 0; _xx < grid.cells.w; _xx++) {
	for(var _yy = 0; _yy < grid.cells.h; _yy++) {
		var _data = grid.data[# _xx, _yy];
		var _flo_i = _data.flo_i;
		var _height = _data.tile_h;
		var x_sq = (_xx - _yy) * (grid.spr.w / 2);
		
		for(var tile_y = 0; tile_y <= _height; tile_y++) {
			var y_sq = ((_yy + _xx) * (grid.spr.h / 2)) - (tile_y * (grid.spr.h / 2)) ;
			draw_sprite(s_floor_test, _flo_i, x_sq, y_sq);
		}
		
		if(_xx == grid.mx && _yy == grid.my)draw_sprite(s_cursor_test, 0, x_sq, y_sq);
	}
}