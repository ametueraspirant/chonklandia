grid.mx = clamp(floor(mouse_x/_grid_size), 0, grid.cells.w);
grid.my = clamp(floor(mouse_y/_grid_size), 0, grid.cells.h);

if(input_check(Verb.lclick)) {
	grid.data[# grid.mx, grid.my] = new_index_test;
}

if(input_check_pressed(Verb.rclick)) {
	if(new_index_test + 1 < sprite_get_number(s_floor_test))new_index_test++;
	else new_index_test = 0;
}

if(input_check_pressed(Verb.f3))debug = !debug;