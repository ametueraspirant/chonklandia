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
	-1, 1, sprite_width, ground_depth);

vertex_end(vbuff_top);
vertex_freeze(vbuff_top);