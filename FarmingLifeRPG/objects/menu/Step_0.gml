/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4760838B
/// @DnDArgument : "code" "if(keyboard_check_pressed(vk_escape)) global.pause = !global.pause;$(13_10)$(13_10)if(!global.pause) exit;$(13_10)$(13_10)input_up_p = keyboard_check_pressed(vk_up);$(13_10)input_down_p = keyboard_check_pressed(vk_down);$(13_10)input_enter_p = keyboard_check_pressed(global.key_enter);$(13_10)$(13_10)var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);$(13_10)$(13_10)var ochange = input_down_p - input_up_p;$(13_10)if(ochange != 0){$(13_10)	menu_option[page] += ochange;$(13_10)	if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }$(13_10)	if(menu_option[page] < 0) { menu_option[page] = ds_height-1; }$(13_10)}$(13_10)$(13_10)if(input_enter_p){$(13_10)	switch(ds_grid[# 1, menu_option[page]]){$(13_10)		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;$(13_10)	}$(13_10)}$(13_10)"
if(keyboard_check_pressed(vk_escape)) global.pause = !global.pause;

if(!global.pause) exit;

input_up_p = keyboard_check_pressed(vk_up);
input_down_p = keyboard_check_pressed(vk_down);
input_enter_p = keyboard_check_pressed(global.key_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_p - input_up_p;
if(ochange != 0){
	menu_option[page] += ochange;
	if(menu_option[page] > ds_height-1) { menu_option[page] = 0; }
	if(menu_option[page] < 0) { menu_option[page] = ds_height-1; }
}

if(input_enter_p){
	switch(ds_grid[# 1, menu_option[page]]){
		case menu_element_type.page_transfer: page = ds_grid[# 2, menu_option[page]]; break;
	}
}