// #TEST
if(debug) {
	draw_set_halign(fa_left);
	with(o_rm_editor) {
		draw_text(10, 5, "mouse x: " + string(grid.mx));
		draw_text(10, 25, "mouse y: " + string(grid.my));
		draw_text(10, 45, "new index: " + string(editor.new_i));
		draw_text(10, 65, "cam x: " + string(o_camera.cam._x));
		draw_text(10, 85, "cam y: " + string(o_camera.cam._y));
		draw_text(10, 105, "grid height: " + string(editor.h.cur));
	}
} else {
	draw_set_halign(fa_left);
	draw_text(5, 5, "Press F3 to open the debug menu");
}

// #TEST
if(inputs) {
	draw_set_halign(fa_right);
	draw_text(right_offset, 5, "scroll up - increase height");
	draw_text(right_offset, 25, "scroll down - decrease height");
	draw_text(right_offset, 45, "ctrl - hold for smaller height increments");
	draw_text(right_offset, 65, "right click - change placed block");
	draw_text(right_offset, 85, "left click - place selected block");
} else {
	draw_set_halign(fa_right);
	draw_text(right_offset, 5, "Press F2 to open input instructions");
}