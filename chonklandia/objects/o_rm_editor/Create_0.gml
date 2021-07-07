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
	new_i: 1,
	h: {
		cur: 0,
		maxi: 12
	}
}

init_new_map_grid(grid.data, {flo_i: 1, dec_i: 0, tile_h: 0});
