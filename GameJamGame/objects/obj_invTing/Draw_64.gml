/// @description Insert description here
// You can write your code in this editor
draw_sprite_part_ext(
	spr_inv_UI, 0, cell_size, 0, inv_UI_width, 
	inv_UI_height, inv_UI_x, inv_UI_y, scale, scale, c_white, 1
);




//------inventory
var ii, ix, iy, xx, yy, currItem, inv_grid, spritex, spritey;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;
repeat(inv_slots) {
	// x location of slot
	xx = slots_x + ((cell_size + x_buffer) * ix * scale);
	yy = slots_y + ((cell_size + y_buffer) * iy * scale);
	
	//item
	currItem = inv_grid[# 0, ii];
	spritex = (currItem mod spr_inv_items_columns) * cell_size;
	spritey = (currItem div spr_inv_items_columns) * cell_size;
	
	//draw slot and item
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	draw_sprite_part_ext(
		spr_inv_items, 0, spritex, spritey, cell_size, cell_size,
		xx, yy, scale, scale, c_white, 1
	);
	
	//increment 
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}
