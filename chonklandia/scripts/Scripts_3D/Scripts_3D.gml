function Vector3(_x, _y, _z) constructor {
	x = _x;
	y = _y;
	z = _z;
}

function vertex_create_face(_v_buf, _p1, _p2, _p3, _p4, _colour, _alpha, _width, _height) {
	static tex_s = 32;
	var tex_w = _height / tex_s;
	var tex_h = _width / tex_s;
	
	// first triangle
	vertex_position_3d(_v_buf, _p1.x, _p1.y, _p1.z);
	vertex_texcoord(_v_buf, 0, 0);
	vertex_color(_v_buf, _colour, _alpha);
	
	vertex_position_3d(_v_buf, _p2.x, _p2.y, _p2.z);
	vertex_texcoord(_v_buf, tex_w, 0);
	vertex_color(_v_buf, _colour, _alpha);
	
	vertex_position_3d(_v_buf, _p3.x, _p3.y, _p3.z);
	vertex_texcoord(_v_buf, tex_w, tex_h);
	vertex_color(_v_buf, _colour, _alpha);
	
	vertex_position_3d(_v_buf, _p1.x, _p1.y, _p1.z);
	vertex_texcoord(_v_buf, 0, 0);
	vertex_color(_v_buf, _colour, _alpha);
	
	vertex_position_3d(_v_buf, _p3.x, _p3.y, _p3.z);
	vertex_texcoord(_v_buf, tex_w, tex_h);
	vertex_color(_v_buf, _colour, _alpha);
	
	vertex_position_3d(_v_buf, _p4.x, _p4.y, _p4.z);
	vertex_texcoord(_v_buf, 0, tex_h);
	vertex_color(_v_buf, _colour, _alpha);
}

function convert_grid_to_vertex() {
	
}