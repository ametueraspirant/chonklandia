function Vector3(_x, _y, _z) constructor {
	x = _x;
	y = _y;
	z = _z;
}
	
function vertex_point(_buffer, _x, _y, _z, _u, _v, _col, _alpha) {
	vertex_position_3d(_buffer, _x, _y, _z);
	vertex_texcoord(_buffer, _u, _v);
	vertex_normal(_buffer, _x, _y, _z);
	vertex_color(_buffer, _col, _alpha);
}

function vertex_create_face(_v_buf, _p1, _p2, _p3, _p4, _colour, _alpha, _width, _height) {
	static tex_s = 32;
	var tex_w = _height / tex_s;
	var tex_h = _width / tex_s;
	
	// first triangle
	vertex_point(_v_buf, _p1.x, _p1.y, _p1.z, 0, 0, _colour, _alpha); // point 1
	vertex_point(_v_buf, _p2.x, _p2.y, _p2.z, tex_w, 0, _colour, _alpha); // point 2
	vertex_point(_v_buf, _p3.x, _p3.y, _p3.z, tex_w, tex_h, _colour, _alpha); // point 3
	
	// second triangle
	vertex_point(_v_buf, _p1.x, _p1.y, _p1.z, 0, 0, _colour, _alpha); // point 1
	vertex_point(_v_buf, _p3.x, _p3.y, _p3.z, tex_w, tex_h, _colour, _alpha); // point 3
	vertex_point(_v_buf, _p4.x, _p4.y, _p4.z, 0, tex_h, _colour, _alpha); // point 4
}

function mouse_pos_3d() {
	var ray = convert_2d_to_3d(_main_camera, window_mouse_get_x(), window_mouse_get_y());
	var ray_dir = new Vector3(ray[0], ray[1], ray[2]);
	var ray_orig = new Vector3(ray[3], ray[4], ray[5]);
	
	
	//return new Vector3();
}