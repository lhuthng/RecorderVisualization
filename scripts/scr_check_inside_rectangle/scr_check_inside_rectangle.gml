// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_inside_rectangle(x, y, x1, y1, x2, y2){
	return x >= x1 and x <= x2 and y >= y1 and y <= y2;
}