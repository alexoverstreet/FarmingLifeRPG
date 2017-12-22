/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6EC1AE44
/// @DnDArgument : "code" "x = mouse_x;$(13_10)y = mouse_y;$(13_10)$(13_10)if collision_circle(x, y, 40, obj_npc_parent, false, true) {$(13_10)	if collision_circle(x, y, 40, obj_player, false, true){$(13_10)		window_set_cursor(cr_drag);$(13_10)	}$(13_10)}$(13_10)else { window_set_cursor(cr_default); }$(13_10)"
x = mouse_x;
y = mouse_y;

if collision_circle(x, y, 40, obj_npc_parent, false, true) {
	if collision_circle(x, y, 40, obj_player, false, true){
		window_set_cursor(cr_drag);
	}
}
else { window_set_cursor(cr_default); }