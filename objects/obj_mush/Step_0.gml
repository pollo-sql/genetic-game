// Inherit the parent event
event_inherited();

if (add_turn) {
	// Big
	if (turns >= 5 and turns < 10) {
		image_index = 1;
	// Death
	} else if (turns >= 10) { 
		instance_destroy(id);
	}
}