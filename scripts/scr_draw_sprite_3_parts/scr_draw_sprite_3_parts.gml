// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_sprite_3_parts(image, index, left, right, width, x, y) {

	var image_width = sprite_get_width(image), image_height = sprite_get_height(image);
	var height_scale = 1;
	var width_scale = (width - left - right) / (image_width - left - right);
	// inner
	draw_sprite_part_ext(image, index, left, 0, image_width - left - right,	image_height, x + left, y, width_scale, height_scale, c_white, 1);
	// left
	if (left != 0) draw_sprite_part_ext(image, index, 0, 0, left, image_height, x, y, 1, height_scale, c_white, 1);
	// right
	if (right != 0)	draw_sprite_part_ext(image, index, image_width - right, 0, right, image_height, x + width - right, y, 1, height_scale, c_white, 1);
}