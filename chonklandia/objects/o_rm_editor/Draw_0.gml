/// @description draw map grid

for(var xx = 0; xx < ds_grid_width(grid.map); xx++) {
	for(var yy = 0; yy < ds_grid_height(grid.map); yy++) {
		var _list = grid.map[# xx, yy];
		for(var zz = 0; zz < ds_list_size(_list); zz++) {
			vertex_submit(_list[| zz], pr_trianglelist, grid.spr[zz]);
		}
	}
}