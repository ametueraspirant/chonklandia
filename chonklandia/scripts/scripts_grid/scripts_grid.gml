function init_new_map_grid(_w, _h, _data) { // #COMPLETE
	var _grid = ds_grid_create(_w, _h);
	
	for(var xx = 0; xx < ds_grid_width(_grid); xx++) {
		for(var yy = 0; yy < ds_grid_height(_grid); yy++) {
			_grid[# xx, yy] = new _data();
			_grid[# xx, yy].tile_h = irandom_range(5, 20) * 5; // #TEST
		}
	}
	
	return _grid;
}
	
function update_map_grid() { // #INCOMPLETE
	
}

function render_top_face(_buffer, _grid, xx, yy, _origin) { // #COMPLETE
	vertex_create_face(_buffer,
		new Vector3(_origin.x + (global.tex_size * xx),						_origin.y + (global.tex_size * yy),						_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx) + global.tex_size,	_origin.y + (global.tex_size * yy),						_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx) + global.tex_size,	_origin.y + (global.tex_size * yy) + global.tex_size,	_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx),						_origin.y + (global.tex_size * yy) + global.tex_size,	_origin.z + _grid[# xx, yy].tile_h),
		-1, 1, global.tex_size, global.tex_size);
}

function render_lr_faces(_buffer, _grid, xx, yy, _origin, _lowest, _is_right) { // #COMPLETE
	vertex_create_face(_buffer,
		new Vector3(_origin.x + (global.tex_size * xx) + (_is_right * global.tex_size),		_origin.y + (global.tex_size * yy),						_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx) + (_is_right * global.tex_size),		_origin.y + (global.tex_size * yy) + global.tex_size,	_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx) + (_is_right * global.tex_size),		_origin.y + (global.tex_size * yy) + global.tex_size,	_origin.z + _lowest				  ),
		new Vector3(_origin.x + (global.tex_size * xx) + (_is_right * global.tex_size),		_origin.y + (global.tex_size * yy),						_origin.z + _lowest				  ),
		-1, 1, global.tex_size, global.tex_size);
}

function render_fb_faces(_buffer, _grid, xx, yy, _origin, _lowest, _is_front) { // #COMPLETE
	vertex_create_face(_buffer,
		new Vector3(_origin.x + (global.tex_size * xx),						_origin.y + (global.tex_size * yy) + (_is_front * global.tex_size),		_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx) + global.tex_size,	_origin.y + (global.tex_size * yy) + (_is_front * global.tex_size),		_origin.z + _grid[# xx, yy].tile_h),
		new Vector3(_origin.x + (global.tex_size * xx) + global.tex_size,	_origin.y + (global.tex_size * yy) + (_is_front * global.tex_size),		_origin.z + _lowest				  ),
		new Vector3(_origin.x + (global.tex_size * xx),						_origin.y + (global.tex_size * yy) + (_is_front * global.tex_size),		_origin.z + _lowest				  ),
		-1, 1, global.tex_size, global.tex_size);
}
	
function render_buffer(_grid, _origin, _index) { // #IN PROGRESS
	var _buffer = vertex_create_buffer();
	vertex_begin(_buffer, global.v_format);
	for(var xx = 0; xx < global.chunk_size; xx++) {
		for(var yy = 0; yy < global.chunk_size; yy++) {
			if(_grid[# xx, yy].top_i == _index) {
				render_top_face(_buffer, _grid, xx, yy, _origin);
			}
			if(_grid[# xx, yy].side_i == _index) {
				// define relative heights
				var _cur_h = _grid[# xx, yy].tile_h;
				var _left_h = _grid[# max(xx - 1, 0), yy].tile_h;
				var _right_h = _grid[# min(xx + 1, ds_grid_width(_grid)), yy].tile_h;
				var _up_h = _grid[# xx, max(yy - 1, 0)].tile_h;
				var _down_h = _grid[# xx, min(yy + 1, ds_grid_height(_grid))].tile_h;
				
				// apply draw to grid
				if(_grid[# xx, yy].side_i == _index) {
					if(_cur_h > _left_h) {
						render_lr_faces(_buffer, _grid, xx, yy, _origin, _left_h, false);
					}
					if(_cur_h > _right_h) {
						render_lr_faces(_buffer, _grid, xx, yy, _origin, _right_h, true);
					}
					if(_cur_h > _up_h) {
						render_fb_faces(_buffer, _grid, xx, yy, _origin, _up_h, false);
					}
					if(_cur_h > _down_h) {
						render_fb_faces(_buffer, _grid, xx, yy, _origin, _down_h, true);
					}
				}
			}
		}
	}
	return vertex_end(_buffer);
}
	
function render_chunk(_grid, _x, _y, _buffer) { // #IN PROGRESS
	var _list = ds_list_create();
	var _origin = new Vector3(_x * global.tex_size * global.chunk_size, _y * global.tex_size * global.chunk_size, 0);
	
	switch(_buffer) {
		case Tiles.grass:
			_list[| Tiles.grass] = render_buffer(_grid, _origin, Tiles.grass);
			_list[| Tiles.ground] = render_buffer(_grid, _origin, Tiles.ground);
		break;
		
		case Tiles.ground:
			_list[| Tiles.ground] = render_buffer(_grid, _origin, Tiles.ground);
		break;
		
		case Tiles.snow:
			_list[| Tiles.snow] = render_buffer(_grid, _origin, Tiles.snow);
			_list[| Tiles.ground] = render_buffer(_grid, _origin, Tiles.ground);
		break;
		
		case Tiles.water:
			render_buffer(_grid, _origin, Tiles.water);
		break;
	}
	
	return _list;
}

function edit_tile_height(_grid, _x, _y, _inc_buffers) { // #INCOMPLETE
	
}

function edit_tile_index(_grid, _x, _y, _old_buffers, _new_buffers) { // #INCOMPLETE
	
}

function render_full_grid(_grid) { // #INCOMPLETE
	var _map = ds_grid_create(ds_grid_width(_grid) / global.chunk_size, ds_grid_height(_grid) / global.chunk_size);
	
	
}