/// @description Insert description here
// You can write your code in this




var i = 0;

repeat(buttons) {
	
	draw_set_halign(fa_left);
	draw_set_color(c_ltgray);
	draw_set_font(font);
	if (menu_index == i) draw_set_color(c_blue)
	
	draw_text(menu_x, menu_y + button_height * i, button[i])
	i += 1;
}


