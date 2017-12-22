/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10B62B37
/// @DnDArgument : "code" "if(room == rm_main){$(13_10)	if(instance_exists(obj_crop)){$(13_10)		with(obj_crop){$(13_10)			if(growthStage < maxGrowthStage){$(13_10)				daysOld += 1;$(13_10)			$(13_10)				//First growth$(13_10)				var firstGrowth = 0;$(13_10)				if(daysOld > 0){ firstGrowth = 1; }$(13_10)			$(13_10)				growthStage = firstGrowth + (daysOld div growthStageDuration);$(13_10)			} else {$(13_10)				growthStage = maxGrowthStage;$(13_10)				fullyGrown = true;$(13_10)				alarm[1] = 1;$(13_10)			}$(13_10)		$(13_10)		}$(13_10)	}$(13_10)} else if (ds_crops_data[# 0, 0] != -1){$(13_10)	var h = ds_grid_height(ds_crops_data);$(13_10)	var yy = 0; repeat(h){$(13_10)		ds_crops_data[# 3, yy] += 1;$(13_10)		yy += 1;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)"
if(room == rm_main){
	if(instance_exists(obj_crop)){
		with(obj_crop){
			if(growthStage < maxGrowthStage){
				daysOld += 1;
			
				//First growth
				var firstGrowth = 0;
				if(daysOld > 0){ firstGrowth = 1; }
			
				growthStage = firstGrowth + (daysOld div growthStageDuration);
			} else {
				growthStage = maxGrowthStage;
				fullyGrown = true;
				alarm[1] = 1;
			}
		
		}
	}
} else if (ds_crops_data[# 0, 0] != -1){
	var h = ds_grid_height(ds_crops_data);
	var yy = 0; repeat(h){
		ds_crops_data[# 3, yy] += 1;
		yy += 1;
	}
}