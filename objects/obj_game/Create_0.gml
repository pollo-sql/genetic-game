/// @description Insert description here
// You can write your code in this editor

//Set window and gui size
global.base_w = 256;
global.base_h = 240;

var _display_w = display_get_width();
var _display_h = display_get_height();

factor = min(2,_display_w/global.base_w,_display_h/global.base_h);
xpos = (_display_w / 2) - global.base_w*factor/2;
ypos = (_display_h / 2) - global.base_w*factor/2;

window_set_rectangle(xpos, ypos, global.base_w * factor, global.base_h * factor);
display_set_gui_size(global.base_w, global.base_h);

//Set font
global.pixel_font = font_add_sprite(spr_font_black, ord("/"), true, 2);
draw_set_font(global.pixel_font);

//Set rng
//randomise();


//General variables
frame_counter = 0;
music = -1;


//Level control, game levels need to be tagged as such

//levels = tag_get_asset_ids("level",asset_room);
//level_name = "";