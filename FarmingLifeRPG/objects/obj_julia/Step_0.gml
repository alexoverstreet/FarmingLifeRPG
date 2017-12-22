/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D0911B6
/// @DnDArgument : "code" "event_inherited();$(13_10)if(Textbox == noone) myText[0] = choose("It is always a lovely day.");$(13_10)$(13_10)switch myText[0]{$(13_10)	case "It is always a lovely day.": myText[1] = "When it is raining, the flowers get water."; break;$(13_10)	default: myText[1] = "";$(13_10)}"
event_inherited();
if(Textbox == noone) myText[0] = choose("It is always a lovely day.");

switch myText[0]{
	case "It is always a lovely day.": myText[1] = "When it is raining, the flowers get water."; break;
	default: myText[1] = "";
}