function init_new_map_grid(_w, _h, _data) {
	var _grid = ds_grid_create(_w, _h);
	
	for(var xx = 0; xx < ds_grid_width(_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(_grid); yy++) {
			_grid[# xx, yy] = new _data();
			_grid[# xx, yy].tile_h = random_range(0, 10);
		}
	}
	
	return _grid;
}

function render_map_to_buffer(_in_grid, _is_for_editing) {
	static _grid_size = 16;
	static _tex_size = 32; // #TEST
	static _origin = new Vector3(0, 0, 0); // #TEST
	
	if(ds_grid_width(_in_grid) <= _grid_size && ds_grid_height(_in_grid) <= _grid_size) {
		var _new_grid = ds_grid_create(1, 1);
		var _buffer = vertex_create_buffer();
		vertex_begin(_buffer, global.v_format);
		
		for(var xx = 0; xx < ds_grid_width(_in_grid); xx++) {
			for(var yy = 0; yy < ds_grid_height(_in_grid); yy++) {
				vertex_create_face(_buffer,
					new Vector3(_origin.x + (_tex_size * xx),				_origin.y + (_tex_size * yy),				_origin.z + _in_grid[# xx, yy].tile_h),
					new Vector3(_origin.x + (_tex_size * xx) + _tex_size,	_origin.y + (_tex_size * yy),				_origin.z + _in_grid[# xx, yy].tile_h),
					new Vector3(_origin.x + (_tex_size * xx) + _tex_size,	_origin.y + (_tex_size * yy) + _tex_size,	_origin.z + _in_grid[# xx, yy].tile_h),
					new Vector3(_origin.x + (_tex_size * xx),				_origin.y + (_tex_size * yy) + _tex_size,	_origin.z + _in_grid[# xx, yy].tile_h),
					-1, 1, _tex_size, _tex_size);
			}
		}
		
		vertex_end(_buffer);
		if(!_is_for_editing)vertex_freeze(_buffer);
		
		_new_grid[# 0, 0] = _buffer;
		return _new_grid;
	} else {
		
	}
}