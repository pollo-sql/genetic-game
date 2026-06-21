/// @description

turn = 0;
next = 0;
play_turn = 0;
init = 1;

active_plants = [];
active_plant = noone;

deck_size = instance_number(obj_tile_deck);
board_size = instance_number(obj_tile_board);

plant_options = [
	obj_succu,
	obj_flytrap,
	obj_ficus,
];

max_turns_next_weed = 6;
min_turns_next_weed = 3;
turns_next_weed = max_turns_next_weed;

weeds_options = [
	obj_mush
];