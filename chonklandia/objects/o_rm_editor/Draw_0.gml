/// @description draw map grid

// draw map
for(var _xx = 0; _xx < grid.cells.w; _xx++) {
	for(var _yy = 0; _yy < grid.cells.h; _yy++) {
		var _data = grid.data[# _xx, _yy];
		var _flo_i = _data.flo_i;
		var _height = _data.tile_h;
		var x_sq = (_xx - _yy) * (grid.spr.w / 2);
		var y_sq = ((_yy + _xx) * (grid.spr.h / 2)) - (_height * (grid.spr.h / 2));
		
		draw_sprite(s_floor_test, _flo_i, x_sq, y_sq);
		
		/*for(var tile_y = 0; tile_y <= _height; tile_y++) {
			var y_sq = ((_yy + _xx) * (grid.spr.h / 2)) - (tile_y * (grid.spr.h / 2));
			draw_sprite(s_floor_test, _flo_i, x_sq, y_sq);
		}*/
		
		if(_xx == grid.mx && _yy == grid.my)draw_sprite(s_cursor_test, 0, x_sq, y_sq);
	}
}

/*pseudocode
if tile height is 1 block or higher than either block below it to the left or right
also draw sprites at y - sprite height for the number of blocks it is higher
figure out which way the grid is tilted
do sub grid height shifts

