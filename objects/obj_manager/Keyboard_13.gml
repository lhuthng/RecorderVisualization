/// @description Insert description here
// You can write your code in this editor

//with (visual) {
//	tempo = other.whimsical;
//	sequence = other.bars;
//	offset = other.offset;
//	alarm[0] = 1 * room_speed;
//}

with (historam) {
	sequence = other.bars;
	offset = other.offset;
	var index, time = current_time + full_time;
	current = 0;
	// alarm[0] = room_speed * time;
	for (index = 0; index < array_length(sequence); index++) {
		times[index] = time;
		time += scr_calculate_time(other.whimsical, sequence[index, 1]);
	}
}