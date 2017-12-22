/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D726086
/// @DnDArgument : "code" "if(room == rm_main){$(13_10)	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);$(13_10)	ds_grid_clear(ds_crops_instances, 0);$(13_10)	$(13_10)	//Respawn the crops$(13_10)	if(ds_crops_data[# 0, 0] != -1){$(13_10)		var inst_num = ds_grid_height(ds_crops_data);$(13_10)		var slot = 0; repeat(inst_num){$(13_10)			//respawn that instance$(13_10)			respawn_crop($(13_10)				ds_crops_data[# 0, slot],$(13_10)				ds_crops_data[# 1, slot],$(13_10)				ds_crops_data[# 2, slot],$(13_10)				ds_crops_data[# 3, slot]$(13_10)			);$(13_10)			$(13_10)			slot += 1;$(13_10)		}$(13_10)		$(13_10)		with(obj_crop){$(13_10)			//First growth$(13_10)			var firstGrowth = 0;$(13_10)			if(daysOld > 0){ firstGrowth = 1; }$(13_10)			growthStage = firstGrowth + (daysOld div growthStageDuration);$(13_10)			$(13_10)			if(growthStage >= maxGrowthStage) {$(13_10)				growthStage = maxGrowthStage;$(13_10)				fullyGrown = true;$(13_10)				alarm[1] = 1;$(13_10)			}$(13_10)		$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)"
if(room == rm_main){
	ds_crops_instances = ds_grid_create(room_width div cellSize, room_height div cellSize);
	ds_grid_clear(ds_crops_instances, 0);
	
	//Respawn the crops
	if(ds_crops_data[# 0, 0] != -1){
		var inst_num = ds_grid_height(ds_crops_data);
		var slot = 0; repeat(inst_num){
			//respawn that instance
			respawn_crop(
				ds_crops_data[# 0, slot],
				ds_crops_data[# 1, slot],
				ds_crops_data[# 2, slot],
				ds_crops_data[# 3, slot]
			);
			
			slot += 1;
		}
		
		with(obj_crop){
			//First growth
			var firstGrowth = 0;
			if(daysOld > 0){ firstGrowth = 1; }
			growthStage = firstGrowth + (daysOld div growthStageDuration);
			
			if(growthStage >= maxGrowthStage) {
				growthStage = maxGrowthStage;
				fullyGrown = true;
				alarm[1] = 1;
			}
		
		}
	}
}