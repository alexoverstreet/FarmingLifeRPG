/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1481AB78
/// @DnDArgument : "code" "draw_sprite_ext(spr_pixel, 0, 0, 0, 1280, 200, 0, c_black, 1);$(13_10)draw_sprite_ext(spr_pixel, 0, 0, 890, 1280, 200, 0, c_black, 1);$(13_10)$(13_10)draw_set_color(c_white);$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_font(fnt_text_12);$(13_10)draw_text(540, 940, print);$(13_10)$(13_10)if(holdspace > 0){$(13_10)	draw_set_alpha(Wave(0.2, 0.8, 1, 0));$(13_10)	draw_text(540, 980, "Hold space to skip");$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)$(13_10)draw_sprite_ext(spr_pixel, 0, 0, 0, 1280, 1280, 0, c_black, a);"
draw_sprite_ext(spr_pixel, 0, 0, 0, 1280, 200, 0, c_black, 1);
draw_sprite_ext(spr_pixel, 0, 0, 890, 1280, 200, 0, c_black, 1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text_12);
draw_text(540, 940, print);

if(holdspace > 0){
	draw_set_alpha(Wave(0.2, 0.8, 1, 0));
	draw_text(540, 980, "Hold space to skip");
	draw_set_alpha(1);
}

draw_sprite_ext(spr_pixel, 0, 0, 0, 1280, 1280, 0, c_black, a);