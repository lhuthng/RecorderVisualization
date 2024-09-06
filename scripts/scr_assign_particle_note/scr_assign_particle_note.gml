// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_assign_particle_note(note){
	var index;
	if (note == -1) {
		for (index = 0; index <= 7; index++) obj_particle_manager.states[index] = PARTICLE_MODE.SILENT;
		obj_particle_manager.alarm[0] = -1;
		return;
	}
	with (obj_particle_manager) {		
		for (index = 0; index <= 7; index++) {
			var pitch = obj_manager.notes[note, index];
			if ((index == 0 or index == 2 or index == 6) and pitch != 0) pitch = 3 - pitch;
			switch (pitch) {
				case 0:
					states[index] = PARTICLE_MODE.SILENT;
					break;
				case 1:
					states[index] = PARTICLE_MODE.BLUE;
					break;
				case 2:
					states[index] = PARTICLE_MODE.GREEN;
					break;
			}
		}
	}
}

//for (index = 1; index <= 6; index++) {
//	pitch = manager.notes[note, index];
//	if (pitch != 0) {
//		switch (index) {
//		    case 2:
//		        pitch = 3 - pitch;
//		        break;
//			case 6:
//				pitch = 5 - pitch;
//				break;
//		}
//		draw_sprite(spr_fingers, pitch - 1, x + offset_main_x, y + offset_main_y + step * index);
//	}
//}

//pitch = manager.notes[note, 7]; 
//if (pitch != 0) draw_sprite(spr_fingers, 4 - pitch, x + offset_pinky_x, y + offset_pinky_y);