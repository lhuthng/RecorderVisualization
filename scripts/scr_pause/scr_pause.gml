// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pause(){
	with (obj_manager) if (existed) with (historam) {
		pause = true;
		audio_pause_all();
		with (obj_controller) {
			play_button.sprite_index = spr_play_button;
			play_button.func = scr_play;
		}
		obj_particle_manager.alarm[0] = -1;
	}
}