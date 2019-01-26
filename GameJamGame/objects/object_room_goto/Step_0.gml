/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_player)) and (global.song_complete = true){
	
	global.song_complete = false;
	if (room = level1){
		room_goto(level2)
	}
	
}
if (place_meeting(x, y, obj_player)) and (global.song_complete = false){

	create_textbox(text, false);
}