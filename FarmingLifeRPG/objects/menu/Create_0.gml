/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 203F5D52
/// @DnDArgument : "code" "global.pause			= false;$(13_10)global.view_width	= camera_get_view_width(view_camera[0]);$(13_10)global.view_height	= camera_get_view_height(view_camera[0]);$(13_10)$(13_10)global.key_revert	= ord("X");$(13_10)global.key_enter	= vk_enter;$(13_10)global.key_up		= ord("W");$(13_10)global.key_down		= ord("S");$(13_10)global.key_left		= ord("A");$(13_10)global.key_right	= ord("D");$(13_10)$(13_10)display_set_gui_size(global.view_width, global.view_height);$(13_10)$(13_10)enum menu_page {$(13_10)	main,$(13_10)	settings,$(13_10)	audio,$(13_10)	graphics,$(13_10)	controls,$(13_10)	height$(13_10)}$(13_10)$(13_10)enum menu_element_type {$(13_10)	script_runner = 0,$(13_10)	page_transfer = 1,$(13_10)	slider = 2,$(13_10)	shift = 3,$(13_10)	toggle = 4,$(13_10)	input = 5$(13_10)}$(13_10)$(13_10)ds_menu_main = create_menu_page($(13_10)	["RESUME", menu_element_type.script_runner, resume_game],$(13_10)	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],$(13_10)	["EXIT", menu_element_type.script_runner, exit_game]$(13_10));$(13_10)$(13_10)ds_settings = create_menu_page($(13_10)	["AUDIO", menu_element_type.page_transfer, menu_page.audio],$(13_10)	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],$(13_10)	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],$(13_10)	["BACK", menu_element_type.page_transfer, menu_page.main]$(13_10));$(13_10)$(13_10)ds_menu_audio = create_menu_page($(13_10)	["MASTER", menu_element_type.slider, change_volume, 1, [0,1]],$(13_10)	["SOUNDS", menu_element_type.slider, change_volume, 1, [0,1]],$(13_10)	["MUSIC", menu_element_type.slider, change_volume, 1, [0,1]],$(13_10)	["BACK", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)ds_menu_graphics = create_menu_page($(13_10)	["RESOLUTION", menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],$(13_10)	["WINDOW MODE", menu_element_type.toggle, change_window_mode, 1, ["FULLSCREEN", "WINDOWED"]],$(13_10)	["BACK", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)ds_menu_controls = create_menu_page($(13_10)	["UP", menu_element_type.input, "key_up", global.key_up],$(13_10)	["DOWN", menu_element_type.input, "key_down", global.key_down],$(13_10)	["LEFT", menu_element_type.input, "key_left", global.key_left],$(13_10)	["RIGHT", menu_element_type.input, "key_right", global.key_right],$(13_10)	["BACK", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)page = 0;$(13_10)menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_graphics, ds_menu_controls];$(13_10)$(13_10)var i = 0, array_len = array_length_1d(menu_pages);$(13_10)repeat(array_len){$(13_10)	menu_option[i] = 0;$(13_10)	i++;$(13_10)}$(13_10)$(13_10)"
global.pause			= false;
global.view_width	= camera_get_view_width(view_camera[0]);
global.view_height	= camera_get_view_height(view_camera[0]);

global.key_revert	= ord("X");
global.key_enter	= vk_enter;
global.key_up		= ord("W");
global.key_down		= ord("S");
global.key_left		= ord("A");
global.key_right	= ord("D");

display_set_gui_size(global.view_width, global.view_height);

enum menu_page {
	main,
	settings,
	audio,
	graphics,
	controls,
	height
}

enum menu_element_type {
	script_runner = 0,
	page_transfer = 1,
	slider = 2,
	shift = 3,
	toggle = 4,
	input = 5
}

ds_menu_main = create_menu_page(
	["RESUME", menu_element_type.script_runner, resume_game],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT", menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
	["AUDIO", menu_element_type.page_transfer, menu_page.audio],
	["GRAPHICS", menu_element_type.page_transfer, menu_page.graphics],
	["CONTROLS", menu_element_type.page_transfer, menu_page.controls],
	["BACK", menu_element_type.page_transfer, menu_page.main]
);

ds_menu_audio = create_menu_page(
	["MASTER", menu_element_type.slider, change_volume, 1, [0,1]],
	["SOUNDS", menu_element_type.slider, change_volume, 1, [0,1]],
	["MUSIC", menu_element_type.slider, change_volume, 1, [0,1]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_graphics = create_menu_page(
	["RESOLUTION", menu_element_type.shift, change_resolution, 0, ["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
	["WINDOW MODE", menu_element_type.toggle, change_window_mode, 1, ["FULLSCREEN", "WINDOWED"]],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

ds_menu_controls = create_menu_page(
	["UP", menu_element_type.input, "key_up", global.key_up],
	["DOWN", menu_element_type.input, "key_down", global.key_down],
	["LEFT", menu_element_type.input, "key_left", global.key_left],
	["RIGHT", menu_element_type.input, "key_right", global.key_right],
	["BACK", menu_element_type.page_transfer, menu_page.settings]
);

page = 0;
menu_pages = [ds_menu_main, ds_settings, ds_menu_audio, ds_menu_graphics, ds_menu_controls];

var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}