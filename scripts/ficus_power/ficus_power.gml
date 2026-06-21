function ficus_power(x_pos, y_pos, size, value) {
	var aux = global.tile_size * 0.5;
	var aux_x = x_pos + aux;
	var aux_y = y_pos + aux;
	var plant;
	
	for (i = 1; i <= size; i++) {
		// Up
		plant = instance_position(aux_x, aux_y - aux * 2 * i, obj_plant);
		if (plant != noone) plant.turns += value;
	
		// Down
		plant = instance_position(aux_x, aux_y + aux * 2 * i, obj_plant);
		if (plant != noone) plant.turns += value;
	
		// Left
		plant = instance_position(aux_x - aux * 2 * i, aux_y, obj_plant);
		if (plant != noone) plant.turns += value;
	
		// Right
		plant = instance_position(aux_x + aux * 2 * i, aux_y, obj_plant);
		if (plant != noone) plant.turns += value;
	}
}