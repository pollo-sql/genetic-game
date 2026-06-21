function choose_from_array(array) {
	if (array_length(array) == 0) return pointer_null;
	var random_index = irandom(array_length(array) - 1);
	return array[random_index];
}