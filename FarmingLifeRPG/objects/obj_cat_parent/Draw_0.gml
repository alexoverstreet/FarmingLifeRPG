/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BA2BD64
/// @DnDArgument : "code" "var anim_length = 3;$(13_10)var frame_size = 48;$(13_10)var anim_speed = 12;$(13_10)$(13_10)//If moving, animate$(13_10)if(moveX = -spd) y_frame = 1;$(13_10)else if(moveX = spd) y_frame = 2;$(13_10)else if(moveY = -spd) y_frame = 3;$(13_10)else if(moveY = spd) y_frame = 0;$(13_10)else x_frame = 1;$(13_10)$(13_10)var xx = x-x_offset;$(13_10)var yy = y-y_offset;$(13_10)$(13_10)//Increment frame for animation$(13_10)if(x_frame  + (anim_speed/60) < anim_length) x_frame += anim_speed/60;$(13_10)else						 x_frame = 0;$(13_10)$(13_10)//Draw Shadow$(13_10)draw_sprite(spr_character_shadow, 0, x, y+14)$(13_10)$(13_10)//Draw Character Base$(13_10)if(spr_animal != -1) draw_sprite_part(spr_animal, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);"
var anim_length = 3;
var frame_size = 48;
var anim_speed = 12;

//If moving, animate
if(moveX = -spd) y_frame = 1;
else if(moveX = spd) y_frame = 2;
else if(moveY = -spd) y_frame = 3;
else if(moveY = spd) y_frame = 0;
else x_frame = 1;

var xx = x-x_offset;
var yy = y-y_offset;

//Increment frame for animation
if(x_frame  + (anim_speed/60) < anim_length) x_frame += anim_speed/60;
else						 x_frame = 0;

//Draw Shadow
draw_sprite(spr_character_shadow, 0, x, y+14)

//Draw Character Base
if(spr_animal != -1) draw_sprite_part(spr_animal, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);