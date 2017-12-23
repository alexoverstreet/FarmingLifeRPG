/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59B6406A
/// @DnDArgument : "code" "if(!planting) exit;$(13_10)$(13_10)var cs = cellSize;$(13_10)var gx = (mx div cs);$(13_10)var gy = (my div cs);$(13_10)$(13_10)//What is in the cell?$(13_10)var c = c_red;$(13_10)var cell = ds_crops_instances[# gx, gy];$(13_10)$(13_10)if(cell == 0){$(13_10)	var lay_id = layer_get_id("T_Soil");$(13_10)	var map_id = layer_tilemap_get_id(lay_id);$(13_10)	var data = tilemap_get_at_pixel(map_id, mx, my);$(13_10)	if(data != 0) { c = c_lime; }$(13_10)}$(13_10)$(13_10)xx = gx*cs;$(13_10)yy = gy*cs;$(13_10)$(13_10)//Draw a rectangle red or green$(13_10)draw_rectangle_color(xx, yy, xx+cs, yy+cs, c,c,c,c, true);$(13_10)$(13_10)//Draw the crop to be planted$(13_10)draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));$(13_10)"
if(!planting) exit;

var cs = cellSize;
var gx = (mx div cs);
var gy = (my div cs);

//What is in the cell?
var c = c_red;
var cell = ds_crops_instances[# gx, gy];

if(cell == 0){
	var lay_id = layer_get_id("T_Soil");
	var map_id = layer_tilemap_get_id(lay_id);
	var data = tilemap_get_at_pixel(map_id, mx, my);
	if(data != 0) { c = c_lime; }
}

xx = gx*cs;
yy = gy*cs;

//Draw a rectangle red or green
draw_rectangle_color(xx, yy, xx+cs, yy+cs, c,c,c,c, true);

//Draw the crop to be planted
draw_sprite(spr_crops_picked, selectCrop, xx+(cs/2), yy+(cs/2));