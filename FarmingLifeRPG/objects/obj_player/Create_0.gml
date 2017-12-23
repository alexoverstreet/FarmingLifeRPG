/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3759E47F
/// @DnDArgument : "code" "global.pause        = false;$(13_10)global.key_up		= ord("W");$(13_10)global.key_down		= ord("S");$(13_10)global.key_left		= ord("A");$(13_10)global.key_right	= ord("D");$(13_10)$(13_10)canMove = true;$(13_10)$(13_10)w_speed = 0.8;$(13_10)n_speed = 1.1;$(13_10)r_speed = 1.12;$(13_10)spd = n_speed;$(13_10)$(13_10)walking = false;$(13_10)running = false;$(13_10)$(13_10)collisionSpeed = spd*2.5;$(13_10)$(13_10)x_frame = 0;$(13_10)y_frame = 10;$(13_10)$(13_10)x_offset = sprite_get_xoffset(mask_index);$(13_10)y_offset = sprite_get_yoffset(mask_index);$(13_10)$(13_10)enum MFeet {$(13_10)	brown = spr_feet_male_brown,$(13_10)	black = spr_feet_male_black,$(13_10)	maroon = spr_feet_male_maroon$(13_10)}$(13_10)$(13_10)spr_shadow = 1;$(13_10)spr_base = spr_base_male_light;$(13_10)spr_feet = MFeet.brown;$(13_10)spr_legs = spr_legs_male_teal;$(13_10)spr_torso = spr_torso_male_longsleeve_white;$(13_10)spr_hair = spr_hair_male_messy_brown;"
global.pause        = false;
global.key_up		= ord("W");
global.key_down		= ord("S");
global.key_left		= ord("A");
global.key_right	= ord("D");

canMove = true;

w_speed = 0.8;
n_speed = 1.1;
r_speed = 1.12;
spd = n_speed;

walking = false;
running = false;

collisionSpeed = spd*2.5;

x_frame = 0;
y_frame = 10;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

enum MFeet {
	brown = spr_feet_male_brown,
	black = spr_feet_male_black,
	maroon = spr_feet_male_maroon
}

spr_shadow = 1;
spr_base = spr_base_male_light;
spr_feet = MFeet.brown;
spr_legs = spr_legs_male_teal;
spr_torso = spr_torso_male_longsleeve_white;
spr_hair = spr_hair_male_messy_brown;