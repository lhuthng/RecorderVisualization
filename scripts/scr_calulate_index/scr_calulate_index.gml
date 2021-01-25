// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_calulate_index(left, right, top, bottom){
	result = 0;
	if (bottom) result |= 1;
	if (top) result |= 2;
	if (right) result |= 4;
	if (left) result |= 8;
	return result;
}