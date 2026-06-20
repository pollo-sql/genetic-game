if (grabbed) {
	x = obj_player.x - 12;
	y = obj_player.y - 12;
} else {
	var _new_tile;
	_new_tile = instance_position(x + 12, y + 12, obj_tile);
	if (_new_tile != noone) {
		x = _new_tile.x;
		y = _new_tile.y;
		last_x = x;
		last_y = y;
	} else {
		x = last_x;
		y = last_y;
	}
}