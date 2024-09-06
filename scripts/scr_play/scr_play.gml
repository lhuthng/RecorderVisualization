function scr_play() {
	with (obj_manager) if (existed) with (historam) {
		if (first_note == -1) scr_restart();
		last_time = current_time;
		pause = false;
		audio_resume_all();
		with (obj_controller) {
			play_button.sprite_index = spr_pause_button;
			play_button.func = scr_pause;
		}
		with (obj_particle_manager) {
			alarm[0] = delay;
		}
	}
}