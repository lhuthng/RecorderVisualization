 /// @description Insert description here
// You can write your code in this editor

// Draw background
var full = scr_calulate_index(false, false, false, false);
scr_draw_sprite_9_parts(spr_frame_background, full, 3, 3, 3, 3, x + 3, height, 0, y, c_white, 1);

var index, border_time = start_time + full_time;
 
if (first_note != -1 and first_note < array_length(sequence)) {
	for (index = first_note; index < array_length(sequence) and times[index] <= border_time; index++) {
		if (sequence[index, 0] == 0) continue;
		var pitch = clamp(sequence[index, 0] + offset, 1, 27);
		var length_1 = scr_map_value(times[index] + scr_calculate_time(manager.whimsical, sequence[index, 1]), start_time, border_time, x, 0);
		var length_2 = scr_map_value(times[index], start_time, border_time, x, 0);
		
		if (length_1 < -1) length_1 = -1;
		if (length_2 >= x + 1) length_2 = x + 1;
		
		with (manager.visual) {
			var hole = manager.notes[pitch, 0];
			if (hole != 0) {
				scr_draw_note(2 - hole, length_1, y + offset_thumb_y - 1, length_2);
			}				
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

scr_draw_sprite_9_parts(spr_frame, full, 3, 3, 3, 3, x + 3, 79, 0, y, c_white, 1);

scr_draw_sprite_9_parts(spr_timeline_bar, 0, 1, 1, 1, 1, x- 10, 4, 5, y + 70, c_white, 1);
scr_draw_sprite_9_parts(spr_timeline_button, 0, 1, 1, 1, 1, 5, 4, scr_map_value(clamp(start_time, 0, total_time), 0, total_time, x - 6, 11) - 5, y+ 70, c_white, 1);

var offset_x = -5;
var offset_y = 2;
var _height = 12;
var _width = sprite_get_width(spr_legends) + 6
// scr_draw_sprite_9_parts(spr_frame_background, full, 3, 3, 3, 3, _width, _height, x + offset_x - _width, y + offset_y - _height, c_white, 1);
var bottom_free = scr_calulate_index(false, false, false, true);

scr_draw_sprite_9_parts(spr_frame_background,	bottom_free, 3, 3, 3, 3, _width, _height, x + offset_x - _width, y + offset_y - _height, c_white, 1);
draw_sprite(spr_legends, 0, x + offset_x - _width + 3, y + offset_y - _height + 3);
scr_draw_sprite_9_parts(spr_frame,				bottom_free, 3, 3, 3, 3, _width, _height, x + offset_x - _width, y + offset_y - _height, c_white, 1);
draw_sprite(spr_frame_join_background, 0,	x + offset_x - _width, y + offset_y - 2);
draw_sprite(spr_frame_join, 0,				x + offset_x - _width, y + offset_y - 2);
draw_sprite(spr_frame_join_background, 3,	x + offset_x - 3, y + offset_y - 2);
draw_sprite(spr_frame_join, 3,				x + offset_x - 3, y + offset_y - 2);

draw_line_width_color(x - 6, y + 4, x - 6, y + 66, 1,  $242424,  $242424);
//draw_set_color(c_white);
//draw_text(100, 100, full_time);

