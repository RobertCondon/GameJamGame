/// @description Insert description here
// You can write your code in this editor
Tabbed = false;
var vx = 0;
var vy = 0;
Slot1 = noone;
Slot2 = noone;
Slot3 = noone;
Slot4 = noone;
Slot5 = noone;
PlayButton = noone;
Hint = noone;
TotalyNPCs = 0;
with(instance_create_layer(vx + 50, vy +50, "Instances", obj_Slot)) {
		other.Slot1 = self
		Order = 0;
}
with(instance_create_layer(vx + 150, vy +50, "Instances", obj_Slot)) {
		other.Slot2 = self
		Order = 1;
}

with(instance_create_layer(vx + 350, vy +50, "Instances", obj_PlayButton)) {
		other.PlayButton = self
}
with(instance_create_layer(vx + 450, vy +50, "Instances", obj_Hint))  {
	other.Hint = self;
}

if(room != level1) {
	
	
	
	with(instance_create_layer(vx + 250, vy +50, "Instances", obj_Slot)) {
			other.Slot3 = self
			Order = 2;
	}
	
}
if(room != level1 and room != level2) {
	
	
	
	with(instance_create_layer(vx + 250, vy +50, "Instances", obj_Slot)) {
			other.Slot4 = self
			Order = 3;
	}
	
	
	with(instance_create_layer(vx + 250, vy +50, "Instances", obj_Slot)) {
			other.Slot5 = self
			Order = 4;
	}
	
}

if(room == level4) {
	Slot6 = noone;
	
	with(instance_create_layer(vx + 250, vy +50, "Instances", obj_Slot)) {
			other.Slot6 = self
			Order = 5;
	}
	
	Slot7 = noone;
	
	with(instance_create_layer(vx + 250, vy +50, "Instances", obj_Slot)) {
			other.Slot7 = self
			Order = 6;
	}
}

with(obj_npc) {
	other.TotalyNPCs += 1;
}