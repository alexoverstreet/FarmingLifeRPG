/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F93DD0B
/// @DnDArgument : "code" "draw_sprite(spr_box, 0, x, y);$(13_10)$(13_10)draw_set_font(fnt_norm_12)$(13_10)$(13_10)if(charCount < string_length(text[page])) charCount += 0.4;$(13_10)$(13_10)textPart = string_copy(text[page], 1, charCount);$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)draw_text_color(x+(boxWidth/2), y+yBuffer, name,c_yellow,c_yellow,c_yellow,c_yellow,1);$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)draw_text_ext((x+xBuffer), (y+stringHeight+yBuffer), textPart, stringHeight, boxWidth - (2*xBuffer));"
draw_sprite(spr_box, 0, x, y);

draw_set_font(fnt_norm_12)

if(charCount < string_length(text[page])) charCount += 0.4;

textPart = string_copy(text[page], 1, charCount);

draw_set_halign(fa_center);
draw_text_color(x+(boxWidth/2), y+yBuffer, name,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_set_halign(fa_left);

draw_text_ext((x+xBuffer), (y+stringHeight+yBuffer), textPart, stringHeight, boxWidth - (2*xBuffer));