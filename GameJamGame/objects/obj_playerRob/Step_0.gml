/// @description Insert description here
// You can write your code in this editor

//inputs
input_right = keyboard_check(ord("D"));
input_left = keyboard_check(ord("A"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_interact = keyboard_check(vk_space);
//input_Tab = keyboard_check(vk_tab);

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