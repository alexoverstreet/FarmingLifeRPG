/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C3A56A1
/// @DnDArgument : "code" "time_pause = global.pause;$(13_10)$(13_10)draw_daylight = !global.pause;$(13_10)$(13_10)if(time_pause) exit;$(13_10)$(13_10)if(speedTime) time_increment = 1000;$(13_10)else time_increment = 5;$(13_10)$(13_10)if(keyboard_check_pressed(vk_down)) speedTime = !speedTime;$(13_10)$(13_10)//Increment Time$(13_10)seconds += time_increment;$(13_10)minutes = seconds/60;$(13_10)drawMinutes += time_increment/60;$(13_10)hours = minutes/60;$(13_10)$(13_10)if(drawMinutes >= 60) drawMinutes = 0;$(13_10)$(13_10)#region Phases and Variables$(13_10)if(draw_daylight){$(13_10)	var darks, colors, pstart, pend;$(13_10)	if(hours > phase.sunrise and hours <= phase.daytime){ //Sunrise$(13_10)		darks  = [max_darkness, 0.2];$(13_10)		colors = [merge_color(c_black,c_navy,0.3), c_orange];$(13_10)		pstart = phase.sunrise;$(13_10)		pend = phase.daytime;$(13_10)	} else if (hours > phase.daytime and hours <= phase.sunset) { //Day$(13_10)		darks  = [0.2, 0, 0, 0, 0.2];$(13_10)		colors = [c_orange, c_orange, c_white, c_orange, c_orange];$(13_10)		pstart = phase.daytime;$(13_10)		pend = phase.sunset;$(13_10)	} else if (hours > phase.sunset and hours <= phase.nighttime) { //Sunset$(13_10)		darks  = [0.2, max_darkness];$(13_10)		colors = [c_orange, c_navy, merge_color(c_black,c_navy,0.3)];$(13_10)		pstart = phase.sunset;$(13_10)		pend = phase.nighttime;$(13_10)	} else {$(13_10)		darks  = [max_darkness];$(13_10)		colors = [merge_color(c_black,c_navy,0.3)];$(13_10)		pstart = phase.nighttime;$(13_10)		pend = phase.sunrise;$(13_10)	}$(13_10)}$(13_10)#endregion$(13_10)	$(13_10)#region //Colors After Darkness and Colors Depending on Time$(13_10)	if(draw_daylight){$(13_10)		//Colors$(13_10)		if(pstart == phase.nighttime){ light_color = colors[0]; }$(13_10)		else $(13_10)		{$(13_10)			var cc = ((hours - pstart) / (pend - pstart))*(array_length_1d(colors)-1);$(13_10)			var c1 = colors[floor(cc)];$(13_10)			var c2 = colors[ceil(cc)];$(13_10)	$(13_10)		light_color = merge_color(c1, c2, cc - floor(cc));$(13_10)		}$(13_10)	$(13_10)		//Darkness$(13_10)		if(pstart == phase.nighttime){ darkness = darks[0]; }$(13_10)		else$(13_10)		{$(13_10)			var dd = ((hours - pstart) / (pend - pstart))*(array_length_1d(darks)-1);$(13_10)			var d1 = darks[floor(dd)];$(13_10)			var d2 = darks[ceil(dd)];$(13_10)	$(13_10)		darkness = merge_number(d1, d2, dd - floor(dd));$(13_10)		}$(13_10)	}$(13_10)	#endregion$(13_10)	$(13_10)#region Cycle Check$(13_10)if(hours >= 24){$(13_10)	seconds = 0;$(13_10)	day += 1;$(13_10)	with(crops) { event_perform(ev_other, ev_user1) }$(13_10)	if(day > 30){$(13_10)		day = 1;$(13_10)		season += 1;$(13_10)		if(season > 4){$(13_10)			season = 1;$(13_10)			year += 1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)#endregion$(13_10)"
time_pause = global.pause;

draw_daylight = !global.pause;

if(time_pause) exit;

if(speedTime) time_increment = 1000;
else time_increment = 5;

if(keyboard_check_pressed(vk_down)) speedTime = !speedTime;

//Increment Time
seconds += time_increment;
minutes = seconds/60;
drawMinutes += time_increment/60;
hours = minutes/60;

if(drawMinutes >= 60) drawMinutes = 0;

#region Phases and Variables
if(draw_daylight){
	var darks, colors, pstart, pend;
	if(hours > phase.sunrise and hours <= phase.daytime){ //Sunrise
		darks  = [max_darkness, 0.2];
		colors = [merge_color(c_black,c_navy,0.3), c_orange];
		pstart = phase.sunrise;
		pend = phase.daytime;
	} else if (hours > phase.daytime and hours <= phase.sunset) { //Day
		darks  = [0.2, 0, 0, 0, 0.2];
		colors = [c_orange, c_orange, c_white, c_orange, c_orange];
		pstart = phase.daytime;
		pend = phase.sunset;
	} else if (hours > phase.sunset and hours <= phase.nighttime) { //Sunset
		darks  = [0.2, max_darkness];
		colors = [c_orange, c_navy, merge_color(c_black,c_navy,0.3)];
		pstart = phase.sunset;
		pend = phase.nighttime;
	} else {
		darks  = [max_darkness];
		colors = [merge_color(c_black,c_navy,0.3)];
		pstart = phase.nighttime;
		pend = phase.sunrise;
	}
}
#endregion
	
#region //Colors After Darkness and Colors Depending on Time
	if(draw_daylight){
		//Colors
		if(pstart == phase.nighttime){ light_color = colors[0]; }
		else 
		{
			var cc = ((hours - pstart) / (pend - pstart))*(array_length_1d(colors)-1);
			var c1 = colors[floor(cc)];
			var c2 = colors[ceil(cc)];
	
		light_color = merge_color(c1, c2, cc - floor(cc));
		}
	
		//Darkness
		if(pstart == phase.nighttime){ darkness = darks[0]; }
		else
		{
			var dd = ((hours - pstart) / (pend - pstart))*(array_length_1d(darks)-1);
			var d1 = darks[floor(dd)];
			var d2 = darks[ceil(dd)];
	
		darkness = merge_number(d1, d2, dd - floor(dd));
		}
	}
	#endregion
	
#region Cycle Check
if(hours >= 24){
	seconds = 0;
	day += 1;
	with(crops) { event_perform(ev_other, ev_user1) }
	if(day > 30){
		day = 1;
		season += 1;
		if(season > 4){
			season = 1;
			year += 1;
		}
	}
}
#endregion