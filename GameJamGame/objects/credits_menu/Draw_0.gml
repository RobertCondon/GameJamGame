/// @description Insert description here
// You can write your code in this editor
var i = 0

repeat(buttons) {
	
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	
	
	draw_text(menu_x, menu_y + button_height * i, button[i])
	i += 1;
}


draw_text(menu_x, menu_y + button_height * 5, "Press enter to return");