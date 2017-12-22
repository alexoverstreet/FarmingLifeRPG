/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79EE1F41
/// @DnDArgument : "code" "draw_sprite_part($(13_10)	spr_crops, 0, growthStage*frameWidth, $(13_10)	cropType*frameHeight, 32, 64, xx,yy$(13_10));$(13_10)$(13_10)//Draw the sparkle$(13_10)if(sparkle >= 0){$(13_10)	sparkle += .1;$(13_10)	draw_sprite(spr_sparkle, -1, x, y);$(13_10)	if(sparkle >= sprite_get_number(spr_sparkle)){$(13_10)		sparkle = -1;$(13_10)		alarm[1] = random_range(4,5)*room_speed;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)	"
draw_sprite_part(
	spr_crops, 0, growthStage*frameWidth, 
	cropType*frameHeight, 32, 64, xx,yy
);

//Draw the sparkle
if(sparkle >= 0){
	sparkle += .1;
	draw_sprite(spr_sparkle, -1, x, y);
	if(sparkle >= sprite_get_number(spr_sparkle)){
		sparkle = -1;
		alarm[1] = random_range(4,5)*room_speed;
	}
}