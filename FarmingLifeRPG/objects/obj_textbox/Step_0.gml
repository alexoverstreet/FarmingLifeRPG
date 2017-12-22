/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 36764EA0
/// @DnDArgument : "code" "if(mouse_check_button_pressed(mb_left)){$(13_10)	$(13_10)	if(charCount < string_length(text[page])){$(13_10)		charCount = string_length(text[page])$(13_10)	}$(13_10)	$(13_10)	else if(page +1 < array_length_1d(text)){$(13_10)		page += 1;$(13_10)		charCount = 0;$(13_10)	} else {$(13_10)		instance_destroy();$(13_10)		creator.alarm[1] = 1;$(13_10)	}$(13_10)}"
if(mouse_check_button_pressed(mb_left)){
	
	if(charCount < string_length(text[page])){
		charCount = string_length(text[page])
	}
	
	else if(page +1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else {
		instance_destroy();
		creator.alarm[1] = 1;
	}
}