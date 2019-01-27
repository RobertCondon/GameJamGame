/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0]);
var xy = camera_get_view_y(view_camera[0]);

draw_self();

draw_set_colour(c_yellow);
//draw_rectangle(x + radius, y + radius, x - radius, y - radius, true);

if (draw_wall) {draw_sprite(puzzle_wall, 0, xx + 370,xy + 290 )}
else {draw_self()}