/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 035F58C1
/// @DnDArgument : "code" "if(drop_move){$(13_10)	x = lerp(x, goal_x, 0.1);$(13_10)	y = lerp(y, goal_y, 0.1);$(13_10)	$(13_10)	if(abs(x - goal_x) < 1 and abs(y - goal_y) < 1) { drop_move = false; }$(13_10)} else {$(13_10)	if(!keyboard_check(ord("O"))) exit;$(13_10)	$(13_10)	var px = obj_player.x;$(13_10)	var py = obj_player.y;$(13_10)	var r = 32;$(13_10)	if(point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){$(13_10)		$(13_10)		//ARE WE ON TOP OF THE PLAYER?$(13_10)		r = 2;$(13_10)		if(!point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){$(13_10)			//move towards the player$(13_10)			x = lerp(x, px, 0.1);$(13_10)			y = lerp(y, py, 0.1);$(13_10)			$(13_10)		} else { //pickup item$(13_10)			var in = item_num;$(13_10)			$(13_10)			with(inventory){$(13_10)				var ds_inv = ds_inventory;$(13_10)				var picked_up = false;$(13_10)				$(13_10)				//check if item exists in inventory already$(13_10)				var yy = 0; repeat(inv_slots){$(13_10)					if(ds_inv[# 0, yy] == in){$(13_10)						ds_inv[# 1, yy] += 1;$(13_10)						picked_up = true;$(13_10)						break;$(13_10)					} else {$(13_10)						yy += 1;$(13_10)					}$(13_10)				}$(13_10)				$(13_10)				//otherwise, add to an empty slot$(13_10)				if(!picked_up){$(13_10)					yy = 0; repeat(inv_slots){$(13_10)					if(ds_inv[# 0, yy] == item.none){$(13_10)						ds_inv[# 0, yy] = in;$(13_10)						ds_inv[# 1, yy] += 1;$(13_10)						picked_up = true;$(13_10)						break;$(13_10)					} else {$(13_10)						yy += 1;$(13_10)					}$(13_10)				}$(13_10)				}$(13_10)				$(13_10)			}$(13_10)				//DESTROY IF PICKED UP$(13_10)				if(picked_up){$(13_10)					show_debug_message("Picked up an item");$(13_10)					instance_destroy();$(13_10)				}$(13_10)		}$(13_10)	}$(13_10)}"
if(drop_move){
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	
	if(abs(x - goal_x) < 1 and abs(y - goal_y) < 1) { drop_move = false; }
} else {
	if(!keyboard_check(ord("O"))) exit;
	
	var px = obj_player.x;
	var py = obj_player.y;
	var r = 32;
	if(point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
		
		//ARE WE ON TOP OF THE PLAYER?
		r = 2;
		if(!point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
			//move towards the player
			x = lerp(x, px, 0.1);
			y = lerp(y, py, 0.1);
			
		} else { //pickup item
			var in = item_num;
			
			with(inventory){
				var ds_inv = ds_inventory;
				var picked_up = false;
				
				//check if item exists in inventory already
				var yy = 0; repeat(inv_slots){
					if(ds_inv[# 0, yy] == in){
						ds_inv[# 1, yy] += 1;
						picked_up = true;
						break;
					} else {
						yy += 1;
					}
				}
				
				//otherwise, add to an empty slot
				if(!picked_up){
					yy = 0; repeat(inv_slots){
					if(ds_inv[# 0, yy] == item.none){
						ds_inv[# 0, yy] = in;
						ds_inv[# 1, yy] += 1;
						picked_up = true;
						break;
					} else {
						yy += 1;
					}
				}
				}
				
			}
				//DESTROY IF PICKED UP
				if(picked_up){
					show_debug_message("Picked up an item");
					instance_destroy();
				}
		}
	}
}