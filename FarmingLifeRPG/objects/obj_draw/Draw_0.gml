/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AA2EEFF
/// @DnDArgument : "code" "if(ds_exists(ds_depthgrid, ds_type_grid)){$(13_10)	$(13_10)	var depthgrid = ds_depthgrid;$(13_10)	var instNum = instance_number(parent);$(13_10)	$(13_10)	ds_grid_resize(depthgrid, 2, instNum);$(13_10)	$(13_10)	var yy = 0;$(13_10)	$(13_10)	with(parent){$(13_10)		$(13_10)		depthgrid[# 0, yy] = id;$(13_10)		$(13_10)		depthgrid[# 1, yy] = y;$(13_10)		$(13_10)		yy++;$(13_10)	}$(13_10)	$(13_10)	ds_grid_sort(ds_depthgrid, 1, true);$(13_10)	$(13_10)	yy = 0; repeat(instNum){$(13_10)		var instID =  ds_depthgrid[# 0, yy];$(13_10)		$(13_10)		with(instID){$(13_10)			event_perform(ev_draw, 0)$(13_10)		}$(13_10)		$(13_10)		yy++;$(13_10)	}$(13_10)	$(13_10)	ds_grid_clear(ds_depthgrid, 0);$(13_10)}"
if(ds_exists(ds_depthgrid, ds_type_grid)){
	
	var depthgrid = ds_depthgrid;
	var instNum = instance_number(parent);
	
	ds_grid_resize(depthgrid, 2, instNum);
	
	var yy = 0;
	
	with(parent){
		
		depthgrid[# 0, yy] = id;
		
		depthgrid[# 1, yy] = y;
		
		yy++;
	}
	
	ds_grid_sort(ds_depthgrid, 1, true);
	
	yy = 0; repeat(instNum){
		var instID =  ds_depthgrid[# 0, yy];
		
		with(instID){
			event_perform(ev_draw, 0)
		}
		
		yy++;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
}