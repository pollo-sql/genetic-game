// Inherit the parent event
event_inherited();

// Seed
if (just_placed) {
	ficus_power(x, y, 1, 1);
}

if (add_turn) {
	// Small
	if (turns >= 7 and turns < 14) {
		image_index = 1;
		ficus_power(x, y, 1, 1);
	// Big
	} else if (turns >= 14 and turns < 22) { 
		image_index = 2;
		ficus_power(x, y, 1, 2);
	// Death
	} else if (turns >= 22) {
		instance_destroy(id);
	}
}