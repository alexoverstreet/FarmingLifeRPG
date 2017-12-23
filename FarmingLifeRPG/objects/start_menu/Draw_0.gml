/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A1D2DF9
/// @DnDArgument : "code" "#region Options$(13_10)if(!change){$(13_10)	if(keyboard_check_pressed(vk_down)) selected += 1;$(13_10)	if(keyboard_check_pressed(vk_up)) selected -= 1;$(13_10)$(13_10)	if(selected > 3) selected = 1;$(13_10)	if(selected < 1) selected = 3;$(13_10)$(13_10)	switch(selected){$(13_10)		case 1: {$(13_10)			ngc = "> "; $(13_10)			cc = ""; $(13_10)			ec = ""; $(13_10)			if(keyboard_check_pressed(vk_enter)){$(13_10)				room_goto_next();$(13_10)			}$(13_10)			break;$(13_10)		}$(13_10)	$(13_10)		case 2: {$(13_10)			ngc = "";$(13_10)			cc = "> "; $(13_10)			ec = ""; $(13_10)			if(keyboard_check_pressed(vk_enter)){$(13_10)				if(file_exists("Save1.sav")){$(13_10)					load_game();$(13_10)				}$(13_10)			}$(13_10)			break;$(13_10)		}$(13_10)		case 3: $(13_10)		ngc = "";$(13_10)		cc = ""; $(13_10)		ec = "> "; $(13_10)		if(keyboard_check_pressed(vk_enter)){$(13_10)			game_end();$(13_10)		}$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)#endregion$(13_10)$(13_10)#region Naming the Player$(13_10)if(keyboard_check_pressed(vk_escape) and global.name != ""){$(13_10)	change = !change;$(13_10)}$(13_10)$(13_10)if(keyboard_check_pressed(vk_anykey) and change = true){$(13_10)	global.name = keyboard_string;$(13_10)}$(13_10)$(13_10)var line = "|";$(13_10)$(13_10)if (string_length(keyboard_string) >= 8){$(13_10)   keyboard_string = string_copy(keyboard_string, 1, 8);$(13_10)   line = "";$(13_10)} else line = "|";$(13_10)$(13_10)if(!change) line = "";$(13_10)$(13_10)draw_text_font(textWPos, textHPos, fnt_text_24, c_white, ngc + text[0]);$(13_10)draw_text_font(textWPos, textHPos+textMargin, fnt_text_24, c_white, cc + text[1]);$(13_10)draw_text_font(textWPos, textHPos+(textMargin*2), fnt_text_24, c_white, ec + text[2]);$(13_10)$(13_10)alpha = Wave(.2, .8, 1, 0);$(13_10)$(13_10)draw_sprite(spr_enter, 0, width, height);$(13_10)$(13_10)if(change) draw_set_alpha(alpha);$(13_10)else draw_set_alpha(1);$(13_10)$(13_10)draw_text_font(width-80, height-80, fnt_text_24, c_white, "Enter Name");$(13_10)$(13_10)draw_set_alpha(1);$(13_10)$(13_10)draw_text_font(width-180, height-40, fnt_text_24, c_white, global.name + line);$(13_10)#endregion"
#region Options
if(!change){
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
}
#endregion

#region Naming the Player
if(keyboard_check_pressed(vk_escape) and global.name != ""){
	change = !change;
}

if(keyboard_check_pressed(vk_anykey) and change = true){
	global.name = keyboard_string;
}

var line = "|";

if (string_length(keyboard_string) >= 8){
   keyboard_string = string_copy(keyboard_string, 1, 8);
   line = "";
} else line = "|";

if(!change) line = "";

draw_text_font(textWPos, textHPos, fnt_text_24, c_white, ngc + text[0]);
draw_text_font(textWPos, textHPos+textMargin, fnt_text_24, c_white, cc + text[1]);
draw_text_font(textWPos, textHPos+(textMargin*2), fnt_text_24, c_white, ec + text[2]);

alpha = Wave(.2, .8, 1, 0);

draw_sprite(spr_enter, 0, width, height);

if(change) draw_set_alpha(alpha);
else draw_set_alpha(1);

draw_text_font(width-80, height-80, fnt_text_24, c_white, "Enter Name");

draw_set_alpha(1);

draw_text_font(width-180, height-40, fnt_text_24, c_white, global.name + line);
#endregion