function add_plant(plant, tile) {
	var new_plant = instance_create_layer(
		tile.x, 
		tile.y, 
		"Instances",
		plant
	)
	new_plant.curr_tile = tile;
	tile.plant = new_plant;
}