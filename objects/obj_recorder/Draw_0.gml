/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_recorder_1, 0, x, y);

draw_sprite(spr_recorder_2, 0, x - 15, y + 45);


draw_set_alpha(0.75);

var index;
var sx = 2, sy = 57, step = 7;

if (notes[0] != 0) draw_sprite(spr_fingers, 0, x - 13, y + 50);

for (index = 0; index < 5; index++) {
	if (notes[index + 1] != 0) draw_sprite(spr_fingers, 0, x + sx, y + sy + step * index);
}

for (index = 0; index < 2; index++) {
	if (notes[index + 6]) draw_sprite(spr_fingers, notes[index + 6], x + sx + index * -1, y + sy + step * 5 + index * 12 - 1);
}

draw_set_alpha(1)