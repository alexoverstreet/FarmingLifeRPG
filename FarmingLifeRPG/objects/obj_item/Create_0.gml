/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A951A8D
/// @DnDArgument : "code" "cell_size = 32;$(13_10)item_spr = spr_inventory_items;$(13_10)spr_width = sprite_get_width(item_spr);$(13_10)spr_height = sprite_get_height(item_spr);$(13_10)$(13_10)item_num = -1;$(13_10)x_frame = 0;$(13_10)y_frame = 0;$(13_10)$(13_10)x_offset = cell_size/2;$(13_10)y_offset = cell_size*(2/3);$(13_10)$(13_10)drop_move = true;$(13_10)var itemdir = irandom_range(0, 359);$(13_10)var len     = 32;$(13_10)goal_x      = x + lengthdir_x(len, itemdir);$(13_10)goal_y      = y + lengthdir_y(len, itemdir);"
cell_size = 32;
item_spr = spr_inventory_items;
spr_width = sprite_get_width(item_spr);
spr_height = sprite_get_height(item_spr);

item_num = -1;
x_frame = 0;
y_frame = 0;

x_offset = cell_size/2;
y_offset = cell_size*(2/3);

drop_move = true;
var itemdir = irandom_range(0, 359);
var len     = 32;
goal_x      = x + lengthdir_x(len, itemdir);
goal_y      = y + lengthdir_y(len, itemdir);