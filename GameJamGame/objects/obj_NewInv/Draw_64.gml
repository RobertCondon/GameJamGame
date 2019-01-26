/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_InventoryNew, 0, 620, 820);
if(Inventory[0] != noone) {
	CurrentChunk = 0;
	repeat(ds_list_size(Inventory)) {
		draw_sprite(Inventory[CurrentChunk], 0, Padding+(32*CurrentChunsk)+620, 820);
	}
}