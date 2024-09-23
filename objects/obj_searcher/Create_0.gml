/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel_font);

gasp = 0.5;
normal = 0.3;

starting_index = 0;
current = -1;
current_text = "";
current_position = 0;
going_right = true;

list = [];
length_list = [];
display_list = [];

var character_space = string_width(" ");
number_of_characters = 25;
limit = 0;
var names = [
	"Divinity Original Sin 2 OST - Main Theme.json",
	"Joe Hisaishi - Merry-Go-Round of Life.json",
	"Mario OST - Main Theme.json",
	"Zelda OST - Lost Woods.json",
	"Zelda OST - Song of Storms.json",
	"Zelda OST - Zelda's Lullaby.json"
];
var index = 0;
for (index = 0; index < 6; index++) {
	name = names[index];
	length_list[limit] = string_length(name) - 5;
	var str = string_copy(name, 0, length_list[limit]);
	list[limit] = str;
	if (length_list[limit] <= number_of_characters) {
		display_list[limit] = str;
	}
	else display_list[limit] = string_copy(name, 0, number_of_characters - 2) + "..";
	limit++;
}
current = 0;
scr_change_song_index(0);
//var name = file_find_first("*.json", 0);
//if (name != "") {
//	do {
//		length_list[limit] = string_length(name) - 5
//		var str = string_copy(name, 0, length_list[limit]);
//		list[limit] = str;
//		if (length_list[limit] <= number_of_characters) {
//			display_list[limit] = str;
//		}
//		else display_list[limit] = string_copy(name, 0, number_of_characters - 2) + "..";
//		limit++;
//		name = file_find_next();
//	} until (name == "");
//	current = 0;
//	scr_change_song_index(0);
//}
//file_find_close();
width = number_of_characters * character_space;
height = 8;
space = 12;
maximum = 5;

depth = -4;

