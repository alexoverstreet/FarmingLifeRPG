/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61F1F046
/// @DnDArgument : "code" "if(room != rm_main){ planting = false; exit; }$(13_10)$(13_10)#region Planting$(13_10)$(13_10)if(keyboard_check_pressed(ord("P"))){ planting = !planting } $(13_10)$(13_10)if(planting){$(13_10)	mx = mouse_x;$(13_10)	my = mouse_y;$(13_10)	$(13_10)	if(mouse_wheel_up()) selectCrop += 1; $(13_10)	if(mouse_wheel_down()) selectCrop -= 1; $(13_10)	$(13_10)	if(selectCrop > sprite_get_number(spr_crops_picked)-1) { selectCrop = 0; }$(13_10)	else if (selectCrop < 0) { selectCrop = sprite_get_number(spr_crops_picked)-1; }$(13_10)	$(13_10)	if(mouse_check_button_pressed(mb_left)){$(13_10)		instance_create_crop(mx, my, selectCrop);$(13_10)	}$(13_10)}$(13_10)#endregion$(13_10)$(13_10)if(instance_exists(obj_crop)){$(13_10)	with(obj_crop){$(13_10)		if(growthStage < maxGrowthStage){	$(13_10)			//First growth$(13_10)			var firstGrowth = 0;$(13_10)			if(daysOld > 0){ firstGrowth = 1; }$(13_10)			$(13_10)			growthStage = firstGrowth + (daysOld div growthStageDuration);$(13_10)		} else {$(13_10)			growthStage = maxGrowthStage;$(13_10)			fullyGrown = true;$(13_10)			alarm[1] = 1;$(13_10)		}$(13_10)		$(13_10)	}$(13_10)}$(13_10)"
if(room != rm_main){ planting = false; exit; }

#region Planting

if(keyboard_check_pressed(ord("P"))){ planting = !planting } 

if(planting){
	mx = mouse_x;
	my = mouse_y;
	
	if(mouse_wheel_up()) selectCrop += 1; 
	if(mouse_wheel_down()) selectCrop -= 1; 
	
	if(selectCrop > sprite_get_number(spr_crops_picked)-1) { selectCrop = 0; }
	else if (selectCrop < 0) { selectCrop = sprite_get_number(spr_crops_picked)-1; }
	
	if(mouse_check_button_pressed(mb_left)){
		instance_create_crop(mx, my, selectCrop);
	}
}
#endregion

if(instance_exists(obj_crop)){
	with(obj_crop){
		if(growthStage < maxGrowthStage){	
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