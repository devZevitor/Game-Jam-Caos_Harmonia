if(Obj_area_enemy_1) {
	randomize();

	areas = [Obj_area_enemy_1];
	enemies_per_area = [1];

	for (var i = 0; i < array_length_1d(areas); i++) {
	    bounds = scr_areas_enemy(areas[i]);
	    x1 = bounds[0];
	    y1 = bounds[1];
	    x2 = bounds[2];
	    y2 = bounds[3];

	    for (var j = 0; j < enemies_per_area[i]; j++) {
	        var _validation = false;
	        while (!_validation) {
	            enemy_x = irandom_range(x1 + 1, x2 - 1);
	            enemy_y = irandom_range(y1 + 1, y2 - 1);
            
	            cell_x = (enemy_x div 32) * 32 + 16;
	            cell_y = (enemy_y div 32) * 32 + 16;

	            var _obj_collision = [Obj_block, Obj_armario];
	            var collision_found = false;

	            for (var k = 0; k < array_length_1d(_obj_collision); k++) {
	                if (collision_point(cell_x, cell_y, _obj_collision[k], false, true)) {
	                    collision_found = true;
	                    break;
	                }
	            }

	            if (!collision_found) {
	                _inst = instance_create_layer(cell_x, cell_y, "Instances", Obj_enemy);
	                _inst.areax_1 = x1;
	                _inst.areax_2 = x2;
	                _inst.areay_1 = y1;
	                _inst.areay_2 = y2;
	                _validation = true;
	            }
	        }
	    }
	}
}
