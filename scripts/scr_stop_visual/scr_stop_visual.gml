// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_stop_visual(){
	with (obj_manager) {
		scr_assign_particle_note(-1);
		scr_pause();
		visual.note = 0;
	}
}