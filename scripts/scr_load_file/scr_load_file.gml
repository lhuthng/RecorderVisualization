function scr_load_file(file){
	with (obj_manager){
		if (file_exists(file)){
			existed = true;
			var buffer = buffer_load(file);
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
				time_rate = scr_calculate_time(other.whimsical, 0.25) / 20;
				time_step = 0;
				playing_note = -1;
				base_time = time_rate * x;
				full_time = base_time;
				target_time = full_time;
				time = delay_time;
				first_note = 0;
				for (var index = 0; index < array_length(sequence); index++) {
					if (sequence[index, 0] == int64(sequence[index, 0]) and other.keys_signature[sequence[index, 0]]) sequence[index, 0] += data.keys_signature[0];
					sequence[index, 0] = int64(sequence[index, 0]);
					times[index] = time;
					time += scr_calculate_time(other.whimsical, sequence[index, 1]);
				}
				total_time = time;
			}
			buffer_delete(buffer);
			scr_stop_visual();
		}
	}
}