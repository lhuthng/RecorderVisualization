// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_sprite_9_parts(image, index, left, right, top, bottom, width, height, x, y){
	var image_height = sprite_height(image);
	var image_width = sprite_width(image);
	var width_scale = (width - left - right) / (image_width - left - right);
	var height_scale = (height - top - bottom) / (image_height - top - bottom);
	// inner
		// top
	draw_sprite_part_ext(image, index, left, 0, image_width - left - right, top, x + left, y, width_scale, 1, c_white, 1);
		// middle
	draw_sprite_part_ext(image, index, left, top, image_width - left - right, image_height - top - bottom, x + left, y + top, width_scale, height_scale, c_white, 1);
	

}