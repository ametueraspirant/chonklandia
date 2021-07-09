/// @description set up grid
grid = { // #TEST
	cells: {
		w: global.xgrid,
		h: global.ygrid
	},
	spr: {
		grass: sprite_get_texture(s_grass_top_test, 0),
		snow: sprite_get_texture(s_snow_top_test, 0),
		water: sprite_get_texture(s_water_test, 0),
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

enum Tiles {
	grass,
	ground,
	snow,
	water
}

grid.data = init_new_map_grid(grid.cells.w, grid.cells.h, function() constructor {buff = Tiles.grass; tile_h = 0;}); //# TEST

new_map = render_full_grid(grid.data);