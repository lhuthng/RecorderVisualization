/// @description Insert description here
// You can write your code in this editor

// Draw background
draw_set_color(4473924);
draw_rectangle(0, 0, x, y + box_height, false);


var index, time = current_time + full_time;
if (current != -1 and current < array_length(sequence)) {
	if (current < array_length(sequence) and times[current] + scr_calculate_time(manager.whimsical, sequence[current, 1]) < current_time) current += 1;
	draw_set_circle_precision(8);
	for (index = current; index < array_length(sequence) and times[index] <= time; index++) {
		draw_set_color(index mod 2 == 0 ? $505050 : $404040);
		var pitch = clamp(sequence[index, 0] + offset, 0, 27);
		var length_2 = (time - times[index]) / full_time * x;
		if (length_2 >= x) {
			if (visual.note != pitch) {
				audio_stop_all();
				visual.note = pitch;
				if (pitch != 0) audio_play_sound(manager.sounds[pitch], 1, true);
			}
			length_2 = x;
		}
		var length_1 = (time - times[index] - scr_calculate_time(manager.whimsical, sequence[index, 1])) / full_time * x;
		if (length_1 < -1) length_1 = -1;
		with (visual) {
			var color_1 = $59ff6b, color_2 = $ca804b;
			draw_rectangle(length_1, 2, length_2, historam.box_height, false);
			draw_set_color(color_2);
			var hole = manager.notes[pitch, 0];
			if (hole != 0) {
				if (hole == 1) draw_set_color(color_1);
				draw_roundrect_ext(length_1, y + offset_thumb_y - 1, length_2, y + offset_thumb_y + 3, 1, 1, false);
				if (hole == 1) draw_set_color(color_2);
			}
	
			var hole_index;
			for (hole_index = 1; hole_index <= 6; hole_index++) {
				hole = manager.notes[pitch, hole_index];
				
				if (hole != 0) {
					if ((hole_index == 2 or hole_index == 6) and hole == 1) draw_set_color(color_1);
					draw_roundrect_ext(length_1, y + offset_main_y + step * hole_index - 1, length_2, y + offset_main_y + step * hole_index + (hole_index == 6 ? 2 : 3), 1, 1, false);
					if ((hole_index == 2 or hole_index == 6) and hole == 1) draw_set_color(color_2);
				}
			}
		
			hole = manager.notes[pitch, 7];
			if (hole != 0) {
				if (hole == 1) draw_set_color(color_1);
				draw_roundrect_ext(length_1, y + offset_pinky_y - 1, length_2, y + offset_pinky_y + 2, 1, 1, false);
				if (hole == 1) draw_set_color(color_2);
			}
		}
	}
}
else {
	audio_stop_all();
	current = -1;
	visual.note = 0;
}

// Draw outlines
draw_set_color(1710618);

draw_line_width(-1.5, y + box_height - 0.5, x + 0.5, y + box_height - 0.5, 1);
draw_line_width(-1.5, 0.5, x + 0.5, 0.5, 1);
draw_line_width(x, y, x, y + box_height, 1);