#macro _instance_layer "Instances"
#macro _terrain_layer "Terrain"

debug = false;
inputs = false;
global.right_offset = room_width/2-10; // #TEST
global.bottom_offset = room_height/2-10; // #TEST

global.xgrid = get_integer("What do you want grid width to be? (top left to bottom right)", 10); // #TEST
global.ygrid = get_integer("What do you want grid height to be? (top right to bottom left)", 10); // #TEST

instance_create_layer(0, 0, _instance_layer, o_input_manager);
instance_create_layer(0, 0, _terrain_layer, o_rm_editor);
instance_create_layer(0, 0, _instance_layer, o_camera);

randomise();