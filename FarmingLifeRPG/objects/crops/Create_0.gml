/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62D860F8
/// @DnDArgument : "code" "depth = -1;$(13_10)$(13_10)ds_crops_types = -1;$(13_10)ds_crops_instances = -1;$(13_10)ds_crops_data = ds_grid_create(4,1);$(13_10)ds_grid_clear(ds_crops_data, -1);$(13_10)$(13_10)enum crop {$(13_10)	tomato,$(13_10)	potato,$(13_10)	carrot,$(13_10)	artichoke,$(13_10)	chilli,$(13_10)	gourd,$(13_10)	corn$(13_10)}$(13_10)$(13_10)create_crop_type(4, 40);	//tomato$(13_10)create_crop_type(3, 35);	//potato$(13_10)create_crop_type(2, 25);	//carrot$(13_10)create_crop_type(4, 45);	//artichoke$(13_10)create_crop_type(3, 30);	//chilli$(13_10)create_crop_type(2, 20);	//gourd$(13_10)create_crop_type(5, 50);	//corn$(13_10)$(13_10)planting = false;$(13_10)selectCrop = 0;$(13_10)$(13_10)mx = 0;$(13_10)my = 0; $(13_10)$(13_10)cellSize = 32;$(13_10)"
depth = -1;

ds_crops_types = -1;
ds_crops_instances = -1;
ds_crops_data = ds_grid_create(4,1);
ds_grid_clear(ds_crops_data, -1);

enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chilli,
	gourd,
	corn
}

create_crop_type(4, 40);	//tomato
create_crop_type(3, 35);	//potato
create_crop_type(2, 25);	//carrot
create_crop_type(4, 45);	//artichoke
create_crop_type(3, 30);	//chilli
create_crop_type(2, 20);	//gourd
create_crop_type(5, 50);	//corn

planting = false;
selectCrop = 0;

mx = 0;
my = 0; 

cellSize = 32;