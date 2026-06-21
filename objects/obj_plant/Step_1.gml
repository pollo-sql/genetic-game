if (active) {
	if (power_counter == power_time) {
		power_counter = 0;
		active = 0;
	}
}