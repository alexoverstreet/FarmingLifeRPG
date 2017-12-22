/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 568EB2CB
/// @DnDArgument : "code" "if(!show_inventory) exit;$(13_10)$(13_10)//-------Inventory Back$(13_10)draw_sprite_part_ext($(13_10)	spr_inv_UI, 0, cell_size, 0, inv_UI_width, inv_UI_height, $(13_10)	inv_UI_x, inv_UI_y, scale, scale, c_white, 1$(13_10));$(13_10)$(13_10)var info_grid = ds_player_info;$(13_10)$(13_10)draw_set_font(fnt_text_24);$(13_10)var c = c_black; $(13_10)draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c,c,c,c, 1);$(13_10)$(13_10)draw_set_font(fnt_smalldigits);$(13_10)var yy = 0; repeat(3){$(13_10)	draw_text_color($(13_10)		info_x + (192*scale) + ((15+18)*scale*yy), info_y, $(13_10)		string(info_grid[# 1, yy]), c,c,c,c, 1$(13_10)	);$(13_10)	yy += 1;$(13_10)}$(13_10)$(13_10)//------Inventory$(13_10)var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;$(13_10)ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;$(13_10)$(13_10)repeat(inv_slots){$(13_10)	//x,y location for slot$(13_10)	xx = slots_x + ((cell_size+x_buffer)*ix*scale);$(13_10)	yy = slots_y + ((cell_size+y_buffer)*iy*scale);$(13_10)	$(13_10)	//Item$(13_10)	iitem = inv_grid[# 0, ii];$(13_10)	sx = (iitem mod spr_inv_items_columns)*cell_size;$(13_10)	sy = (iitem div spr_inv_items_columns)*cell_size;$(13_10)	$(13_10)	//Draw Slot and Item$(13_10)	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);$(13_10)	$(13_10)	switch(ii){$(13_10)		case selected_slot:$(13_10)			if(iitem > 0) draw_sprite_part_ext($(13_10)				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1$(13_10)			);$(13_10)			gpu_set_blendmode(bm_add);$(13_10)			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, .3);$(13_10)			gpu_set_blendmode(bm_normal);$(13_10)			$(13_10)		break;$(13_10)		$(13_10)		case pickup_slot:$(13_10)			if(iitem > 0) draw_sprite_part_ext($(13_10)				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 0$(13_10)			);$(13_10)		$(13_10)		default:$(13_10)			if(iitem > 0) draw_sprite_part_ext($(13_10)				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1$(13_10)			);$(13_10)		break;$(13_10)	}$(13_10)	$(13_10)	//Draw item Number$(13_10)	if(iitem > 0){$(13_10)		var number = inv_grid[# 1, ii];$(13_10)		draw_text_color(xx, yy, string(number), c,c,c,c, 1);$(13_10)	}$(13_10)	$(13_10)	//Increment$(13_10)	ii += 1;$(13_10)	ix = ii mod inv_slots_width;$(13_10)	iy = ii div inv_slots_width;$(13_10)}$(13_10)$(13_10)if(pickup_slot != -1){$(13_10)	//Item$(13_10)	iitem = inv_grid[# 0, pickup_slot];$(13_10)	sx = (iitem mod spr_inv_items_columns)*cell_size;$(13_10)	sy = (iitem div spr_inv_items_columns)*cell_size;$(13_10)	$(13_10)	draw_sprite_part_ext($(13_10)			spr_inv_items, 0, sx, sy, cell_size, cell_size, mousex, mousey, scale, scale, c_white, 1$(13_10)	);$(13_10)	$(13_10)	var inum = inv_grid[# 1, pickup_slot];$(13_10)	draw_text_color(mousex + 10, mousey, string(inum), c,c,c,c, 1);$(13_10)}$(13_10)"
if(!show_inventory) exit;

//-------Inventory Back
draw_sprite_part_ext(
	spr_inv_UI, 0, cell_size, 0, inv_UI_width, inv_UI_height, 
	inv_UI_x, inv_UI_y, scale, scale, c_white, 1
);

var info_grid = ds_player_info;

draw_set_font(fnt_text_24);
var c = c_black; 
draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3], c,c,c,c, 1);

draw_set_font(fnt_smalldigits);
var yy = 0; repeat(3){
	draw_text_color(
		info_x + (192*scale) + ((15+18)*scale*yy), info_y, 
		string(info_grid[# 1, yy]), c,c,c,c, 1
	);
	yy += 1;
}

//------Inventory
var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory;

repeat(inv_slots){
	//x,y location for slot
	xx = slots_x + ((cell_size+x_buffer)*ix*scale);
	yy = slots_y + ((cell_size+y_buffer)*iy*scale);
	
	//Item
	iitem = inv_grid[# 0, ii];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	
	//Draw Slot and Item
	draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 1);
	
	switch(ii){
		case selected_slot:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
			);
			gpu_set_blendmode(bm_add);
			draw_sprite_part_ext(spr_inv_UI, 0, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, .3);
			gpu_set_blendmode(bm_normal);
			
		break;
		
		case pickup_slot:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 0
			);
		
		default:
			if(iitem > 0) draw_sprite_part_ext(
				spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
			);
		break;
	}
	
	//Draw item Number
	if(iitem > 0){
		var number = inv_grid[# 1, ii];
		draw_text_color(xx, yy, string(number), c,c,c,c, 1);
	}
	
	//Increment
	ii += 1;
	ix = ii mod inv_slots_width;
	iy = ii div inv_slots_width;
}

if(pickup_slot != -1){
	//Item
	iitem = inv_grid[# 0, pickup_slot];
	sx = (iitem mod spr_inv_items_columns)*cell_size;
	sy = (iitem div spr_inv_items_columns)*cell_size;
	
	draw_sprite_part_ext(
			spr_inv_items, 0, sx, sy, cell_size, cell_size, mousex, mousey, scale, scale, c_white, 1
	);
	
	var inum = inv_grid[# 1, pickup_slot];
	draw_text_color(mousex + 10, mousey, string(inum), c,c,c,c, 1);
}