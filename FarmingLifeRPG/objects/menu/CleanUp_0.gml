/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23670A38
/// @DnDArgument : "code" "var i = 0;$(13_10)var array_len = array_length_1d(menu_pages);$(13_10)repeat(array_len){$(13_10)	ds_grid_destroy(menu_pages[i]);$(13_10)	i++;$(13_10)}"
var i = 0;
var array_len = array_length_1d(menu_pages);
repeat(array_len){
	ds_grid_destroy(menu_pages[i]);
	i++;
}