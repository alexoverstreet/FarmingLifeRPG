/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15AD36DC
/// @DnDArgument : "code" "///@desc draw_text_font$(13_10)///@arg x$(13_10)///@arg y$(13_10)///@arg font$(13_10)///@arg color$(13_10)///@arg string$(13_10)$(13_10)draw_set_font(argument2);$(13_10)draw_set_color(argument3);$(13_10)draw_text(argument0, argument1, argument4);$(13_10)draw_set_font(-1);$(13_10)draw_set_color(c_white);"
///@desc draw_text_font
///@arg x
///@arg y
///@arg font
///@arg color
///@arg string

draw_set_font(argument2);
draw_set_color(argument3);
draw_text(argument0, argument1, argument4);
draw_set_font(-1);
draw_set_color(c_white);