/// @description Insert description here
// You can write your code in this editor
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);


if(global.Tab == true) {
	Tabbed = true;
} else {
	Tabbed = false;	
}
with(Slot1) {
	x = other.vx + 50;
	y = other.vy + 50;
}
with(Slot2) {
	x = other.vx + 150;
	y = other.vy + 50;
}
with(Slot3) {
	x = other.vx + 250;
	y = other.vy + 50;
}
with(PlayButton) {
	x = other.vx + 350;
	y = other.vy + 50;
}
with(Hint) {
	x = other.vx + 450;
	y = other.vy + 50;	
}