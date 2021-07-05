// define variables
ground_depth = 80;
ground_offset = 0;
z = depth = ground_offset;

// top vertex buffer
vbuff_top = vertex_create_buffer();
tex_top = sprite_get_texture(s_grass_top_test, 0)

vertex_begin(vbuff_top, global.v_format);
vertex_create_face(vbuff_top, 
	new Vector3(x, y, z + ground_depth),
	new Vector3(x + sprite_width, y, z + ground_depth),
	new Vector3(x + sprite_width, y, z),
	new Vector3(x, y, z),
	c_gray, 1, sprite_width, ground_depth);

vertex_end(vbuff_top);
vertex_freeze(vbuff_top);

// sides vertex buffer
vbuff_sides = vertex_create_buffer();
tex_sides = sprite_get_texture(s_ground_side_test, 0);

vertex_begin(vbuff_sides, global.v_format);

// left face
vertex_create_face(vbuff_sides,
	new Vector3(x, y, z + ground_depth),
	new Vector3(x, y, z),
	new Vector3(x, y + sprite_height, z),
	new Vector3(x, y + sprite_height, z + ground_depth),
	c_gray, 1, ground_depth, sprite_height);
	
// right face
vertex_create_face(vbuff_sides,
	new Vector3(x + sprite_width, y, z + ground_depth),
	new Vector3(x + sprite_width, y, z),
	new Vector3(x + sprite_width, y + sprite_height, z),
	new Vector3(x + sprite_width, y + sprite_height, z + ground_depth),
	c_gray, 1, ground_depth, sprite_height);

vertex_end(vbuff_sides);
vertex_freeze(vbuff_sides);