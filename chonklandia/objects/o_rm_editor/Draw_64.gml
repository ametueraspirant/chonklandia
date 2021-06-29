if(debug) {
	draw_text(0, 0, "mouse x: " + string(grid.mx));
	draw_text(0, 20, "mouse y: " + string(grid.my));
	draw_text(0, 40, "new index: " + string(editor.new_i));
	draw_text(0, 60, "cam x: " + string(o_camera.cam._x));
	draw_text(0, 80, "cam y: " + string(o_camera.cam._y));
	draw_text(0, 100, "grid height: " + string(editor.h.cur));
}