/// @description Insert description here
// You can write your code in this editor
draw_self();
if(sprite_index == spr_Slot) {
	draw_rectangle(self.x-24, self.y-24, self.x+24, self.y+24, true);
} else {
	draw_rectangle_color(self.x-24, self.y-24, self.x+24, self.y+24, c_red, c_red, c_red, c_red, true);
}