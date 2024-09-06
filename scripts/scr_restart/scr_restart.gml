function scr_restart() {
	with (obj_manager) if (existed) {
		with (historam) {
			first_note = 0;
			playing_note = -1;
			last_time = current_time;
			start_time = 0;
			pause = true;
		}	
		with (visual) {
			note = 0;
		}
		scr_assign_particle_note(-1);
		scr_pause();
	}
}