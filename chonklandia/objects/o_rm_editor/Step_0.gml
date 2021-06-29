// set up temp mx my
var _mx = floor((mouse_x / grid.spr.w) + (mouse_y / grid.spr.h));
var _my = floor((mouse_y / grid.spr.h) - (mouse_x / grid.spr.w));

// clamp and write to memory
grid.mx = clamp(_mx, 0, grid.cells.w - 1);
grid.my = clamp(_my, 0, grid.cells.h - 1);

if(input_check_pressed(Verb.rclick)) {
	if((editor.new_i + 1) < sprite_get_number(s_floor_test))editor.new_i++;
	else editor.new_i = 0;
}

if(input_check_pressed(Verb.uscroll)) {
	if((editor.h.cur + 1) < editor.h.maxi)editor.h.cur++;
	else editor.h.cur = 0;
}

if(input_check_pressed(Verb.dscroll)) {
	if(editor.h.cur > 0)editor.h.cur--;
	else editor.h.cur = (editor.h.maxi - 1);
}

if(input_check(Verb.lclick)) {
	grid.data[# grid.mx, grid.my].flo_i = editor.new_i;
	grid.data[# grid.mx, grid.my].tile_h = editor.h.cur;
}

if(input_check_pressed(Verb.f3))debug = !debug;