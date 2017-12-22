/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A529126
/// @DnDArgument : "code" "///@description create_crop_type$(13_10)///@arg growth_stage_duration$(13_10)///@arg cost$(13_10)$(13_10)var argNum = argument_count;$(13_10)$(13_10)if(!ds_exists(ds_crops_types, ds_type_grid)){$(13_10)	ds_crops_types = ds_grid_create(argNum,1);$(13_10)	var height = 1;$(13_10)} else {$(13_10)	var height = ds_grid_height(ds_crops_types);$(13_10)	ds_grid_resize(ds_crops_types, argNum, height+1);$(13_10)	height += 1;$(13_10)}$(13_10)var yy = height-1;$(13_10)var i = 0; repeat(argNum){$(13_10)	ds_crops_types[# i,yy] = argument[i];$(13_10)	i += 1;$(13_10)}$(13_10)"
///@description create_crop_type
///@arg growth_stage_duration
///@arg cost

var argNum = argument_count;

if(!ds_exists(ds_crops_types, ds_type_grid)){
	ds_crops_types = ds_grid_create(argNum,1);
	var height = 1;
} else {
	var height = ds_grid_height(ds_crops_types);
	ds_grid_resize(ds_crops_types, argNum, height+1);
	height += 1;
}
var yy = height-1;
var i = 0; repeat(argNum){
	ds_crops_types[# i,yy] = argument[i];
	i += 1;
}