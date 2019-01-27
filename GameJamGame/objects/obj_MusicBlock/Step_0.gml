/// @description Insert description here
// You can write your code in this editor
if(global.MouseLeftGone) {
	THEGLOBALS.Holding = false;	
	Holding = false;
	PlayEffect = false;
}
if(Holding == true) {
	self.x = mouse_x;
	self.y = mouse_y;	
}