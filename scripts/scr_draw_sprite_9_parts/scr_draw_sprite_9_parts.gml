function scr_draw_sprite_9_parts(image, index, left, right, top, bottom, width, height, x, y, color, alpha){
	var image_height = sprite_get_height(image);
	var image_width = sprite_get_width(image);
	if (width == -1) width = image_width;
	if (height == -1) height = image_height;	
	var width_scale = (width - left - right) / (image_width - left - right);
	var height_scale = (height - top - bottom) / (image_height - top - bottom);
	var shortcuts = [
		[0, left, x, 1], [left, image_width - left - right, x + left, width_scale], [image_width - right, right, x + width - right, 1],
		[0, top, y, 1], [top, image_height - top - bottom, y + top, height_scale], [image_height - bottom, bottom, y + height - bottom, 1]
	]
	for (var index_1 = 0; index_1 < 3; index_1++) {
		var first = shortcuts[index_1];
		for (var index_2 = 3; index_2 < 6; index_2++) {
			var second = shortcuts[index_2];
			draw_sprite_part_ext(image, index, first[0], second[0], first[1], second[1], first[2], second[2], first[3], second[3], color, alpha);
		}
	}
}