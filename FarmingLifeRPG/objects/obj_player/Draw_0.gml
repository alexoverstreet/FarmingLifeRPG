/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 72B33735
/// @DnDArgument : "code" "var anim_length = 9;$(13_10)var frame_size = 64;$(13_10)var anim_speed = 12;$(13_10)$(13_10)if(walk) anim_speed = 7;$(13_10)if(run) anim_speed = 13;$(13_10)$(13_10)//If moving, animate$(13_10)if(keyboard_check_direct(global.key_left)) y_frame = 9;$(13_10)else if(keyboard_check_direct(global.key_right)) y_frame = 11;$(13_10)else if(keyboard_check_direct(global.key_up)) y_frame = 8;$(13_10)else if(keyboard_check_direct(global.key_down)) y_frame = 10;$(13_10)else x_frame = 0;$(13_10)$(13_10)var xx = x-x_offset;$(13_10)var yy = y-y_offset$(13_10)$(13_10)//Increment frame for animation$(13_10)if(x_frame  + (anim_speed/60) < anim_length) x_frame += anim_speed/60;$(13_10)else						 x_frame = 0;$(13_10)$(13_10)//Draw Shadow$(13_10)if(spr_shadow != -1) draw_sprite(spr_character_shadow, 0, x, y)$(13_10)$(13_10)//Draw Character Base$(13_10)draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Feet$(13_10)draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Legs$(13_10)draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Shirt$(13_10)draw_sprite_part(spr_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);$(13_10)$(13_10)//Draw Character Hair$(13_10)draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);"
var anim_length = 9;
var frame_size = 64;
var anim_speed = 12;

if(walk) anim_speed = 7;
if(run) anim_speed = 13;

//If moving, animate
if(keyboard_check_direct(global.key_left)) y_frame = 9;
else if(keyboard_check_direct(global.key_right)) y_frame = 11;
else if(keyboard_check_direct(global.key_up)) y_frame = 8;
else if(keyboard_check_direct(global.key_down)) y_frame = 10;
else x_frame = 0;

var xx = x-x_offset;
var yy = y-y_offset

//Increment frame for animation
if(x_frame  + (anim_speed/60) < anim_length) x_frame += anim_speed/60;
else						 x_frame = 0;

//Draw Shadow
if(spr_shadow != -1) draw_sprite(spr_character_shadow, 0, x, y)

//Draw Character Base
draw_sprite_part(spr_base, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Feet
draw_sprite_part(spr_feet, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Legs
draw_sprite_part(spr_legs, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Shirt
draw_sprite_part(spr_torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

//Draw Character Hair
draw_sprite_part(spr_hair, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);