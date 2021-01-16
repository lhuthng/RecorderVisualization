/// @description Insert description here
// You can write your code in this editor

if (file_exists("test.json")){
	existed = true;
	var buffer = buffer_load("test.json");
	var str = buffer_read(buffer, buffer_string);
	var data = json_parse(str);
	whimsical = data.whimsical;
	bars = data.bars;
	keys_signature = [];
	for (var index = 0; index < 27; index++) keys_signature[index] = false;
	for (var index = 0; index < array_length(data.keys_signature[1]); index++) keys_signature[data.keys_signature[1][index]] = true;
	offset = data.offset;
	with (historam) {
		start_time = 0;
		pause = true;
		sequence = other.bars;
		offset = other.offset;
		time = delay_time;
		current = 0;
		for (var index = 0; index < array_length(sequence); index++) {
			if (other.keys_signature[sequence[index, 0]]) sequence[index, 0] += data.keys_signature[0];
			times[index] = time;
			time += scr_calculate_time(other.whimsical, sequence[index, 1]);
		}
		total_time = time;
	}
}