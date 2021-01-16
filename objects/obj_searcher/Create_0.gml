/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel_font);

current = -1;

list = [];
var index = 0;
var name = file_find_first("*.json", 0);
if (name != "") {
	do {
		list[index++] = name;
		name = file_find_next();
	} until (name == "");
	current = 0;
}
file_find_close();



width = 20;
height = 5;
space = 7;