// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_note(index, x1, y1, x2){
	var height = sprite_get_height(index);
	//draw_sprite_part_ext(spr_notes, index, 1, 0, 1, height, x1 + 1, y1, x2 - x1 - 1, 1, c_white, 1);
	//draw_sprite_part(spr_notes, index, 0, 0, 1, height, x1, y1);
	//draw_sprite_part(spr_notes, index, 2, 0, 1, height, x2, y1);
	scr_draw_sprite_3_parts(spr_notes, index, 1, 1, x2 - x1 + 1, x1, y1);
}