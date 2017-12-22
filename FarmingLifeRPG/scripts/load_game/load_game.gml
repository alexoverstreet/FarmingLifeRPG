/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1CBEEBE3
/// @DnDArgument : "code" "if(file_exists("Save1.sav")){$(13_10)	ini_open("Save1.sav")$(13_10)	$(13_10)	var LoadedRoom = ini_read_string("Save1", "room", "3");$(13_10)	LoadedRoom = real(base64_decode(LoadedRoom));$(13_10)	$(13_10)	ini_close();$(13_10)	room_goto(LoadedRoom);$(13_10)} else {$(13_10)	//nothing$(13_10)}"
if(file_exists("Save1.sav")){
	ini_open("Save1.sav")
	
	var LoadedRoom = ini_read_string("Save1", "room", "3");
	LoadedRoom = real(base64_decode(LoadedRoom));
	
	ini_close();
	room_goto(LoadedRoom);
} else {
	//nothing
}