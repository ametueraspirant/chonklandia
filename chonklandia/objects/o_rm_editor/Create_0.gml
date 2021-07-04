/// @description set up grid
grid = {
	cells: {
		w: global.xgrid,
		h: global.ygrid
	},
	spr: {
		w: sprite_get_width(s_width_height_test),
		h: sprite_get_height(s_width_height_test)
	},
	data: [],
	mx: 0,
	my: 0
}

editor = {
	new_i: 0,
	h: {
		cur: 0,
		maxi: 12
	}
}

enum dt {
	hidden,
	single,
	stack
}

grid.data = ds_grid_create(grid.cells.w, grid.cells.h);

for(var xx = 0; xx < ds_grid_width(grid.data); xx++) {
	for(var yy = 0; yy < ds_grid_height(grid.data); yy++) {
		var list = {flo_i: 1, dec_i: 0, tile_h: 0, drawn: dt.single};
		ds_grid_set(grid.data, xx, yy, list);
	}
}

/*var buffer = buffer_load("isometric_csv_b.json");
var json = buffer_read(buffer, buffer_text);
buffer_delete(buffer);
testgrid = json_parse(json);
show_debug_message(testgrid.layers[0]);*/

//misc
debug = false;
