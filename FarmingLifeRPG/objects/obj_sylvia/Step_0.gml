/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 027FDD28
/// @DnDArgument : "code" "event_inherited();$(13_10)if(Textbox == noone) myText[0] = choose("You new around here?", "Ew, you're a farmer.");$(13_10)$(13_10)switch myText[0]{$(13_10)	case "You new around here?": myText[1] = ""; break;$(13_10)	case "Ew, you're a farmer.": myText[1] = ""; break;$(13_10)	default: myText[1] = "";$(13_10)}"
event_inherited();
if(Textbox == noone) myText[0] = choose("You new around here?", "Ew, you're a farmer.");

switch myText[0]{
	case "You new around here?": myText[1] = ""; break;
	case "Ew, you're a farmer.": myText[1] = ""; break;
	default: myText[1] = "";
}