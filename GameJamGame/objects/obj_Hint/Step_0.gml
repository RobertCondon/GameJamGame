/// @description Insert description here
// You can write your code in this editor
if(global.Tab == true) {
	if(!instance_exists(obj_HintBox)) {
		with(instance_create_layer(x,y,"Instances", obj_HintBox)) {
			Text = other.Hint;
		}
	}
} else {
	if(instance_exists(obj_HintBox)) {
		instance_destroy(obj_HintBox);	
	}
}