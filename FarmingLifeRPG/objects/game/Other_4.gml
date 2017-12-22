/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4639B693
/// @DnDArgument : "code" "roomWidth = room_width;$(13_10)roomHeight = room_height;$(13_10)$(13_10)if(spawnRoom != -1){$(13_10)	obj_player.x = spawnX;$(13_10)	obj_player.y = spawnY;$(13_10)}"
roomWidth = room_width;
roomHeight = room_height;

if(spawnRoom != -1){
	obj_player.x = spawnX;
	obj_player.y = spawnY;
}