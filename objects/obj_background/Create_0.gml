/// @description Insert description here
// You can write your code in this editor
depth = 1;

marg = {
	width: sprite_get_width(spr_floating_recorder),
	height: sprite_get_height(spr_floating_recorder)
};

offset = {
	x: 0,
	y: 0
};

moving_speed = {
	x: 0.3,
	y: 0.2,
};

delay = 5;

alarm_set(0, delay);