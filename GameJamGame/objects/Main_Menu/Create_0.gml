/// @description Insert description here
// You can write your code in this editor

menu_x = x;
menu_y = y;

button_height = 60;
button_width  = 200;

font = fnt_Menu;

draw_set_font(font);
text_height = string_height("M");

//buttons
button[0] = "PLAY";
button[1] = "CREDITS";
button[2] = "QUIT";


buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;


