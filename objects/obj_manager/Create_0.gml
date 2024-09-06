/// @description Insert description here
// You can write your code in this editor

sounds = [
	0,
	snd_c5,
	snd_c5_,
	snd_d5,
	snd_d5_,
	snd_e5,
	snd_f5,
	snd_f5_,
	snd_g5,
	snd_g5_,
	snd_a5,
	snd_a5_,
	snd_b5,
	snd_c6,
	snd_c6_,
	snd_d6,
	snd_d6_,
	snd_e6,
	snd_f6,
	snd_f6_,
	snd_g6,
	snd_g6_,
	snd_a6,
	snd_a6_,
	snd_b6,
	snd_c7,
	snd_c7_,
	snd_d7
]


var zipped = [
	0,
	4095, 
	4094, 
	4092, 
	4088, 
	4080, 
	4064, 
	4060, 
	4032, 
	4024, 
	3968, 
	3680, 
	3584, 
	3456, 
	896, 
	384, 
	508, 
	2032, 
	2016, 
	2000, 
	1984, 
	1952, 
	1920, 
	1980, 
	1968, 
	1968, 
	1584, 
	1775, 
	1646
];
var require = [2, 1, 2, 1, 1, 1, 2, 2];
var index, position;
for (index = 0; index <= 28; index++) {
	var number = zipped[index];
	for (position = 7; position >= 0; position--) {
		var trim = number % (1 << require[position]);
		notes[index, position] = (trim + 1) >> 1;
		number = number >> require[position];
	}
}

var offset_x = -5;

visual = instance_create_depth(x + 1, y, 2, obj_recorder);
particle_manager = instance_create_layer(x, y, "Particles", obj_particle_manager);
historam = instance_create_depth(x + offset_x - 1, y + 40, 3, obj_historam);
historam.height = 79;
controller = instance_create_depth(x + offset_x, y + 39, 4, obj_controller);
searcher = instance_create_depth(0, y + 37 + historam.height, -5, obj_searcher);
visual.manager = self;
historam.manager = self;

existed = false;