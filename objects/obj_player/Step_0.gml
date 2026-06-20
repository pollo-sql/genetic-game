/// @description Input checking
// You can write your code in this editor

/*
action_lag_rem = max(0,action_lag_rem-1);
*/
x = mouse_x;
y = mouse_y;

var _right_check = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left_check = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up_check_pressed = keyboard_check_pressed(vk_up) 
						or keyboard_check_pressed(ord("W")) 
						or keyboard_check_pressed(vk_space) 
						or keyboard_check_pressed(ord("J"))
var _down_check = keyboard_check(vk_down) or keyboard_check(ord("S"));


/*
For mouse, use
device_mouse_x_to_gui(0) and device_mouse_y_to_gui(0)
*/