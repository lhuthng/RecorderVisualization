/// @description Insert description here
// You can write your code in this editor

sounds = [
	0,
	snd_5c,
	snd_5c_,
	snd_5d,
	snd_5d_,
	snd_5e,
	snd_5f,
	snd_5f_,
	snd_5g,
	snd_5g_,
	snd_6a,
	snd_6a_,
	snd_6b,
	snd_6c,
	snd_6c_,
	snd_6d,
	snd_6d_,
	snd_6e,
	snd_6f,
	snd_6f_,
	snd_6g,
	snd_6g_,
	snd_7a,
	snd_7a_,
	snd_7b,
	snd_7c,
	snd_7c_,
	snd_7d
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
historam = instance_create_depth(x + offset_x - 1, y + 40, 3, obj_historam);
historam.height = 79;
controller = instance_create_depth(x + offset_x, y + 39, 4, obj_controller);
searcher = instance_create_depth(0, y + 37 + historam.height, -5, obj_searcher);
visual.manager = self;
historam.manager = self;

existed = false;