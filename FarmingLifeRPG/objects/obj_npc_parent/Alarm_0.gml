/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08D451A7
/// @DnDArgument : "code" "moveX = 0;$(13_10)moveY = 0;$(13_10)$(13_10)var idle = choose(false, true);$(13_10)if(idle == false){$(13_10)	var dir = choose(1,2,3,4);$(13_10)	switch(dir) {$(13_10)		case 1: moveX = -spd; break;$(13_10)		case 2: moveX = spd; break;$(13_10)		case 3: moveY = -spd; break;$(13_10)		case 4: moveY = spd; break;$(13_10)	}$(13_10)}$(13_10)$(13_10)alarm[0] = random_range(3, 4)*60;"
moveX = 0;
moveY = 0;

var idle = choose(false, true);
if(idle == false){
	var dir = choose(1,2,3,4);
	switch(dir) {
		case 1: moveX = -spd; break;
		case 2: moveX = spd; break;
		case 3: moveY = -spd; break;
		case 4: moveY = spd; break;
	}
}

alarm[0] = random_range(3, 4)*60;