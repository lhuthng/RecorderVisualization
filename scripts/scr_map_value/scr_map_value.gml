function scr_map_value(from_value, from_start, from_end, to_start, to_end){
	return scr_percentage_to_value(scr_value_to_percentage(from_value, from_start, from_end), to_start, to_end);
}