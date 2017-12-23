/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1EDE2A82
/// @DnDArgument : "code" "if(keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory; }$(13_10)$(13_10)if(!show_inventory) exit;$(13_10)#region Mouse Slot$(13_10)mousex = device_mouse_x_to_gui(0);$(13_10)mousey = device_mouse_y_to_gui(0);$(13_10)$(13_10)var cell_xbuff = (cell_size+x_buffer)*scale;$(13_10)var cell_ybuff = (cell_size+y_buffer)*scale;$(13_10)$(13_10)var i_mousex = mousex - slots_x;$(13_10)var i_mousey = mousey - slots_y;$(13_10)$(13_10)var nx = i_mousex div cell_xbuff;$(13_10)var ny = i_mousey div cell_ybuff;$(13_10)$(13_10)//m_slotx = nx;$(13_10)//m_sloty = ny;$(13_10)$(13_10)if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height){$(13_10)	var sx = i_mousex - (nx*cell_xbuff);$(13_10)	var sy = i_mousey - (nx*cell_ybuff);$(13_10)	$(13_10)	m_slotx = nx;$(13_10)	m_sloty = ny;$(13_10)$(13_10)}$(13_10)$(13_10)//Set Selected Slot to Mouse Position$(13_10)selected_slot = min(inv_slots, m_slotx + (m_sloty*inv_slots_width));$(13_10)#endregion$(13_10)$(13_10)//Pickup Item$(13_10)var inv_grid = ds_inventory;$(13_10)var ss_item = inv_grid[# 0, selected_slot];$(13_10)$(13_10)if(pickup_slot != -1){$(13_10)	if(mouse_check_button_pressed(mb_right)){$(13_10)		if(ss_item == item.none){$(13_10)			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];$(13_10)			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];$(13_10)			$(13_10)			inv_grid[# 0, pickup_slot] = item.none;$(13_10)			inv_grid[# 1, pickup_slot] = 0;$(13_10)			$(13_10)			pickup_slot = -1;$(13_10)			$(13_10)		} else if (ss_item == inv_grid[# 0, pickup_slot]){$(13_10)			if(selected_slot != pickup_slot){$(13_10)				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];$(13_10)				inv_grid[# 0, pickup_slot] = item.none;$(13_10)				inv_grid[# 1, pickup_slot] = 0;$(13_10)			}$(13_10)			$(13_10)			pickup_slot = -1;$(13_10)			$(13_10)		} else {$(13_10)			var ss_item_num = inv_grid[# 1, selected_slot];$(13_10)			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];$(13_10)			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];$(13_10)			$(13_10)			inv_grid[# 0, pickup_slot] = ss_item;$(13_10)			inv_grid[# 1, pickup_slot] = ss_item_num;$(13_10)			$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if(ss_item != item.none){$(13_10)	//Drop Item into Game World$(13_10)	if(mouse_check_button_pressed(mb_middle)){$(13_10)		inv_grid[# 1, selected_slot] -= 1;$(13_10)		//destroy item in inventory in inventory if last one$(13_10)		if(inv_grid[# 1, selected_slot] == 0) { $(13_10)			inv_grid[# 0, selected_slot] = item.none; $(13_10)		}$(13_10)		$(13_10)		//create the item$(13_10)		var inst = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item);$(13_10)		with(inst){$(13_10)			item_num = ss_item;$(13_10)			x_frame = item_num mod (spr_width/cell_size);$(13_10)			y_frame = item_num div (spr_width/cell_size);$(13_10)	$(13_10)		}$(13_10)		show_debug_message("Dropped an Item");$(13_10)	}$(13_10)	$(13_10)	//Drop Pickup Item into new Slot$(13_10)	if(mouse_check_button_pressed(mb_left)){$(13_10)		pickup_slot = selected_slot;$(13_10)	}$(13_10)}$(13_10)$(13_10)ds_player_info[# 1, 3] = global.name;"
if(keyboard_check_pressed(ord("I"))) { show_inventory = !show_inventory; }

if(!show_inventory) exit;
#region Mouse Slot
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size+x_buffer)*scale;
var cell_ybuff = (cell_size+y_buffer)*scale;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

//m_slotx = nx;
//m_sloty = ny;

if(nx >= 0 and nx < inv_slots_width and ny >= 0 and ny < inv_slots_height){
	var sx = i_mousex - (nx*cell_xbuff);
	var sy = i_mousey - (nx*cell_ybuff);
	
	m_slotx = nx;
	m_sloty = ny;

}

//Set Selected Slot to Mouse Position
selected_slot = min(inv_slots, m_slotx + (m_sloty*inv_slots_width));
#endregion

//Pickup Item
var inv_grid = ds_inventory;
var ss_item = inv_grid[# 0, selected_slot];

if(pickup_slot != -1){
	if(mouse_check_button_pressed(mb_right)){
		if(ss_item == item.none){
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = item.none;
			inv_grid[# 1, pickup_slot] = 0;
			
			pickup_slot = -1;
			
		} else if (ss_item == inv_grid[# 0, pickup_slot]){
			if(selected_slot != pickup_slot){
				inv_grid[# 1, selected_slot] += inv_grid[# 1, pickup_slot];
				inv_grid[# 0, pickup_slot] = item.none;
				inv_grid[# 1, pickup_slot] = 0;
			}
			
			pickup_slot = -1;
			
		} else {
			var ss_item_num = inv_grid[# 1, selected_slot];
			inv_grid[# 0, selected_slot] = inv_grid[# 0, pickup_slot];
			inv_grid[# 1, selected_slot] = inv_grid[# 1, pickup_slot];
			
			inv_grid[# 0, pickup_slot] = ss_item;
			inv_grid[# 1, pickup_slot] = ss_item_num;
			
		}
	}
}

if(ss_item != item.none){
	//Drop Item into Game World
	if(mouse_check_button_pressed(mb_middle)){
		inv_grid[# 1, selected_slot] -= 1;
		//destroy item in inventory in inventory if last one
		if(inv_grid[# 1, selected_slot] == 0) { 
			inv_grid[# 0, selected_slot] = item.none; 
		}
		
		//create the item
		var inst = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item);
		with(inst){
			item_num = ss_item;
			x_frame = item_num mod (spr_width/cell_size);
			y_frame = item_num div (spr_width/cell_size);
	
		}
		show_debug_message("Dropped an Item");
	}
	
	//Drop Pickup Item into new Slot
	if(mouse_check_button_pressed(mb_left)){
		pickup_slot = selected_slot;
	}
}

ds_player_info[# 1, 3] = global.name;