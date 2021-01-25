function scr_draw_note(index, x1, y1, x2){
	scr_draw_sprite_3_parts(spr_notes, index, 1, 1, x2 - x1 + 1, -1, x1, y1, c_white, 1);
}