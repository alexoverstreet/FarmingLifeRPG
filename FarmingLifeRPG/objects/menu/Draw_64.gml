/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 76906AF0
/// @DnDArgument : "code" "if (!global.pause) { exit; }$(13_10)$(13_10)var gw = global.view_width, gh = global.view_height;$(13_10)$(13_10)var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);$(13_10)var ybuff = 48, xbuff = 16;$(13_10)var start_y = (gh/2) - ((((ds_height-1)/2) * ybuff)), start_x = gw/2;$(13_10)$(13_10)//Draw Pause Menu$(13_10)var c = c_black;$(13_10)draw_rectangle_color(0, 0, gw, gh, c,c,c,c, false);$(13_10)$(13_10)//Draw Elements on Left$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_halign(fa_right);$(13_10)draw_set_font(fnt_text_24);$(13_10)$(13_10)var ltx = start_x - xbuff, lty, xo = 0;$(13_10)$(13_10)var yy = 0; repeat(ds_height){$(13_10)	lty = start_y + (yy*ybuff);$(13_10)	c = c_white;$(13_10)	$(13_10)	if(yy == menu_option[page]) {$(13_10)		c = c_orange;$(13_10)		xo = -(xbuff/2);$(13_10)	}$(13_10)	$(13_10)	draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c,c,c,c,1);$(13_10)	yy++;$(13_10)}$(13_10)$(13_10)//Draw Dividing Line$(13_10)draw_line(start_x, start_y-ybuff, start_x, lty+ybuff);$(13_10)$(13_10)//Draw Elements on Right$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)var rtx = start_x + xbuff, rty;$(13_10)$(13_10)yy = 0; repeat(ds_height){$(13_10)	rty = start_y + (yy*ybuff);$(13_10)	$(13_10)	switch(ds_grid[# 1, yy]){$(13_10)		case menu_element_type.shift:$(13_10)		var current_val = ds_grid[# 3, yy];$(13_10)		var current_array = ds_grid[# 4, yy];$(13_10)		var left_shift = "<< ";$(13_10)		var right_shift = " >>";$(13_10)		$(13_10)		if(current_val == 0) left_shift = "";$(13_10)		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = ""; $(13_10)		$(13_10)		c = c_white;$(13_10)		$(13_10)		draw_text_color(rtx, rty, left_shift+current_array[current_val]+right_shift, c,c,c,c, 1);$(13_10)		$(13_10)	break;$(13_10)	$(13_10)	case menu_element_type.slider:$(13_10)		var len = 64;$(13_10)		var current_val = ds_grid[# 3, yy];$(13_10)		var current_array = ds_grid[# 4, yy];$(13_10)		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));$(13_10)		c = c_white;$(13_10)		$(13_10)		draw_line_width(rtx, rty, rtx + len, rty, 2);$(13_10)		draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);$(13_10)		draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100))+"%", c,c,c,c, 1);$(13_10)	break;$(13_10)	$(13_10)	case menu_element_type.toggle:$(13_10)		var current_val = ds_grid[# 3, yy];$(13_10)		var c1, c2;$(13_10)		c = c_white;$(13_10)		$(13_10)		if(current_val == 0) { c1 = c; c2 = c_dkgray; }$(13_10)		else { c1 = c_dkgray; c2 = c; }$(13_10)	$(13_10)		draw_text_color(rtx, rty, "ON", c1,c1,c1,c1, 1);$(13_10)		draw_text_color(rtx + 64, rty, "OFF", c2,c2,c2,c2, 1);	$(13_10)	break;$(13_10)	$(13_10)	case menu_element_type.input:$(13_10)		var current_val = ds_grid[# 3, yy];$(13_10)		var string_val;$(13_10)		$(13_10)		switch(current_val){$(13_10)			 case vk_up: string_val = "W"; break;$(13_10)			 case vk_down: string_val = "S"; break;$(13_10)			 case vk_left: string_val = "A"; break;$(13_10)			 case vk_right: string_val = "D"; break;$(13_10)			 default: string_val = chr(current_val); break;$(13_10)		}$(13_10)	$(13_10)		c = c_white;$(13_10)		draw_text_color(rtx, rty, string_val, c,c,c,c, 1);$(13_10)		$(13_10)	break;$(13_10)	}$(13_10)	$(13_10)	yy ++;$(13_10)}$(13_10)$(13_10)draw_set_valign(fa_top);$(13_10)draw_set_halign(fa_left);$(13_10)"
if (!global.pause) { exit; }

var gw = global.view_width, gh = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var ybuff = 48, xbuff = 16;
var start_y = (gh/2) - ((((ds_height-1)/2) * ybuff)), start_x = gw/2;

//Draw Pause Menu
var c = c_black;
draw_rectangle_color(0, 0, gw, gh, c,c,c,c, false);

//Draw Elements on Left
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_set_font(fnt_text_24);

var ltx = start_x - xbuff, lty, xo = 0;

var yy = 0; repeat(ds_height){
	lty = start_y + (yy*ybuff);
	c = c_white;
	
	if(yy == menu_option[page]) {
		c = c_orange;
		xo = -(xbuff/2);
	}
	
	draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c,c,c,c,1);
	yy++;
}

//Draw Dividing Line
draw_line(start_x, start_y-ybuff, start_x, lty+ybuff);

//Draw Elements on Right
draw_set_halign(fa_left);

var rtx = start_x + xbuff, rty;

yy = 0; repeat(ds_height){
	rty = start_y + (yy*ybuff);
	
	switch(ds_grid[# 1, yy]){
		case menu_element_type.shift:
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var left_shift = "<< ";
		var right_shift = " >>";
		
		if(current_val == 0) left_shift = "";
		if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = ""; 
		
		c = c_white;
		
		draw_text_color(rtx, rty, left_shift+current_array[current_val]+right_shift, c,c,c,c, 1);
		
	break;
	
	case menu_element_type.slider:
		var len = 64;
		var current_val = ds_grid[# 3, yy];
		var current_array = ds_grid[# 4, yy];
		var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
		c = c_white;
		
		draw_line_width(rtx, rty, rtx + len, rty, 2);
		draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
		draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100))+"%", c,c,c,c, 1);
	break;
	
	case menu_element_type.toggle:
		var current_val = ds_grid[# 3, yy];
		var c1, c2;
		c = c_white;
		
		if(current_val == 0) { c1 = c; c2 = c_dkgray; }
		else { c1 = c_dkgray; c2 = c; }
	
		draw_text_color(rtx, rty, "ON", c1,c1,c1,c1, 1);
		draw_text_color(rtx + 64, rty, "OFF", c2,c2,c2,c2, 1);	
	break;
	
	case menu_element_type.input:
		var current_val = ds_grid[# 3, yy];
		var string_val;
		
		switch(current_val){
			 case vk_up: string_val = "W"; break;
			 case vk_down: string_val = "S"; break;
			 case vk_left: string_val = "A"; break;
			 case vk_right: string_val = "D"; break;
			 default: string_val = chr(current_val); break;
		}
	
		c = c_white;
		draw_text_color(rtx, rty, string_val, c,c,c,c, 1);
		
	break;
	}
	
	yy ++;
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);