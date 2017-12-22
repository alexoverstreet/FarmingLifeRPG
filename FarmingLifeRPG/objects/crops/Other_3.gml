/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 10765D79
/// @DnDArgument : "code" "if(ds_exists(ds_crops_types, ds_type_grid)){$(13_10)	ds_grid_destroy(ds_crops_types);$(13_10)}$(13_10)if(ds_exists(ds_crops_instances, ds_type_grid)){$(13_10)	ds_grid_destroy(ds_crops_instances);$(13_10)}$(13_10)if(ds_exists(ds_crops_data, ds_type_grid)){$(13_10)	ds_grid_destroy(ds_crops_data);$(13_10)}$(13_10)"
if(ds_exists(ds_crops_types, ds_type_grid)){
	ds_grid_destroy(ds_crops_types);
}
if(ds_exists(ds_crops_instances, ds_type_grid)){
	ds_grid_destroy(ds_crops_instances);
}
if(ds_exists(ds_crops_data, ds_type_grid)){
	ds_grid_destroy(ds_crops_data);
}