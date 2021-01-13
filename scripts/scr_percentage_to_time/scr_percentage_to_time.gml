// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_percentage_to_time(percentage, start_time, end_time){
	return start_time + (end_time - start_time) * percentage;
}