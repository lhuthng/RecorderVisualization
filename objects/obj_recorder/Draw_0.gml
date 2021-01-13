/// @description Insert description here
// You can write your code in this editor

// Draw the recorder
draw_sprite(spr_recorder_1, 0, x, y);


// Draw the back note
draw_sprite(spr_recorder_2, 0, x + offset_thumb_x - 2, y + offset_thumb_y - 5);


// Set transparency for played notes
draw_set_alpha(0.8);


// index: indicates for index of 8 notes on the recorder
// pitch: represent the pitch of the current note

var index, pitch;

// Left-Thumb
pitch = manager.notes[note, 0];
if (pitch != 0) draw_sprite(spr_fingers, 2 - pitch, x + offset_thumb_x, y + offset_thumb_y);

// 
for (index = 1; index <= 6; index++) {
	pitch = manager.notes[note, index];
	if (pitch != 0) {
		switch (index) {
		    case 2:
		        pitch = 3 - pitch;
		        break;
			case 6:
				pitch = 5 - pitch;
				break;
		}
		draw_sprite(spr_fingers, pitch - 1, x + offset_main_x, y + offset_main_y + step * index);
	}
}

pitch = manager.notes[note, 7]; 
if (pitch != 0) draw_sprite(spr_fingers, 4 - pitch, x + offset_pinky_x, y + offset_pinky_y);

draw_set_alpha(1)