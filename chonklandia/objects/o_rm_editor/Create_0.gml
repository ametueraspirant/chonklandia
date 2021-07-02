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
}

editor = {
	new_i: 0,
	h: {
		cur: 0,
		maxi: 12
	}
}

grid.data = ds_grid_create(grid.cells.w, grid.cells.h);

for(var xx = 0; xx < ds_grid_width(grid.data); xx++) {
	for(var yy = 0; yy < ds_grid_height(grid.data); yy++) {
		var list = {flo_i: 1, dec_i: 0, tile_h: 0};
		ds_grid_set(grid.data, xx, yy, list);
	}
}

testgrid = load_csv("untitledb.tmx");
for(var xx = 0; xx < ds_grid_width(testgrid); xx++) {
	var testline = "";
	for(var yy = 0; yy < ds_grid_height(testgrid); yy++) {
		testline += string(testgrid[# xx, yy]);
	}
	show_debug_message(testline);
}

//misc
editor.new_i = 0;
debug = false;
