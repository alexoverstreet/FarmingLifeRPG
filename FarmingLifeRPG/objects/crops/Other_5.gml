/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3519118B
/// @DnDArgument : "code" "if(room == rm_main){$(13_10)	var inst_num = instance_number(obj_crop);$(13_10)	if(inst_num == 0){ ds_grid_clear(ds_crops_data, -1); } //no data$(13_10)	else {$(13_10)		//there is crops, so save their data$(13_10)		ds_grid_resize(ds_crops_data, ds_grid_width(ds_crops_data), inst_num);$(13_10)		$(13_10)		//loop through the instance grid$(13_10)		var gw = ds_grid_width(ds_crops_instances);$(13_10)		var gh = ds_grid_height(ds_crops_instances);$(13_10)		var slot = 0;$(13_10)		$(13_10)		var xx = 0; repeat(gw){$(13_10)			var yy = 0; repeat(gh){$(13_10)				var inst = ds_crops_instances[# xx, yy];$(13_10)				$(13_10)				//If there is an instance in the cell, save its data$(13_10)				if(inst != 0){$(13_10)					ds_crops_data[# 0, slot] = xx;$(13_10)					ds_crops_data[# 1, slot] = yy;$(13_10)					ds_crops_data[# 2, slot] = inst.cropType;$(13_10)					ds_crops_data[# 3, slot] = inst.daysOld;$(13_10)					slot += 1;$(13_10)				}$(13_10)				yy += 1;$(13_10)			}$(13_10)			xx += 1;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	ds_grid_destroy(ds_crops_instances);$(13_10)}$(13_10)$(13_10)"
if(room == rm_main){
	var inst_num = instance_number(obj_crop);
	if(inst_num == 0){ ds_grid_clear(ds_crops_data, -1); } //no data
	else {
		//there is crops, so save their data
		ds_grid_resize(ds_crops_data, ds_grid_width(ds_crops_data), inst_num);
		
		//loop through the instance grid
		var gw = ds_grid_width(ds_crops_instances);
		var gh = ds_grid_height(ds_crops_instances);
		var slot = 0;
		
		var xx = 0; repeat(gw){
			var yy = 0; repeat(gh){
				var inst = ds_crops_instances[# xx, yy];
				
				//If there is an instance in the cell, save its data
				if(inst != 0){
					ds_crops_data[# 0, slot] = xx;
					ds_crops_data[# 1, slot] = yy;
					ds_crops_data[# 2, slot] = inst.cropType;
					ds_crops_data[# 3, slot] = inst.daysOld;
					slot += 1;
				}
				yy += 1;
			}
			xx += 1;
		}
	}
	
	ds_grid_destroy(ds_crops_instances);
}