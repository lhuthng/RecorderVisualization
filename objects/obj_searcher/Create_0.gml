/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel_font);

gasp = 1;
normal = 0.3;

current = -1;
current_text = "";
current_position = 0;
going_right = true;

list = [];
length_list = [];
display_list = [];

var character_space = string_width(" ");
number_of_characters = 14;
limit = 0;
var name = file_find_first("*.json", 0);
if (name != "") {
	do {
		length_list[limit] = string_length(name) - 5
		var str = string_copy(name, 0, length_list[limit]);
		list[limit] = str;
		if (length_list[limit] <= number_of_characters) {
			display_list[limit] = str;
		}
		else display_list[limit] = string_copy(name, 0, number_of_characters - 2) + "..";
		limit++;
		name = file_find_next();
	} until (name == "");
	current = 0;
	scr_change_song_index(0);
}
file_find_close();
width = number_of_characters * character_space;
height = 8;
space = 12;
maximum = 5;