/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A1D2DF9
/// @DnDArgument : "code" "if(keyboard_check_pressed(vk_down)) selected += 1;$(13_10)if(keyboard_check_pressed(vk_up)) selected -= 1;$(13_10)$(13_10)if(selected > 3) selected = 1;$(13_10)if(selected < 1) selected = 3;$(13_10)$(13_10)switch(selected){$(13_10)	case 1: {$(13_10)		ngc = "> "; $(13_10)		cc = ""; $(13_10)		ec = ""; $(13_10)		if(keyboard_check_pressed(vk_enter)){$(13_10)			room_goto_next();$(13_10)		}$(13_10)		break;$(13_10)	}$(13_10)	$(13_10)	case 2: {$(13_10)		ngc = "";$(13_10)		cc = "> "; $(13_10)		ec = ""; $(13_10)		if(keyboard_check_pressed(vk_enter)){$(13_10)			if(file_exists("Save1.sav")){$(13_10)				load_game();$(13_10)			}$(13_10)		}$(13_10)		break;$(13_10)	}$(13_10)	case 3: $(13_10)	ngc = "";$(13_10)	cc = ""; $(13_10)	ec = "> "; $(13_10)	if(keyboard_check_pressed(vk_enter)){$(13_10)		game_end();$(13_10)	}$(13_10)	break;$(13_10)}$(13_10)$(13_10)draw_text_font(textWPos, textHPos, fnt_text_24, c_white, ngc + text[0]);$(13_10)draw_text_font(textWPos, textHPos+textMargin, fnt_text_24, c_white, cc + text[1]);$(13_10)draw_text_font(textWPos, textHPos+(textMargin*2), fnt_text_24, c_white, ec + text[2]);"
if(keyboard_check_pressed(vk_down)) selected += 1;
if(keyboard_check_pressed(vk_up)) selected -= 1;

if(selected > 3) selected = 1;
if(selected < 1) selected = 3;

switch(selected){
	case 1: {
		ngc = "> "; 
		cc = ""; 
		ec = ""; 
		if(keyboard_check_pressed(vk_enter)){
			room_goto_next();
		}
		break;
	}
	
	case 2: {
		ngc = "";
		cc = "> "; 
		ec = ""; 
		if(keyboard_check_pressed(vk_enter)){
			if(file_exists("Save1.sav")){
				load_game();
			}
		}
		break;
	}
	case 3: 
	ngc = "";
	cc = ""; 
	ec = "> "; 
	if(keyboard_check_pressed(vk_enter)){
		game_end();
	}
	break;
}

draw_text_font(textWPos, textHPos, fnt_text_24, c_white, ngc + text[0]);
draw_text_font(textWPos, textHPos+textMargin, fnt_text_24, c_white, cc + text[1]);
draw_text_font(textWPos, textHPos+(textMargin*2), fnt_text_24, c_white, ec + text[2]);