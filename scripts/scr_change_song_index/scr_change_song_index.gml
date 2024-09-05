// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_song_index(delta){
	with (obj_searcher) {
		if (scr_is_between(starting_index + current + delta, -1, limit)) {
			if (scr_is_between(current + delta, -1, 5)) {
				current += delta;
			}
			else {
				starting_index += delta;
			}
			current_text = display_list[starting_index + current];
			if (length_list[starting_index + current] > number_of_characters) {
				current_position = 0;
				going_right = true;
				alarm[0] = room_speed * gasp;
			}
			else {
				alarm[0] = -1;
			}
		}
	}
}