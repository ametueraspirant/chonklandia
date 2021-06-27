/// @description set up grid
grid = {
	cells: {
		w: 10,
		h: 10
	},
	index: {
		flo: 0,
		dec: 0
	},
	spr: {
		w: sprite_get_width(s_width_height_test),
		h: sprite_get_height(s_width_height_test)
	},
	data: [],
	mx: 0,
	my: 0
};

grid.data = ds_grid_create(grid.cells.w, grid.cells.h);

for(var xx = 0; xx < ds_grid_width(grid.data); xx++) {
	for(var yy = 0; yy < ds_grid_height(grid.data); yy++) {
		var list = {flo_i: 1, dec_i: 0, height: 0};
		ds_grid_set(grid.data, xx, yy, list);
	}
}

//misc
new_index = 0;
debug = false;
