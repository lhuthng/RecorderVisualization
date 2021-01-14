// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play() {
	with (obj_manager) if (existed) with (historam) {
		if (pause) {
			last_time = current_time;
			pause = false;
			with (obj_controller) play_button.sprite_index = spr_pause_button;
		}	
		else {
			pause = true;
			with (obj_controller) play_button.sprite_index = spr_play_button;
		}
	}
}