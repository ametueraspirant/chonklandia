/// @description set up grid
grid = { // #TEST
	cells: {
		w: global.xgrid,
		h: global.ygrid
	},
	spr: {
		grass: sprite_get_texture(s_grass_top_test, 0),
		ground: sprite_get_texture(s_ground_side_test, 0)
	},
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

grid.data = init_new_map_grid(grid.cells.w, grid.cells.h, function() constructor {flo_i = 1; dec_i = 0; tile_h = 0;}); //# TEST

new_map = render_map_to_buffer(grid.data, false);