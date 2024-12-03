	randomize();

	areas = 2;
	quant_inimigos = 2;

	var _objs = [Obj_area_enemy_1, Obj_area_enemy_2];

	for (var i = 0; i < areas; i++) {
	   
	    var _obj = _objs[i];
		var _x1 = _obj.x1;
		var _x2 = _obj.x2;
		var _y1 = _obj.y1;
		var _y2 = _obj.y2;
		

	    for (var j = 0; j < quant_inimigos; j++) {
	        var _enemy_x = irandom_range(_x1, _x2);
	        var _enemy_y = irandom_range(_y1, _y2);

	        var _inst = instance_create_layer(_enemy_x, _enemy_y, "Instances", Obj_enemy);
	        _inst.area_index = i;
	    }
	}
