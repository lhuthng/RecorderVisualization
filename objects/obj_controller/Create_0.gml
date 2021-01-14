/// @description Insert description here
// You can write your code in this editor

funcs = [
	scr_play,
	scr_restart
];

sprites = [
	spr_play_button,
	spr_restart_button
]

var index;
var instances;

for (index = 0; index < 2; index++) {
	instances[index] = instance_create_depth(x + index * 10, y, 0, obj_button);
	instances[index].sprite_index = sprites[index];
	instances[index].image_index = index * 2;
	instances[index].image_speed = 0;	
	instances[index].func = funcs[index];
}

play_button = instances[0];