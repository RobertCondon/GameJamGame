/// @description Insert description here
// You can write your code in this editor

//inputs
input_right = keyboard_check(ord("D"));
input_left = keyboard_check(ord("A"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_interact = keyboard_check_pressed(vk_space);


//Interact
if(input_interact) {
	if (active_textbox = false){
		var npc = collision_rectangle(x - radius, y - radius, x + radius, y + radius, obj_npc, false, false)
		if(npc != noone) {
			with(npc){
				if(talked_too = false){
					create_textbox(text, talked_too);
					talked_too = true;
				}
				else{
					create_textbox(text, talked_too)
				}
				
			}
		}
		active_textbox = true;
	}
	else{
		if(!instance_exists(obj_textbox)){
			active_textbox = false;
		}
		
	}
}


//resetting speeds
move_x = 0;
move_y = 0;

//updating movement
move_x = (input_right - input_left) * player_speed;
if(move_x = 0) move_y = (input_down - input_up) * player_speed;

//Collision Checks

//Vertical
if(place_meeting(x, y + move_y, obj_wall)) {
	repeat (abs(move_y)) {
		if(!place_meeting(x, y + sign(move_y), obj_wall)) {
			y += sign(move_y);
		}
		else { break; }
	}
	move_y = 0;
}

//Horizontal
if(place_meeting(x + move_x, y, obj_wall)) {
	repeat (abs(move_x)) {
		if(!place_meeting(x + sign(move_x), y, obj_wall)) {
			x += sign(move_x);
		}
		else { break; }
	}
	move_x = 0;
}




x += move_x;
y += move_y;