#region // global innate variables
#macro _instance_layer "Instances"
#macro _terrain_layer "Terrain"

debug = false;
inputs = false;

global.tex_size = sprite_get_width(s_width_height_test);
global.chunk_size = 16;
#endregion

#region // #TEST variables
global.right_offset = room_width/2-10; // #TEST
global.bottom_offset = room_height/2-10; // #TEST

global.xgrid = get_integer("What do you want grid width to be? Increments by 16.", 1) * global.chunk_size; // #TEST
global.ygrid = get_integer("What do you want grid height to be? Increments by 16.", 1) * global.chunk_size; // #TEST
#endregion

#region // set up vertex format and 3d settings
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);
gpu_set_texrepeat(true);

vertex_format_begin();
	
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_normal();
vertex_format_add_color();

global.v_format = vertex_format_end();
#endregion

#region // create instances for managing the game
instance_create_layer(0, 0, _instance_layer, o_input_manager);
instance_create_layer(0, 0, _instance_layer, o_camera);
instance_create_layer(0, 0, _terrain_layer, o_rm_editor);
#endregion

randomise();