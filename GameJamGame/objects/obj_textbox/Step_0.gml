/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(input_interact)) {
	if(page < array_length_1d(text) - 1){
		page ++;
	}
	else { instance_destroy() }
}
	