/// @description Insert description here
// You can write your code in this editor

// Draw background
draw_set_color(4473924);
draw_rectangle(0, 0, x, y + box_height, false);


var index, time = current_time + full_time;
if (current != -1) {
	if (current < array_length(sequence) - 1 and times[current + 1] < current_time) current += 1;
	draw_set_circle_precision(8);
	for (index = current; index < array_length(sequence) - 1 and times[index] <= time; index++) {
		draw_set_color(index mod 2 == 0 ? 6865619 : 4948170);
		var pitch = clamp(sequence[index, 0] + offset, 0, 27);
		var length_2 = (time - times[index]) / full_time * x;
		if (length_2 >= x) {
			visual.note = pitch;
			length_2 = x;
		}
		var length_1 = (time - times[index + 1]) / full_time * x;
		if (length_1 < -1) length_1 = -1;
		with (visual) {
			draw_rectangle(length_1, y, length_2, historam.box_height, false);
			draw_set_color(c_blue);
			var hole = manager.notes[pitch, 0];
			if (hole != 0) {
				if (hole == 1) draw_set_color(c_green);
				draw_roundrect_ext(length_1, y + offset_thumb_y, length_2, y + offset_thumb_y + 3, 1, 1, false);
				if (hole == 1) draw_set_color(c_blue);
			}
	
			var hole_index;
			for (hole_index = 1; hole_index <= 6; hole_index++) {
				hole = manager.notes[pitch, hole_index];
				
				if (hole != 0) {
					if ((hole_index == 2 or hole_index == 6) and hole == 1) draw_set_color(c_green);
					draw_roundrect_ext(length_1, y + offset_main_y + step * hole_index, length_2, y + offset_main_y + step * hole_index + (hole_index == 6 ? 2 : 3), 1, 1, false);
					if ((hole_index == 2 or hole_index == 6) and hole == 1) draw_set_color(c_blue);
				}
			}
		
			hole = manager.notes[pitch, 7];
			if (hole != 0) {
				if (hole == 1) draw_set_color(c_green);
				draw_roundrect_ext(length_1, y + offset_pinky_y, length_2, y + offset_pinky_y + 2, 1, 1, false);
				if (hole == 1) draw_set_color(c_blue);
			}
		}
	}
}
else {
	visual.note = 0;
}

// Draw outlines
draw_set_color(1710618);

draw_line_width(-1.5, y + box_height - 0.5, x + 0.5, y + box_height - 0.5, 1);
draw_line_width(-1.5, 0.5, x + 0.5, 0.5, 1);
draw_line_width(x, y, x, y + box_height, 1);