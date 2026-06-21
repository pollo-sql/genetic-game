/// @description

var emptys = 0;
var deck_tile;
var plant_number = instance_number(obj_plant);

if (next == 0) {
	for (var i = 0; i < deck_size; ++i) {
		deck_tile = instance_find(obj_tile_deck, i);
		if (deck_tile.plant == noone) {
			emptys += 1;	
		}
	}
}


if (emptys == deck_size) {
	if (init) init = 0;
	else play_turn = 1;
	next = 1;
}

if (play_turn) {
	if (active_plant == noone) {
		if (array_first(active_plants) != undefined) {
			active_plant = array_shift(active_plants);
			active_plant.active = 1;
		} else {
			play_turn = 0;	
		}
	} else if (not active_plant.active) {
		active_plant = noone;
	}
}


// Turn logic
if (next and not play_turn) {
	turn += 1;
	turns_next_weed -= 1;

	// Progress plants	
	plant_number = instance_number(obj_plant);
	for (var i = 0; i < plant_number; ++i) {
		with(instance_find(obj_plant, i)) {
			if (in_board and not just_placed) add_turn = 1;
		}
	}

	// Re-stock deck
	for (var i = 0; i < deck_size; ++i) {
		deck_tile = instance_find(obj_tile_deck, i);
		add_plant(choose_from_array(plant_options), deck_tile);
	}
	next = 0;
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