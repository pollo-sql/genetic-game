// Inherit the parent event
event_inherited();

if (just_placed) {
}

if (add_turn) {
	// Small
	if (turns >= 6 and turns < 12) {
		image_index = 1;
	// Death
	} else if (turns >= 12) { 
		instance_destroy(id);
	}
}