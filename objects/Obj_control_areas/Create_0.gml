	randomize();
	
	areas = [Obj_area_enemy_1, Obj_area_enemy_2, Obj_area_enemy_3];
	enemies_per_area = [3, 2, 1]; 

	for (var i = 0; i < array_length_1d(areas); i++) {
	    bounds = scr_areas_enemy(areas[i]);
	    x1 = bounds[0];
	    y1 = bounds[1];
	    x2 = bounds[2];
	    y2 = bounds[3];
    
	    for (var j = 0; j < enemies_per_area[i]; j++) {
	        enemy_x = irandom_range(x1, x2 - 1); 
	        enemy_y = irandom_range(y1, y2 - 1); 
        
	        _inst = instance_create_layer(enemy_x, enemy_y, "Instances", Obj_enemy);
	    }
	}
