function grid_set_func(_grid, _data, _func) {
	for(var xx = 0; xx < ds_grid_width(_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(_grid); yy++) {
			_func(_grid, xx, yy, _data);
		}
	}
}

function init_new_map_grid(_grid, _w, _h, _data) {
	_grid = ds_grid_create(_w, _h);
	
	grid_set_func(_grid, _data, function(_grid, _x, _y, _data) {
		var _list = _data;
		_grid[# _x, _y] = _list;
	});
}

function render_map_to_buffer(_in_grid, _out_buffer, _is_for_editing) {
	
}