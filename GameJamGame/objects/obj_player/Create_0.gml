/// @description Insert description here
// You can write your code in this editor

player_speed = 3;

radius = 20;

active_textbox = false;
TalkedToNPC = 0;
//num_of_interacts = 1;

stop = false;
text[0] = "I Remember Now!";
draw_wall = false;


talk[0] = "Huh where am I? Maybe I should go talk to some of the locals. Press space to continue";
talk[1] = "Use WASD to move around";
talk[2] = "Use the SPACE key to interact and the TAB to open your melody screen. Use the mouse to drag sheets of music into the slots";
talk[3] = "Complete the melody and find the exit to continue on your way home";
talk[4] = "And remember listen to the locals";

if (room = level1) create_textbox(talk, false);
