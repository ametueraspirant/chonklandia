// set up grid
#macro _grid_size 16

grid = {
	cells: {
		w: 10,
		h: 10
	},
	data: ds_grid_create(cells.w, cells.h)
};

ds_grid_set_region(grid.data, 0, 0, grid.cells.w, grid.cells.h, 1);
