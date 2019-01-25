/// @description Insert description here
// You can write your code in this editor
movement_value_right = keyboard_check(ord("D"))
movement_value_left = keyboard_check(ord("A"))
movement_value_up = keyboard_check(ord("W"))
movement_value_down = keyboard_check(ord("S"))

var movement_value_h = movement_value_right - movement_value_left;
var movement_value_v = movement_value_down - movement_value_up;


x = x + movement_value_h;

y = y + movement_value_v
