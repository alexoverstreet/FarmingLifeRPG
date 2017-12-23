/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 064E299F
/// @DnDArgument : "code" "if(doTransition) {$(13_10)	//Handle black fade/room transition$(13_10)	if(room != spawnRoom) {$(13_10)			blackAlpha += 0.1;$(13_10)			if(blackAlpha >= 1) { room_goto(spawnRoom); }$(13_10)		} else {$(13_10)			blackAlpha -= 0.1;$(13_10)			if(blackAlpha <= 0) doTransition = false;$(13_10)		}$(13_10)$(13_10)	//Drawing the black fade$(13_10)	draw_set_alpha(blackAlpha);$(13_10)	draw_rectangle_colour(0, 0, guiWidth, guiHeight, c_black, c_black, c_black, c_black, false)$(13_10)	draw_set_alpha(1);$(13_10)}"
if(doTransition) {
	//Handle black fade/room transition
	if(room != spawnRoom) {
			blackAlpha += 0.1;
			if(blackAlpha >= 1) { room_goto(spawnRoom); }
		} else {
			blackAlpha -= 0.1;
			if(blackAlpha <= 0) doTransition = false;
		}

	//Drawing the black fade
	draw_set_alpha(blackAlpha);
	draw_rectangle_colour(0, 0, guiWidth, guiHeight, c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1);
}