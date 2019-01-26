/// @description Insert description here
// You can write your code in this editor

menu_move = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));

menu_index += menu_move;

if(menu_index < 0) menu_index = buttons - 1;
if(menu_index > buttons - 1) menu_index = 0;

last_selected = menu_index;

//Mouse

if point_in_rectangle(mouse_x, mouse_y, menu_x, menu_y, menu_x + button_width, menu_y + text_height){ 
	menu_index = 0;
	
}
if point_in_rectangle(mouse_x, mouse_y, menu_x, menu_y + text_height, menu_x + button_width, menu_y + text_height + button_height){
	menu_index = 1;
	
}
if point_in_rectangle(mouse_x, mouse_y, menu_x, menu_y + text_height + button_height, menu_x + button_width, menu_y + text_height*2 + button_height){
	menu_index = 2;
	
}
/*if point_in_rectangle(mouse_x, mouse_y, menu_x, menu_y + text_height*2 + button_height, menu_x + button_width, menu_y + text_height*3 + button_height){
	menu_index = 3;
	
}*/

if (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter)){
	switch(menu_index){
	case 0:
		room_goto(level1);
		break
	case 1:
		room_goto(Credits);
		break;
	case 2:
		game_end()
	}
}