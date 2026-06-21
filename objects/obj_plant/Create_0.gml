in_board = type == "bad";
just_placed = 0;
grabbed = 0;
dropped = 0;
active = 0;
curr_tile = instance_position(
	x + global.tile_size * 0.5,
	y + global.tile_size * 0.5,
	obj_tile
);
turns = 0;
oxygen = 0;
seed = 0;
add_turn = 0;
depth = -20;

image_speed = 0;

sprite_collision_mask(sprite_index, 0, bboxmode_fullimage, 0, 0, 0, 0, bboxkind_rectangular, 0);