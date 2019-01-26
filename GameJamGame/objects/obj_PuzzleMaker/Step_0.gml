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
	x = other.vx + 125 + 30;
	y = other.vy + 200;
}
with(Slot2) {
	x = other.vx + 200 + 30;
	y = other.vy + 200;
}

with(PlayButton) {
	x = other.vx + 200;
	y = other.vy + 300;
}
with(Hint) {
	x = other.vx + 450;
	y = other.vy + 50;	
	if(other.TotalyNPCs == obj_player.TalkedToNPC) {
		if(room == level1) {
			Hint = "Good job you got all the pieces. Your hint is: The tress rot away";
		} else if(room == level2) {
			Hint = "As the weather turned the caravan took it's leave"
		} else if(room == level3) {
			Hint = "Happyness gets you hooked, curved around like an S and Looking for more."
		}
	}
}
if(room != level1) {
	with(Slot3) {
		x = other.vx + 275 + 30;
		y = other.vy + 200;
	}
}
if(room != level2 and room != level1) {
	with(Slot4) {
		x = other.vx + 350 + 30;
		y = other.vy + 200;
	}
	with(Slot5) {
		x = other.vx + 425 + 30;
		y = other.vy + 200;
	}
}
if(room == level4) {
	with(Slot6) {
		x = other.vx + 500 + 30;
		y = other.vy + 200;
	}
	with(Slot7) {
		x = other.vx + 575 + 30;
		y = other.vy + 200;
	}
}