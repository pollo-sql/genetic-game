/// @description Insert description here
// You can write your code in this editor

//Frame counter, used for animations, etc. Resets every 4 seconds
frame_counter = (frame_counter + 1) % 240;

//Level control
/*
if (array_contains(levels,room)){
	
}
*/

//Room control
switch(room) {

	case rm_focus:
		if (mouse_check_button(mb_left)){
			room_goto(rm_main_menu);
			music = -1;
		}
	break;
	
	case rm_main_menu:
		if (music == -1){
			music = 1 // audio_play_sound(snd_music_menu,10,true);	
		}
		
		//Change if menu has multiple options
		if (keyboard_check_pressed(vk_enter)){
			room_goto(rm_game); //or appropiate level
			// audio_stop_sound(music);
			music = -1;
		}
		
	break;
	
	case rm_end:
		//Reset global variables
	break;
	
	case rm_game:
	break;
}