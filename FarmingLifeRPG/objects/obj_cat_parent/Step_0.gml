/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1E31DA67
/// @DnDArgument : "code" "if collision_circle(x, y-20, 50, select, false, true){$(13_10)	if collision_circle(x, y-20, 50, obj_player, false, true){$(13_10)		if(mouse_check_button_pressed(mb_left)){$(13_10)			moveX = 0;$(13_10)			moveY = 0;$(13_10)			if(Textbox == noone) {$(13_10)					Textbox = instance_create_layer(x,y,"Text",obj_textbox);$(13_10)					Textbox.text = myText;$(13_10)					Textbox.creator = self;$(13_10)					Textbox.name = myName;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)} else {$(13_10)	if(Textbox != noone){$(13_10)		instance_destroy(Textbox);$(13_10)		Textbox = noone;$(13_10)	}$(13_10)}$(13_10)$(13_10)//LEFT$(13_10)if(moveX = -spd) if(place_free(x - collisionSpeed, y )) { $(13_10)	x += moveX;$(13_10)}$(13_10)$(13_10)//RIGHT$(13_10)if(moveX = spd) if(place_free(x + collisionSpeed, y )) {$(13_10)	x += moveX;$(13_10)}$(13_10)$(13_10)//UP$(13_10)if(moveY = -spd) if(place_free(x, y - collisionSpeed)) { $(13_10)	y += moveY;$(13_10)}$(13_10)$(13_10)//DOWN$(13_10)if(moveY = spd) if(place_free(x, y + collisionSpeed)) {$(13_10)	y += moveY;$(13_10)}$(13_10)$(13_10)"
if collision_circle(x, y-20, 50, select, false, true){
	if collision_circle(x, y-20, 50, obj_player, false, true){
		if(mouse_check_button_pressed(mb_left)){
			moveX = 0;
			moveY = 0;
			if(Textbox == noone) {
					Textbox = instance_create_layer(x,y,"Text",obj_textbox);
					Textbox.text = myText;
					Textbox.creator = self;
					Textbox.name = myName;
			}
		}
	}
} else {
	if(Textbox != noone){
		instance_destroy(Textbox);
		Textbox = noone;
	}
}

//LEFT
if(moveX = -spd) if(place_free(x - collisionSpeed, y )) { 
	x += moveX;
}

//RIGHT
if(moveX = spd) if(place_free(x + collisionSpeed, y )) {
	x += moveX;
}

//UP
if(moveY = -spd) if(place_free(x, y - collisionSpeed)) { 
	y += moveY;
}

//DOWN
if(moveY = spd) if(place_free(x, y + collisionSpeed)) {
	y += moveY;
}