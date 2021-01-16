/// @description Insert description here
// You can write your code in this editor

// Draw background
var offset_x = 2, offset_y = 40;
scr_draw_sprite_1_part(spr_frame, 1, x + offset_x + 2, 0, y + offset_y);

var index, border_time = start_time + full_time;
var check = true;

if (current != -1 and current < array_length(sequence)) {
	if (not pause) {
		start_time += current_time - last_time;
		last_time = current_time;
	}
	if (current < array_length(sequence) and times[current] + scr_calculate_time(manager.whimsical, sequence[current, 1]) < start_time) {
		visual.note = 0;
		current += 1;
		if (current == -1) check = false;
	}
	for (index = current; index < array_length(sequence) and times[index] <= border_time; index++) {
		if (sequence[index, 0] == 0) continue;
		var pitch = clamp(sequence[index, 0] + offset, 1, 27);
		var length_1 = scr_map_value(times[index] + scr_calculate_time(manager.whimsical, sequence[index, 1]), start_time, border_time, x, 0);
		var length_2 = scr_map_value(times[index], start_time, border_time, x, 0);
		
		if (length_1 < -1) length_1 = -1;
		if (length_2 >= x) {
			if (visual.note != pitch) {
				audio_stop_all();
				visual.note = pitch;
 				if (pitch != 0) audio_play_sound(manager.sounds[pitch], 1, false);
			}
			length_2 = x;
		}
		
		with (visual) {
			var hole = manager.notes[pitch, 0];
			if (hole != 0) scr_draw_note(2 - hole, length_1, y + offset_thumb_y - 1, length_2);
			var hole_index;
			for (hole_index = 1; hole_index <= 6; hole_index++) {
				hole = manager.notes[pitch, hole_index];
				if (hole != 0) scr_draw_note(hole_index == 2 ? 2 - hole : (hole_index == 6 ? 4 - hole : 0), length_1, y + offset_main_y + step * hole_index - 1, length_2);
			}		
			hole = manager.notes[pitch, 7];
			if (hole != 0) scr_draw_note(4 - hole, length_1, y + offset_pinky_y - 1, length_2);
		}
	}
	
}
if (not check) {
	audio_stop_all();
	current = -1;
	visual.note = 0;
	pause = true;
}

scr_draw_sprite_3_parts(spr_frame, 0, 0, 5, x + offset_x, 0, y + offset_y);

// draw_sprite(spr_frame, 0, x + offset_x, y + offset_y);

scr_draw_sprite_3_parts(spr_timeline_bar, 0, 1, 1, x + offset_x - 7, 2, y + offset_y + 70);

// draw_sprite(spr_timeline_bar, 0, x + offset_x - 5, y + offset_y + 70);

draw_sprite(spr_timeline_button, 0, scr_map_value(clamp(start_time, 0, total_time), 0, total_time, x + offset_x - 6, 8), y + offset_y + 70);