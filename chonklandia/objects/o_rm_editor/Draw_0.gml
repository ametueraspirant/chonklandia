/// @description draw map grid
//vertex_submit(new_map[# 0, 0][0], pr_trianglelist, grid.spr.grass);
//vertex_submit(new_map[# 0, 0][1], pr_trianglelist, grid.spr.ground);

for(var xx = 0; xx < ds_grid_width(grid.map); xx++) {
	for(var yy = 0; yy < ds_grid_height(grid.map); yy++) {
		var _list = grid.map[# xx, yy];
		for(var zz = 0; zz < ds_list_size(_list); zz++) {
			vertex_submit(_list[| zz], pr_trianglelist, grid.spr[zz]);
		}
	}
}
