// Inherit the parent event
event_inherited();

// Seed
if (active) {
	if (turns == 0) {
		if (power_counter == 3) audio_play_sound(snd_ficus, 10, 0);
		if (power_counter == 15) ficus_power(x, y, 1, 1);
	}
}


if (add_turn) {
	// Small
	if (turns >= 5 and turns < 10) {
		image_index = 1;
		ficus_power(x, y, 1, 1);
	// Big
	} else if (turns >= 10 and turns < 15) { 
		image_index = 2;
		ficus_power(x, y, 2, 1);
	// Death
	} else if (turns >= 15) {
		instance_destroy(id);
	}
}