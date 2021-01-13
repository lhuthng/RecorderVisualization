/// @description Insert description here
// You can write your code in this editor

draw_text(0, 300, current_time);

var test = scr_percentage_to_time(mouse_x / historam.x, current_time, current_time + historam.full_time)
draw_text(mouse_x * 4 + 50, mouse_y * 4, test);
draw_text(mouse_x * 4 + 50, mouse_y * 4 + 50, scr_time_to_percentage(test, current_time, current_time + historam.full_time));