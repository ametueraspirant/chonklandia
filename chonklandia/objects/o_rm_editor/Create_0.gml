// set up grid
grid = {
	cells: {
		w: 10,
		h: 10
	},
	data: [],
	mx: 0,
	my: 0
};

grid.data = ds_grid_create(grid.cells.w, grid.cells.h);
ds_grid_set_region(grid.data, 0, 0, grid.cells.w, grid.cells.h, 1);

new_index_test = 0;

debug = false;