/// @description Insert description here
// You can write your code in this editor
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


if (file_exists("test.json")){
	var buffer = buffer_load("test.json");
	var str = buffer_read(buffer, buffer_string);
	var data = json_parse(str);
	whimsical = data.whimsical;
	bars = data.bars;
	keys_signature = data.keys_signature;
	offset = data.offset;
}

var offset_x = -5;

visual = instance_create_depth(x, y, -2, obj_recorder);
historam = instance_create_depth(x + offset_x - 0.5, y, -3, obj_historam);

visual.historam = historam;
historam.visual = visual;

visual.manager = self;
historam.manager = self;

historam.box_height = 125;