just_placed = 0;
var _aux = global.tile_size * 0.5;
if (grabbed) {
	x = obj_player.x - _aux;
	y = obj_player.y - _aux;
} else if (dropped) {
	var new_tile;
	new_tile = instance_position(x + _aux, y + _aux, obj_tile_board);
	if (new_tile != noone and new_tile.plant == noone) {
		curr_tile.plant = noone;
		new_tile.plant = id;
		curr_tile = new_tile;
		just_placed = in_board == 0;
		in_board = 1;
	}
	x = curr_tile.x;
	y = curr_tile.y;
	dropped = 0;
}

