/// @description

switch(room) {
	case rm_focus:
		draw_set_halign(fa_center);
		//draw_set_color(#CED1FF);
		draw_text(global.base_w/2,global.base_h/2-16,"CLICK HERE");
		//draw_set_color(#CED1FF);
		draw_text(global.base_w/2,global.base_h/2,"TO FOCUS GAME");
		draw_set_color(c_white);
		draw_set_halign(fa_left);
	break;
		
	case rm_main_menu:
				
		if(frame_counter % 60 < 40){	
			draw_set_halign(fa_center);
			draw_text(global.base_w/2,global.base_h - 32,"PRESS ENTER");
			draw_set_halign(fa_left);
		}
		
	break;
	
	case rm_end:
		//Do something
	break;
	
	case rm_game:
		//Do something
	break;
}