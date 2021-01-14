// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_restart() {
	with (obj_manager) if (existed) {
		with (historam) {
			current = 0;
			last_time = current_time;
			start_time = 0;
			pause = true;
		}	
		with (visual) {
			note = 0;
		}
		with (obj_controller) {
			play_button.sprite_index = spr_play_button;
		}
	}
}