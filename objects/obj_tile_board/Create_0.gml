// Inherit the parent event
event_inherited();

if (type != "") {
	sprite_index = asset_get_index("sp_tile_" + type);
	if (sprite_index == "-1") sprite_index = asset_get_index("sp_tile");
}