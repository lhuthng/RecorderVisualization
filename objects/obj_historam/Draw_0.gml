/// @description Insert description here
// You can write your code in this editor

// Draw background
draw_set_color(4473924);
draw_rectangle(0, 0, x, y + box_height, false);


var index, time = current_time + full_time;
if (current != -1) {
	for (index = current; index < array_length(sequence) - 1 and times[index] <= time; index++) {
		draw_set_color(index mod 2 == 0 ? c_red : c_green);
		var pitch = clamp(sequence[index, 0] + offset, 0, 27);
		var length_2 = (time - times[index]) / full_time * x - 0.5;
		var length_1 = (time - times[index + 1]) / full_time * x + 0.5;
		if (length_1 < 0) length_1 = 0;
		with (visual) {
			var hole = manager.notes[pitch, 0];
			str += string(hole) + " ";
			if (hole != 0) draw_rectangle(length_1, y + offset_thumb_y, length_2, y + offset_thumb_y + 3, false);
	
			var hole_index;
			for (hole_index = 1; hole_index <= 6; hole_index++) {
				hole = manager.notes[pitch, hole_index];
				str += string(hole) + " ";
				if (hole != 0) draw_rectangle(length_1, y + offset_main_y + step * hole_index, length_2, y + offset_main_y + step * hole_index + (hole_index == 6 ? 2 : 3), false);
			}
		
			hole = manager.notes[pitch, 7];
			if (hole != 0) draw_rectangle(length_1, y + offset_pinky_y, length_2, y + offset_pinky_y + 2, false);
			// if (index == current) test = str;
		}
	}
}

// Draw outlines
draw_set_color(1710618);

draw_line_width(-1.5, y + box_height - 0.5, x + 0.5, y + box_height - 0.5, 1);
draw_line_width(-1.5, 0.5, x + 0.5, 0.5, 1);
draw_line_width(x, y, x, y + box_height, 1);