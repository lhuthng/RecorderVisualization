// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_map_value(from_value, from_start, from_end, to_start, to_end){
	if (from_start == from_end) return to_start;
	else return to_start + (from_value - from_start) / (from_end - from_start) * (to_end - to_start);
}