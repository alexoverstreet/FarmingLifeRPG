/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0BA2BD64
/// @DnDArgument : "code" "var anim_length = 9;$(13_10)var frame_size = 64;$(13_10)var anim_speed = 12;$(13_10)$(13_10)//If moving, animate$(13_10)if(moveX = -spd) y_frame = 9;$(13_10)else if(moveX = spd) y_frame = 11;$(13_10)else if(moveY = -spd) y_frame = 8;$(13_10)else if(moveY = spd) y_frame = 10;$(13_10)else x_frame = 0;$(13_10)$(13_10)var xx = x-x_offset;$(13_10)var yy = y-y_offset;$(13_10)$(13_10)//Increment frame for animation$(13_10)if(x_frame  + (anim_speed/60) < anim_length) x_frame += anim_speed/60;$(13_10)else						 x_frame = 0;$(13_10)$(13_10)//Draw Shadow$(13_10)if(spr_shadow != -1) draw_sprite(spr_character_shadow, 0, x, y)$(13_10)$(13_10)//Draw Character Base$(13_10)if(spr_base != -1) draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Feet$(13_10)if(spr_feet != -1) draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Legs$(13_10)if(spr_legs != -1) draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Torso$(13_10)if(spr_torso != -1) draw_sprite_part(spr_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Over Torso$(13_10)if(spr_over_torso != -1) draw_sprite_part(spr_over_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Hair$(13_10)if(spr_hair != -1) draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);"
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

//If moving, animate
if(moveX = -spd) y_frame = 9;
else if(moveX = spd) y_frame = 11;
else if(moveY = -spd) y_frame = 8;
else if(moveY = spd) y_frame = 10;
else x_frame = 0;

var xx = x-x_offset;
var yy = y-y_offset;

//Increment frame for animation
if(x_frame  + (anim_speed/60) < anim_length) x_frame += anim_speed/60;
else						 x_frame = 0;

//Draw Shadow
if(spr_shadow != -1) draw_sprite(spr_character_shadow, 0, x, y)

//Draw Character Base
if(spr_base != -1) draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Feet
if(spr_feet != -1) draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Legs
if(spr_legs != -1) draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Torso
if(spr_torso != -1) draw_sprite_part(spr_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Over Torso
if(spr_over_torso != -1) draw_sprite_part(spr_over_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Hair
if(spr_hair != -1) draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);