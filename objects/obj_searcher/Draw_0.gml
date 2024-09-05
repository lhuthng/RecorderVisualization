/// @description Insert description here
// You can write your code in this editor

//draw_text(x, y, list);

var top_free = 2;
scr_draw_sprite_9_parts(spr_frame_background, top_free, 3, 3, 3, 3, width + 9, 2 + space * maximum, x, y, c_white, 1);

var normal_background = $141414;
var highlight_background = $242424;
var normal_text = $949494;
var highlight_text = $747474;

for (var index = 0; index < min(limit - starting_index, 5); index++){
	var bg_color, text_color, text;
	if (current == index) {
		bg_color = highlight_background;
		text_color = highlight_text;
		text = current_text;
	}
	else {
		bg_color = normal_background;
		text_color = normal_text;
		text = display_list[starting_index + index];
	}
	draw_set_color(bg_color);
	draw_rectangle(x + 4, y + space * index, x + width + 4, y + height + space * index, false);
	draw_set_color(text_color);
	draw_text(x + 5, y + space * index - 2, text);
}

scr_draw_sprite_9_parts(spr_frame, top_free, 3, 3, 3, 3, width + 9, 2 + space * maximum, x, y, c_white, 1);

draw_sprite(spr_frame_join_background, 4, x, y);
draw_sprite(spr_frame_join, 4, x, y);

draw_sprite(spr_frame_join_background, 2, x + width + 6, y);
draw_sprite(spr_frame_join, 2, x + width + 6, y);

