#macro _grid_size 16
#macro _instance_layer "Instances"
#macro _terrain_layer "Terrain"

instance_create_layer(0, 0, _instance_layer, o_input_manager);
instance_create_layer(0, 0, _terrain_layer, o_rm_editor);
instance_create_layer(0, 0, _instance_layer, o_camera);

randomise();