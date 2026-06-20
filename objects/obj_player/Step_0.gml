/// @description Input checking
// You can write your code in this editor

/*
action_lag_rem = max(0,action_lag_rem-1);
var _right_check = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left_check = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up_check_pressed = keyboard_check_pressed(vk_up) 
						or keyboard_check_pressed(ord("W")) 
						or keyboard_check_pressed(vk_space) 
						or keyboard_check_pressed(ord("J"))
var _down_check = keyboard_check(vk_down) or keyboard_check(ord("S"));
*/

x = device_mouse_x_to_gui(0);
y = device_mouse_y_to_gui(0);


var _mouse_c = mouse_check_button(mb_left);
var _mouse_p = mouse_check_button_pressed(mb_left);

if (grabbed_plant == noone) {
	image_index = _mouse_c;
}

if (!_mouse_c and grabbed_plant) {
	grabbed_plant.grabbed = 0;
	grabbed_plant = noone;
}

if (_mouse_p) {
	var _new_plant;
	_new_plant = instance_position(x, y, obj_plant);
	if (_new_plant != noone) {
		audio_play_sound(snd_click, 10, 0);
		_new_plant.grabbed = 1;
		grabbed_plant = _new_plant;
	}
}

