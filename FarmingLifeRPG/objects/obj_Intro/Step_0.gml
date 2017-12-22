/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60BF5BD6
/// @DnDArgument : "code" "camera_set_view_pos(view_camera[0], xpos, 180);$(13_10)xpos = max(xpos-0.3, 0);$(13_10)$(13_10)if(!fadeout){ $(13_10)	   a = max(a-0.005, 0.25); $(13_10)} else a = min(a+0.005, 1);$(13_10)$(13_10)l += 0.5;$(13_10)$(13_10)print = string_copy(str, 1, l);$(13_10)if(l > string_length(str)+100) && (next < array_length_1d(strings)-1){$(13_10)	l = 0;$(13_10)	next++;$(13_10)	if(next == array_length_1d(strings)-1) holdspace++;$(13_10)}$(13_10)$(13_10)str = strings[next];$(13_10)$(13_10)if(keyboard_check_direct(vk_space)){$(13_10)	holdspace++;$(13_10)}$(13_10)$(13_10)if(holdspace > 60) or (xpos < 100){$(13_10)	fadeout = 1;$(13_10)}$(13_10)$(13_10)if(a == 1) && (fadeout == 1) room_goto_next();"
camera_set_view_pos(view_camera[0], xpos, 180);
xpos = max(xpos-0.3, 0);

if(!fadeout){ 
	   a = max(a-0.005, 0.25); 
} else a = min(a+0.005, 1);

l += 0.5;

print = string_copy(str, 1, l);
if(l > string_length(str)+100) && (next < array_length_1d(strings)-1){
	l = 0;
	next++;
	if(next == array_length_1d(strings)-1) holdspace++;
}

str = strings[next];

if(keyboard_check_direct(vk_space)){
	holdspace++;
}

if(holdspace > 60) or (xpos < 100){
	fadeout = 1;
}

if(a == 1) && (fadeout == 1) room_goto_next();