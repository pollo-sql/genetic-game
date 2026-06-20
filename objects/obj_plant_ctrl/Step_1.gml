/// @description

var curr_turn = turn;

// Next plant logic
for (var i = 0; i < deck_size; ++i)
{
    var deck_tile = instance_find(obj_tile_deck, i);
	if (deck_tile.plant == noone) {
		var random_plant = choose_from_array(plant_options);
		add_plant(random_plant, deck_tile);
		turn += 1;
	}
}

// Turn logic
if (curr_turn < turn) {
	turns_next_weed -= 1
}

// Weeds logic
if (turns_next_weed == 0) {
	turns_next_weed =  irandom_range(
		min_turns_next_weed, 
		max_turns_next_weed
	);
	var candidates = [];
	for (var i = 0; i < board_size; ++i)
	{
		var board_tile = instance_find(obj_tile_board, i);
		if (board_tile.plant == noone) array_push(candidates, board_tile);
	}
	var random_candidate = choose_from_array(candidates);
	var random_weed = choose_from_array(weeds_options);
	add_plant(random_weed, random_candidate);
}