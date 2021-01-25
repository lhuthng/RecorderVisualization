// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_change_song_index(index){
	with(obj_searcher) {
		if (current != -1 and index >= 0 and index < limit) {
			current = index;
			current_text = display_list[index];
			if (length_list[index] > number_of_characters) {
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