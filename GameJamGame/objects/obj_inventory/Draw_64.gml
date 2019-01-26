/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor




//------inventory
if (global.Tab == false) {
	draw_sprite_part_ext(
	spr_inv_UI, 0, cell_size, 0, inv_UI_width, 
	inv_UI_height, inv_UI_x, inv_UI_y, scale, scale, c_white, 1
);

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
	switch(ii) {
		case selected_slot:
			draw_sprite_part_ext(
				spr_inv_items, 0, spritex, spritey, cell_size, cell_size,
				xx, yy, scale, scale, c_white, 1
			);
			gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, .1);
			gpu_set_blendmode(bm_normal);
		break;
		
		case pickup_slot:
			draw_sprite_part_ext(
				spr_inv_items, 0, spritex, spritey, cell_size, cell_size,
				xx, yy, scale, scale, c_white, .2
			);
		
		default:
			draw_sprite_part_ext(
				spr_inv_items, 0, spritex, spritey, cell_size, cell_size,
				xx, yy, scale, scale, c_white, 1
			);
		
	}
	//increment 
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

if (pickup_slot != -1) {
	
	currItem = inv_grid[# 0, pickup_slot];
	spritex = (currItem mod spr_inv_items_columns) * cell_size;
	spritey = (currItem div spr_inv_items_columns) * cell_size;
	
	draw_sprite_part_ext(
				spr_inv_items, 0, spritex, spritey, cell_size, cell_size,
				mousex, mousey, scale, scale, c_white, 1
			);
}

instance_destroy(obj_MusicBlock)	
} else  {
	var inv_grid = ds_inventory
	var ii, ix, iy;
		ii = 0; ix = 0; iy = 0;
	var	currItem = inv_grid[# 0, 0];
	var spritex = (currItem mod spr_inv_items_columns) * cell_size;
	var spritey = (currItem div spr_inv_items_columns) * cell_size;

if(keyboard_check_pressed(vk_tab)){
	vx = camera_get_view_x(view_camera[0]);
	vy = camera_get_view_y(view_camera[0]);
	repeat(filled_slot) {
		
		instance = instance_create_layer(vx + 235 + (ii * 33) ,380 ,"Instances", obj_MusicBlock);
		with(instance) {
			Music = inv_grid[# 0, ii];
			sprite_index = inv_grid[# 1, ii];
			
			
		}
		ii += 1;

	}


		

}
	

		
exit};

	