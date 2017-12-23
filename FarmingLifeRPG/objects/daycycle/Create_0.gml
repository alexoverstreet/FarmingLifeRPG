/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DA6EC42
/// @DnDArgument : "code" "seconds = 0;$(13_10)minutes = 0;$(13_10)hours = 0;$(13_10)$(13_10)day = 1;$(13_10)season = 1;$(13_10)year = 1;$(13_10)$(13_10)time_increment = 200;	//second per step$(13_10)speedTime = false;$(13_10)time_pause = false;$(13_10)$(13_10)max_darkness = 0.7;$(13_10)darkness = 0;$(13_10)light_color = c_black;$(13_10)draw_daylight = false;$(13_10)$(13_10)guiWidth = room_width*2;$(13_10)guiHeight = room_height;$(13_10)$(13_10)enum phase {$(13_10)	sunrise = 6,$(13_10)	daytime = 8.5,$(13_10)	sunset = 18,$(13_10)	nighttime = 22$(13_10)}$(13_10)$(13_10)enum season {$(13_10)	spring = 1,$(13_10)	summer = 2,$(13_10)	autumn = 3,$(13_10)	winter = 4$(13_10)}$(13_10)$(13_10)//seasonNames = ds_list_create();$(13_10)//seasonNames(season.spring, "spring");$(13_10)//seasonNames(season.summer, "summer");$(13_10)//seasonNames(season.autumn, "autumn");$(13_10)//seasonNames(season.winter, "winter");$(13_10)$(13_10)drawMinutes = 0;$(13_10)drawZero = "0";"
seconds = 0;
minutes = 0;
hours = 0;

day = 1;
season = 1;
year = 1;

time_increment = 200;	//second per step
speedTime = false;
time_pause = false;

max_darkness = 0.7;
darkness = 0;
light_color = c_black;
draw_daylight = false;

guiWidth = room_width*2;
guiHeight = room_height;

enum phase {
	sunrise = 6,
	daytime = 8.5,
	sunset = 18,
	nighttime = 22
}

enum season {
	spring = 1,
	summer = 2,
	autumn = 3,
	winter = 4
}

//seasonNames = ds_list_create();
//seasonNames(season.spring, "spring");
//seasonNames(season.summer, "summer");
//seasonNames(season.autumn, "autumn");
//seasonNames(season.winter, "winter");

drawMinutes = 0;
drawZero = "0";