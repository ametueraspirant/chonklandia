function init_new_map_grid(_w, _h, _data) {
	var _grid = ds_grid_create(_w, _h);
	
	for(var xx = 0; xx < ds_grid_width(_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(_grid); yy++) {
			_grid[# xx, yy] = new _data();
		}
	}
	
	return _grid;
}

function render_map_to_buffer(_in_grid, _is_for_editing) {
	static _grid_size = 16;
	static _tex_size = 32; // #TEST
	
	if(ds_grid_width(_in_grid) <= _grid_size && ds_grid_height(_in_grid) <= _grid_size) {
		var _new_grid = ds_grid_create(1, 1);
		var _buffer = vertex_create_buffer();
		var _grass_tex = sprite_get_texture(s_grass_top_test, 0);
		vertex_begin(_buffer, global.v_format);
		
		for(var xx = 0; xx < ds_grid_width(_in_grid); xx++) {
			for(var yy = 0; yy < ds_grid_height(_in_grid); yy++) {
				vertex_create_face(_buffer, 
			}
		}
		
		vertex_end(_buffer);
		if(!_is_for_editing)vertex_freeze(_buffer);
		
		_new_grid[# 0, 0] = _buffer;
		return _new_grid;
	} else {
		
	}
}