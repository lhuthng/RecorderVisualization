// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zoom_in(){
	with (obj_manager) with (historam) {
		time_step -= 1;
		target_time = target_time * 1.1;
		if (full_time < 1) full_time = 1;
	}
}