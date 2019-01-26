/// @description Insert description here
// You can write your code in this editor

//Texbox
draw_sprite(box, 0 ,box_x, box_y);



//Text
var c = text_color;

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text_ext_color(text_x, text_y, text[page], text_height, text_max_width, c, c, c, c, 1);
