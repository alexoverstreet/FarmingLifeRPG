/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4F0016DD
/// @DnDArgument : "code" "///@desc merge_umber$(13_10)///@arg num1$(13_10)///@arg num2$(13_10)///@arg amount$(13_10)$(13_10)var num1 = argument0;$(13_10)var num2 = argument1;$(13_10)var amount = argument2;$(13_10)$(13_10)var diff = num1 - num2;$(13_10)var merged = num1 - (diff * amount);$(13_10)$(13_10)return merged;"
///@desc merge_umber
///@arg num1
///@arg num2
///@arg amount

var num1 = argument0;
var num2 = argument1;
var amount = argument2;

var diff = num1 - num2;
var merged = num1 - (diff * amount);

return merged;