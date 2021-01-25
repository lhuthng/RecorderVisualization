// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_value_to_percentage(value, from, to){
	if (from == to) return 0;
	return (value - from) / (to - from);
}