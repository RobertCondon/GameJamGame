/// @description Insert description here
// You can write your code in this editor
Tabbed = false;
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
if(room = roomROBTEST) {
	Slot1 = noone;
	Slot2 = noone;
	Slot3 = noone;
	PlayButton = noone;
	with(instance_create_layer(vx + 50, vy +50, "Instances", obj_Slot)) {
			other.Slot1 = self
			Order = 0;
	}
	with(instance_create_layer(vx + 150, vy +50, "Instances", obj_Slot)) {
			other.Slot2 = self
			Order = 1;
	}
	with(instance_create_layer(vx + 250, vy +50, "Instances", obj_Slot)) {
			other.Slot3 = self
			Order = 2;
	}
	with(instance_create_layer(vx + 350, vy +50, "Instances", obj_PlayButton)) {
			other.PlayButton = self
	}
}