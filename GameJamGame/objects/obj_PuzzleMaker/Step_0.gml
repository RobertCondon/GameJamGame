/// @description Insert description here
// You can write your code in this editor
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]);
if(room == level2) {
	MiddleMaker = 140
} else if(room == level3 or room == level4) {
	MiddleMaker = 60;	
}

if(global.Tab == true) {
	Tabbed = true;
} else {
	Tabbed = false;	
}
with(Slot1) {
	x = other.vx + 125 + 30 + other.MiddleMaker;
	y = other.vy + 200;
}
with(Slot2) {
	x = other.vx + 200 + 30 +  other.MiddleMaker;
	y = other.vy + 200;
}

with(PlayButton) {
	x = other.vx + 365;
	y = other.vy + 320;
}
with(Hint) {
	x = other.vx + 225;
	y = other.vy + 50;	
	if(other.TotalyNPCs == obj_player.TalkedToNPC) {
		if(room == level1) {
			Hint = "Good job! You got all the pieces. Your hint is: The trees rot away";
		} else if(room == level2) {
			Hint = "As the weather turned, the caravan took its leave"
		} else if(room == level3) {
			Hint = "Happiness gets you hooked. It curves around like an S, then hooks you deeper. Yet I'm always Looking for more at the end."
		} else if (room == level4) {
			Hint = "He is happiest, be he king or peasant, who finds peace in his own home. -Johann Wolfgang von Goethe";
		}
	} else {
		Hint = "Seems you'll have to talk to more people to get a some ideas";	
	}
}
if(room != level1) {
	with(Slot3) {
		x = other.vx + 275 + 30 +  other.MiddleMaker;
		y = other.vy + 200;
	}
}
if(room != level2 and room != level1) {
	with(Slot4) {
		x = other.vx + 350 + 30 + other.MiddleMaker;
		y = other.vy + 200;
	}
	with(Slot5) {
		x = other.vx + 425 + 30 + other.MiddleMaker;
		y = other.vy + 200;
	}
}
if(room == level4) {
	with(Slot6) {
		x = other.vx + 240 + 30 + other.MiddleMaker;
		y = other.vy + 260;
	}
	with(Slot7) {
		x = other.vx + 310 + 30 + other.MiddleMaker;
		y = other.vy + 260;
	}
}