/// @description

var curr_turn = turn;
var empty_tiles = [];
next = 0;

// Next plant logic
for (var i = 0; i < deck_size; ++i)
{
    var empty_tile = instance_find(obj_tile_deck, i);
	if (empty_tile.plant == noone) {
		array_push(empty_tiles, empty_tile);
		next = 1;
	}
}

// Turn logic
if (next) {
	audio_play_sound(snd_click, 10, 0);
	turn += 1;
	turns_next_weed -= 1;

	// Progress plants	
	var plant_number = instance_number(obj_plant);
	for (var i = 0; i < plant_number; ++i) {
		with(instance_find(obj_plant, i)) {
			if (in_board and not just_placed) add_turn = 1;
		}
	}

	// Re-stock deck
	for (var i = 0; i < array_length(empty_tiles); ++i) {
		add_plant(choose_from_array(plant_options), empty_tiles[i]);
	}
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
	if (array_length(candidates) > 0) {
		var random_candidate = choose_from_array(candidates);
		var random_weed = choose_from_array(weeds_options);
		var new_weed = add_plant(random_weed, random_candidate);
	}	
}