/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2EFDA11D
/// @DnDArgument : "code" "///@description instance_create_crop$(13_10)///@arg x$(13_10)///@arg y$(13_10)///@arg crop_type$(13_10)$(13_10)var cs = crops.cellSize;$(13_10)var gx = argument0 div cs;$(13_10)var gy = argument1 div cs;$(13_10)var i_grid = crops.ds_crops_instances;$(13_10)var cell = i_grid[# gx, gy];$(13_10)$(13_10)if(cell == 0){$(13_10)	var xx = gx*cs;$(13_10)	var yy = gy*cs;$(13_10)$(13_10)	//Check for soil$(13_10)	var lay_id = layer_get_id("T_Soil");$(13_10)	var map_id = layer_tilemap_get_id(lay_id);$(13_10)	var data = tilemap_get_at_pixel(map_id, argument0, argument1);$(13_10)$(13_10)	if(data == 0){$(13_10)		show_debug_message("there is no soil here.");$(13_10)		return false;$(13_10)	} else {$(13_10)		show_debug_message("there is soil here.");$(13_10)	}$(13_10)$(13_10)	//Create the instance$(13_10)	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);$(13_10)	i_grid[# gx, gy] = inst;$(13_10)$(13_10)	//Give the crop its characteristics$(13_10)	with(inst){$(13_10)		cropType = argument2;$(13_10)		growthStageDuration = crops.ds_crops_types[# 0, cropType];$(13_10)	}$(13_10)$(13_10)	return inst;$(13_10)} else {$(13_10)	show_debug_message("There is already something there");$(13_10)	return false;$(13_10)}$(13_10)$(13_10)$(13_10)"
///@description instance_create_crop
///@arg x
///@arg y
///@arg crop_type

var cs = crops.cellSize;
var gx = argument0 div cs;
var gy = argument1 div cs;
var i_grid = crops.ds_crops_instances;
var cell = i_grid[# gx, gy];

if(cell == 0){
	var xx = gx*cs;
	var yy = gy*cs;

	//Check for soil
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, argument0, argument1);

	if(data == 0){
		show_debug_message("there is no soil here.");
		return false;
	} else {
		show_debug_message("there is soil here.");
	}

	//Create the instance
	var inst = instance_create_layer(xx+(cs/2), yy+(cs/2), "Instances", obj_crop);
	i_grid[# gx, gy] = inst;

	//Give the crop its characteristics
	with(inst){
		cropType = argument2;
		growthStageDuration = crops.ds_crops_types[# 0, cropType];
	}

	return inst;
} else {
	show_debug_message("There is already something there");
	return false;
}