/// @description

turn = 0;
plant_ammount = 0;
next = 0;

deck_size = instance_number(obj_tile_deck);
board_size = instance_number(obj_tile_board);

plant_options = [
	obj_ficus,
	obj_flytrap,
	obj_succu,
];

max_turns_next_weed = 6;
min_turns_next_weed = 3;
turns_next_weed = max_turns_next_weed;

weeds_options = [
	obj_mush
];

