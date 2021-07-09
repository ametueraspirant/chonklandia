/// @description set up grid
enum Tiles {
	grass,
	ground,
	snow,
	water
}

editor = {
	new_i: 0,
	mx: 0,
	my: 0,
	h: {
		cur: 0,
		maxi: 12,
		step: 5
	}
}

grid = { // #TEST
	w: global.xgrid,
	h: global.ygrid,
	spr: []
}

grid.spr[Tiles.grass] = sprite_get_texture(s_grass_top_test, 0);
grid.spr[Tiles.ground] = sprite_get_texture(s_ground_side_test, 0);
grid.spr[Tiles.snow] = sprite_get_texture(s_snow_top_test, 0);
grid.spr[Tiles.water] = sprite_get_texture(s_water_test, 0);

grid.data = init_new_map_grid(grid.w, grid.h, function() constructor {buff = Tiles.grass; tile_h = 0;}); //# TEST

//new_map = render_full_grid(grid.data);