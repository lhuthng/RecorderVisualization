/// @description Insert description here
// You can write your code in this editor

//draw_text(x, y, list);


for (var index = 0; index < 2; index++){
	draw_set_color(current == index ? c_red : c_green);
	draw_rectangle(x, y + space * index, x + width, y + height + space * index, false);
}