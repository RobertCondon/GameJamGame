/// @description Insert description here
// You can write your code in this editor
global.MouseLeftGone = mouse_check_button_released(mb_left);
if(keyboard_check_pressed(vk_tab)) {
	if(	global.Tab == true) {
		global.Tab = false;	
	} else {
		global.Tab = true;	
	}
}