// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_time_to_percentage(time, start_time, end_time)
{
	return (time - start_time) / (end_time - start_time);
}