/// @description Insert description here
// You can write your code in this editor
game_width = display_get_gui_width();
game_height = display_get_gui_height();

box = spr_HintBox1;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);

box_x = game_width/ 4;
box_y = (game_height * 0.98) - box_height

text_x = box_x + 24;
text_y = box_y + 16;
text_max_width = box_width - 24;




page = 0;
input_interact = vk_space;


text_color = c_black;
font = fnt_textbox;

draw_set_font(font);
text_height = string_height("M");
