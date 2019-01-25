/// @description Insert description here
// You can write your code in this editor
instance = collision_rectangle(self.x-30, self.y-30, self.x+30, self.y+30, obj_MusicBlock, false, false)

if(instance != noone) {
	if(instance.Holding == false and HaveABlock == false) {
		instance.x = x;
		instance.y = y;
		HaveABlock = true
		
	}
} else {
	HaveABlock = false;	
}