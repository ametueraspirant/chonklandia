/// @description handle menu inputs





/*

// clamp and write to memory
grid.mx = clamp(_mx, 0, grid.w - 1);
grid.my = clamp(_my, 0, grid.h - 1);

// #TEST
if(input_check_pressed(Verb.rclick)) {
	if((editor.new_i + 1) < sprite_get_number(s_floor_test))editor.new_i++;
	else editor.new_i = 0;
}

// #TEST
if(input_check_pressed(Verb.uscroll)) {
	if(input_check(Verb.ctrl)) {
		if(ceil((editor.h.cur + 0.2)) < editor.h.maxi)editor.h.cur += 0.2;
		else editor.h.cur = 0;
	} else {
		if(floor((editor.h.cur + 1)) < editor.h.maxi)editor.h.cur = floor(editor.h.cur + 1);
		else editor.h.cur = 0;
	}
}

// #TEST
if(input_check_pressed(Verb.dscroll)) {
	if(input_check(Verb.ctrl)) {
		if(editor.h.cur > 0)editor.h.cur -= 0.2;
		else editor.h.cur = (editor.h.maxi - 1);
	} else {
		if(ceil(editor.h.cur > 0))editor.h.cur = ceil(editor.h.cur - 1);
		else editor.h.cur = (editor.h.maxi - 1);
	}
}

// #TEST
if(input_check(Verb.lclick)) {
	grid.data[# grid.mx, grid.my].flo_i = editor.new_i;
	grid.data[# grid.mx, grid.my].tile_h = editor.h.cur;
}