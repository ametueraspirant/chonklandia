// set up temp mx my
var _mx = floor((mouse_x / grid.spr.w) + (mouse_y / grid.spr.h));
var _my = floor((mouse_y / grid.spr.h) - (mouse_x / grid.spr.w));

// clamp and write to memory
grid.mx = clamp(_mx, 0, grid.cells.w - 1);
grid.my = clamp(_my, 0, grid.cells.h - 1);

if(input_check(Verb.lclick)) {
	grid.data[# grid.mx, grid.my] = new_index;
}

if(input_check_pressed(Verb.rclick)) {
	if(new_index + 1 < sprite_get_number(s_floor_test))new_index++;
	else new_index = 0;
}

if(input_check_pressed(Verb.f3))debug = !debug;