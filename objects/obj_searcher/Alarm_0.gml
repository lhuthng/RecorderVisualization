/// @description Insert description here
// You can write your code in this editor

var time = normal;

if (going_right) {
	if (current_position == 0) current_position += 1;
	if (current_position < length_list[starting_index + current] - number_of_characters + 3) {
		current_position += 1;
	}
	if (current_position == length_list[starting_index + current] - number_of_characters + 3) {
		going_right = false;
	}
}
else {
	if (current_position == length_list[starting_index + current] - number_of_characters + 3) current_position -= 1;
	if (current_position > 0) {
		current_position -= 1;
	}
	if (current_position == 0){
		going_right = true;
	}
}

if (current_position == 0 and going_right) {
	current_text = display_list[starting_index + current];
	time = gasp;
}
else if (current_position == length_list[starting_index + current] - number_of_characters + 3) {
	current_text = ".." + string_copy(list[starting_index + current], current_position, number_of_characters - 2);
	time = gasp;
}
else {
	current_text = "." + string_copy(list[starting_index + current], current_position, number_of_characters - 2) + ".";
}
alarm[0] = room_speed * time;