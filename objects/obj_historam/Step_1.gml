/// @description Insert description here
// You can write your code in this editor

if (first_note != -1 and first_note < array_length(sequence)) {
	if (not pause) {
		start_time += current_time - last_time;
		last_time = current_time;
	}
	var note_end_time = times[first_note] + scr_calculate_time(manager.whimsical, sequence[first_note, 1]);
	if (note_end_time < start_time) {
		first_note += 1;
		if (first_note == array_length(sequence)) {
			audio_stop_all();
			scr_assign_particle_note(-1);
			first_note = -1;
			scr_stop_visual();
		}
	}
	var next_note = playing_note + 1;
	if (next_note >= array_length(sequence)) next_note = -1;
	if (next_note != -1 and times[next_note] < start_time + prior_time) {
		audio_stop_all();
		var pitch = sequence[next_note, 0];
		if (pitch != 0) {
			manager.visual.note = clamp(pitch + offset, 1, 27);
			scr_assign_particle_note(pitch);
			audio_play_sound(manager.sounds[pitch], 1, false, 0.05);
		}
		playing_note = next_note;
	}
}