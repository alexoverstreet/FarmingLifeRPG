/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 292ACABE
/// @DnDArgument : "code" "///@description respawn_crop$(13_10)///@arg grid_x$(13_10)///@arg grid_y$(13_10)///@arg crop_type$(13_10)///@arg days_old$(13_10)$(13_10)var xx = argument0*cellSize;$(13_10)var yy = argument1*cellSize;$(13_10)$(13_10)//Create the instance$(13_10)var inst = instance_create_layer(xx+(cellSize/2), yy+(cellSize/2), "Instances", obj_crop);$(13_10)ds_crops_instances[# argument0, argument1] = inst;$(13_10)$(13_10)//Give the crop its characteristics$(13_10)with(inst){$(13_10)	cropType = argument2;$(13_10)	daysOld = argument3;$(13_10)	growthStageDuration = crops.ds_crops_types[# 0, cropType];$(13_10)}$(13_10)$(13_10)return inst;$(13_10)"
///@description respawn_crop
///@arg grid_x
///@arg grid_y
///@arg crop_type
///@arg days_old

var xx = argument0*cellSize;
var yy = argument1*cellSize;

//Create the instance
var inst = instance_create_layer(xx+(cellSize/2), yy+(cellSize/2), "Instances", obj_crop);
ds_crops_instances[# argument0, argument1] = inst;

//Give the crop its characteristics
with(inst){
	cropType = argument2;
	daysOld = argument3;
	growthStageDuration = crops.ds_crops_types[# 0, cropType];
}

return inst;