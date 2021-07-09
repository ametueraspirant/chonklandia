function init_new_map_grid(_w, _h, _data) {
	var _grid = ds_grid_create(_w, _h);
	
	for(var xx = 0; xx < ds_grid_width(_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(_grid); yy++) {
			_grid[# xx, yy] = new _data();
			_grid[# xx, yy].tile_h = irandom_range(5, 20) * 5; // #TEST
		}
	}
	
	return _grid;
}

function render_top_face(_buffer, _in_grid, xx, yy, _origin, _tex_size) {
	vertex_create_face(_buffer,
		new Vector3(_origin.x + (_tex_size * xx),				_origin.y + (_tex_size * yy),				_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx) + _tex_size,	_origin.y + (_tex_size * yy),				_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx) + _tex_size,	_origin.y + (_tex_size * yy) + _tex_size,	_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx),				_origin.y + (_tex_size * yy) + _tex_size,	_origin.z + _in_grid[# xx, yy].tile_h),
		-1, 1, _tex_size, _tex_size);
}

function render_lr_faces(_buffer, _in_grid, xx, yy, _origin, _tex_size, _is_right) {
	vertex_create_face(_buffer,
		new Vector3(_origin.x + (_tex_size * xx) + (_is_right * _tex_size),		_origin.y + (_tex_size * yy),				_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx) + (_is_right * _tex_size),		_origin.y + (_tex_size * yy) + _tex_size,	_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx) + (_is_right * _tex_size),		_origin.y + (_tex_size * yy) + _tex_size,	_origin.z							 ),
		new Vector3(_origin.x + (_tex_size * xx) + (_is_right * _tex_size),		_origin.y + (_tex_size * yy),				_origin.z							 ),
		-1, 1, _tex_size, _tex_size);
}

function render_fb_faces(_buffer, _in_grid, xx, yy, _origin, _tex_size, _is_front) {
	vertex_create_face(_buffer,
		new Vector3(_origin.x + (_tex_size * xx),				_origin.y + (_tex_size * yy) + (_is_front * _tex_size),		_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx) + _tex_size,	_origin.y + (_tex_size * yy) + (_is_front * _tex_size),		_origin.z + _in_grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (_tex_size * xx) + _tex_size,	_origin.y + (_tex_size * yy) + (_is_front * _tex_size),		_origin.z							 ),
		new Vector3(_origin.x + (_tex_size * xx),				_origin.y + (_tex_size * yy) + (_is_front * _tex_size),		_origin.z							 ),
		-1, 1, _tex_size, _tex_size);
}
	
function render_top_buffer(_grid, _origin) {
	var _top_buffer = vertex_create_buffer();
	vertex_begin(_top_buffer, global.v_format);
	for(var xx = 0; xx < global.chunk_size; xx++) {
		for(var yy = 0; yy < global.chunk_size; yy++) {
			render_top_face(_top_buffer, _grid, xx, yy, _origin, global.tex_size);
		}
	}
	return vertex_end(_top_buffer);
}

function render_side_buffer(_grid, _origin) {
	var _sides_buffer = vertex_create_buffer();
	vertex_begin(_sides_buffer, global.v_format);
	for(var xx = 0; xx < global.chunk_size; xx++) {
		for(var yy = 0; yy < global.chunk_size; yy++) {
			render_lr_faces(_sides_buffer, _grid, xx, yy, _origin, global.tex_size, false);
			render_lr_faces(_sides_buffer, _grid, xx, yy, _origin, global.tex_size, true);
			render_fb_faces(_sides_buffer, _grid, xx, yy, _origin, global.tex_size, false);
			render_fb_faces(_sides_buffer, _grid, xx, yy, _origin, global.tex_size, true);
		}
	}
	return vertex_end(_sides_buffer);
}

function edit_tile_height(_grid, _x, _y, _inc_buffers) {
	render_grid_to_buffer(_grid, _x, _y, _inc_buffers);
}

function edit_tile_index(_grid, _x, _y, _old_buffers, _new_buffers) {
	var _buffers = _old_buffers + _new_buffers;
	render_grid_to_buffer(_grid, _x, _y, _buffers);
	return _new_buffers;
}

function render_full_grid(_grid) {
	for(var xx = 0; xx < ds_grid_width(_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(_grid); yy++) {
			render_grid_to_buffer(_grid, xx, yy, "init");
		}
	}
}