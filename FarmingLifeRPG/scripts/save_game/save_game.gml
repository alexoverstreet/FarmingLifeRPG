/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1565870F
/// @DnDArgument : "code" "if(file_exists("Save1.sav")) { file_delete("Save1.sav"); }$(13_10)$(13_10)ini_open("Save1.sav");$(13_10)$(13_10)var SavedRoom = base64_encode(string(room));$(13_10)$(13_10)ini_write_string("Save1", "room", SavedRoom);$(13_10)$(13_10)ini_close();"
if(file_exists("Save1.sav")) { file_delete("Save1.sav"); }

ini_open("Save1.sav");

var SavedRoom = base64_encode(string(room));

ini_write_string("Save1", "room", SavedRoom);

ini_close();