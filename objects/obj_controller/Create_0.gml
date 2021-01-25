/// @description Insert description here
// You can write your code in this editor

funcs = [
	scr_play,
	scr_restart,
	scr_zoom_out,
	-1,
	scr_zoom_in,
];

sprites = [
	spr_play_button,
	spr_restart_button,
	spr_zoom_out_button,
	spr_normal_button,
	spr_zoom_in_button
]

var index;
var instances;

for (index = 0; index < array_length(sprites); index++) {
	instances[index] = instance_create_depth(1 + index * 10, y, 0, obj_button);
	instances[index].sprite_index = sprites[index];
	instances[index].image_index = index * 2;
	instances[index].image_speed = 0;	
	instances[index].func = funcs[index];
}

play_button = instances[0];
// zoom_out_button = instances[2];