/// @description Insert description here
// You can write your code in this editor

//draw_text(x, y, list);


for (var index = 0; index < 2; index++){
	var color = current == index ? c_red : c_green
	draw_set_color(color);
	draw_rectangle(x, y + space * index, x + width, y + height + space * index, false);
	draw_set_color(c_red + c_green - color);
	draw_text(x, y + space * index, list[index]);
}