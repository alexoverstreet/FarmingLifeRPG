/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59FED661
/// @DnDArgument : "code" "if(!global.pause and canMove){$(13_10)#region MOVING IN ALL DIRECTIONS$(13_10)right = keyboard_check_direct(global.key_right);$(13_10)left = keyboard_check_direct(global.key_left);$(13_10)up = keyboard_check_direct(global.key_up);$(13_10)down = keyboard_check_direct(global.key_down);$(13_10)walk = keyboard_check_direct(vk_control);$(13_10)run = keyboard_check_direct(vk_shift);$(13_10)$(13_10)if(walk and run) walking = false; running = false;$(13_10)if(!walk) walking = false;$(13_10)if(!run) running = false;$(13_10)$(13_10)//WALK$(13_10)if(walk) {$(13_10)	if right and place_free(x + collisionSpeed, y) x += w_speed;$(13_10)	if left and place_free(x - collisionSpeed, y ) x -= w_speed;$(13_10)	if up and place_free(x, y - collisionSpeed)    y -= w_speed;$(13_10)	if down and place_free(x, y + collisionSpeed)  y += w_speed;$(13_10)	walking = true;$(13_10)}$(13_10)$(13_10)//NORMAL$(13_10)if(!walking and !running) {$(13_10)	if right and place_free(x + collisionSpeed, y) x += spd;$(13_10)	if left and place_free(x - collisionSpeed, y ) x -= spd;$(13_10)	if up and place_free(x, y - collisionSpeed) y -= spd;$(13_10)	if down and place_free(x, y + collisionSpeed) y += spd;$(13_10)}$(13_10)$(13_10)//SPRINT$(13_10)if(run) {$(13_10)	if right and place_free(x + collisionSpeed, y) x += r_speed;$(13_10)	if left and place_free(x - collisionSpeed, y ) x -= r_speed;$(13_10)	if up and place_free(x, y - collisionSpeed)    y -= r_speed;$(13_10)	if down and place_free(x, y + collisionSpeed)  y += r_speed;$(13_10)	running = true;$(13_10)}$(13_10)#endregion$(13_10)$(13_10)#region SWITCHING ROOMS$(13_10)var inst = instance_place(x, y, obj_transitions);$(13_10)if(inst != noone) {$(13_10)		with(game) {$(13_10)			if(!doTransition) {$(13_10)				spawnRoom = inst.targetRoom;$(13_10)				spawnX = inst.targetX;$(13_10)				spawnY = inst.targetY;$(13_10)				doTransition = true;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)#endregion$(13_10)$(13_10)if (mouse_check_button_pressed(mb_right)){$(13_10)    instance_create_layer(mouse_x, mouse_y, "Instances", obj_item);$(13_10)}$(13_10)"
if(!global.pause and canMove){
#region MOVING IN ALL DIRECTIONS
right = keyboard_check_direct(global.key_right);
left = keyboard_check_direct(global.key_left);
up = keyboard_check_direct(global.key_up);
down = keyboard_check_direct(global.key_down);
walk = keyboard_check_direct(vk_control);
run = keyboard_check_direct(vk_shift);

if(walk and run) walking = false; running = false;
if(!walk) walking = false;
if(!run) running = false;

//WALK
if(walk) {
	if right and place_free(x + collisionSpeed, y) x += w_speed;
	if left and place_free(x - collisionSpeed, y ) x -= w_speed;
	if up and place_free(x, y - collisionSpeed)    y -= w_speed;
	if down and place_free(x, y + collisionSpeed)  y += w_speed;
	walking = true;
}

//NORMAL
if(!walking and !running) {
	if right and place_free(x + collisionSpeed, y) x += spd;
	if left and place_free(x - collisionSpeed, y ) x -= spd;
	if up and place_free(x, y - collisionSpeed) y -= spd;
	if down and place_free(x, y + collisionSpeed) y += spd;
}

//SPRINT
if(run) {
	if right and place_free(x + collisionSpeed, y) x += r_speed;
	if left and place_free(x - collisionSpeed, y ) x -= r_speed;
	if up and place_free(x, y - collisionSpeed)    y -= r_speed;
	if down and place_free(x, y + collisionSpeed)  y += r_speed;
	running = true;
}
#endregion

#region SWITCHING ROOMS
var inst = instance_place(x, y, obj_transitions);
if(inst != noone) {
		with(game) {
			if(!doTransition) {
				spawnRoom = inst.targetRoom;
				spawnX = inst.targetX;
				spawnY = inst.targetY;
				doTransition = true;
			}
		}
	}
}
#endregion

if (mouse_check_button_pressed(mb_right)){
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_item);
}