function choose_from_array(array) {
	var random_index = irandom(array_length(array) - 1);
	return array[random_index];
}