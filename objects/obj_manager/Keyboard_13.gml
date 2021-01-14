/// @description Insert description here
// You can write your code in this editor

if (file_exists("test.json")){
	var buffer = buffer_load("test.json");
	var str = buffer_read(buffer, buffer_string);
	var data = json_parse(str);
	whimsical = data.whimsical;
	bars = data.bars;
	keys_signature = data.keys_signature;
	offset = data.offset;
	with (historam) {
		sequence = other.bars;
		offset = other.offset;
		var index, time = current_time + 3000;
		current = 0;
		for (index = 0; index < array_length(sequence); index++) {
			times[index] = time;
			time += scr_calculate_time(other.whimsical, sequence[index, 1]);
		}
	}
}