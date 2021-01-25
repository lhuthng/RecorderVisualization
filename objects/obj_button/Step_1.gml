/// @description Insert description here
// You can write your code in this editor


if (pressed and not released and mouse_check_button_released(mb_left)) {
	if (func != -1) func();
	image_index = 0;
	image_blend = c_white;
	released = true;
	pressed = false;
}