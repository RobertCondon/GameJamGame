/// @description Insert description here
// You can write your code in this editor
cell_size = 32;
depth = -1;
scale = 2;

filled_slot = 0;
selected_slot = 0;
pickup_slot = -1; 

m_slotx = 0;
m_sloty = 0;
if(room == level1) {
	inv_slots = 2; //----------change this value per level
} else if(room == level2) {
	inv_slots = 3; //----------change this value per level
} else if(room == level3) {
	inv_slots = 5; //----------change this value per level
} else {
	inv_slots = 7; //----------change this value per level
}
inv_slots_width = 9;
inv_slots_height = 1;

x_buffer = 1;
y_buffer = 1;

inv_UI_width = 320;
inv_UI_height = 96;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

spr_inv_UI = spr_Inventory11;
spr_inv_items = spr_items;

spr_inv_items_columns = sprite_get_width(spr_inv_items)div cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items) div cell_size;

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = gui_height - inv_UI_height;


info_x = inv_UI_x + (4 * scale);
info_y = inv_UI_y + (4 * scale);

slots_x = info_x;
slots_y = info_y;

//--------------Inventory

ds_inventory = ds_grid_create(2,inv_slots);

//------- Items
enum item {
	none	= 0,
	snd_Paino1	= 1,
	snd_Paino2	= 2,
	dsf	= 3,
	salmon	= 4,
	purple	= 5,
	blue	= 6,
	pink	= 7,
	lighter_blu	= 8,
	bright_red	= 9,
	navy_blu	= 10,
	lime_green	= 11,
	faded_yellow= 12,
	grey		= 13,
	burgundy	= 14,
	gold		= 15,
	fade_blu	= 16,
	fade		= 17,
	height		= 18
	
}


var yy = 0; repeat(inv_slots) {
	ds_inventory[# 0, yy] = -1;
	yy += 1;
}

RanThrough = false;