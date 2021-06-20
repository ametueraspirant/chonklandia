/// @description set up grid
grid = {
	cells: {
		w: 10,
		h: 10
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
ds_grid_set_region(grid.data, 0, 0, grid.cells.w, grid.cells.h, 1);

//misc
new_index = 0;
debug = false;
