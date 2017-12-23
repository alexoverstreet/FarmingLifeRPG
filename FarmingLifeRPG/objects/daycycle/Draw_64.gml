/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33C66072
/// @DnDArgument : "code" "if(draw_daylight){$(13_10)	var c = light_color;$(13_10)	draw_set_alpha(darkness);$(13_10)	draw_rectangle_color(0, 0, guiWidth, guiHeight,c,c,c,c, false);$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)$(13_10)var ct = c_white$(13_10)draw_set_font(fnt_time);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)if(drawZero == -1) draw_text_color(10, 10, string(floor(hours))+string(":")+string(floor(drawMinutes)), ct,ct,ct,ct, 1);$(13_10)else draw_text_color(10, 10, string(floor(hours))+string(":")+drawZero+string(floor(drawMinutes)), ct,ct,ct,ct, 1);$(13_10)$(13_10)draw_text_color(10, 50, string("Day:"), ct,ct,ct,ct, 1);$(13_10)draw_text_color(55, 50, string(day), ct,ct,ct,ct, 1);$(13_10)$(13_10)draw_text_color(10, 70, string("Season:"+ drawSeason), ct,ct,ct,ct, 1);$(13_10)$(13_10)draw_text_color(10, 90, string("Year:"), ct,ct,ct,ct, 1);$(13_10)draw_text_color(65, 90, string(year), ct,ct,ct,ct, 1);$(13_10)"
if(draw_daylight){
	var c = light_color;
	draw_set_alpha(darkness);
	draw_rectangle_color(0, 0, guiWidth, guiHeight,c,c,c,c, false);
	draw_set_alpha(1);
}

var ct = c_white
draw_set_font(fnt_time);
draw_set_halign(fa_left);

if(drawZero == -1) draw_text_color(10, 10, string(floor(hours))+string(":")+string(floor(drawMinutes)), ct,ct,ct,ct, 1);
else draw_text_color(10, 10, string(floor(hours))+string(":")+drawZero+string(floor(drawMinutes)), ct,ct,ct,ct, 1);

draw_text_color(10, 50, string("Day:"), ct,ct,ct,ct, 1);
draw_text_color(55, 50, string(day), ct,ct,ct,ct, 1);

draw_text_color(10, 70, string("Season:"+ drawSeason), ct,ct,ct,ct, 1);

draw_text_color(10, 90, string("Year:"), ct,ct,ct,ct, 1);
draw_text_color(65, 90, string(year), ct,ct,ct,ct, 1);