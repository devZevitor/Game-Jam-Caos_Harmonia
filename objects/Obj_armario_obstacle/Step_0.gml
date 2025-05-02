if(status == true && used = false){
	sprite_index = Spr_armario_obstacle_caindo
	if(fim_da_animacao()){
		sprite_index = Spr_armario_obstacle_caido
		y = y + 64
		
		
		var grid_ref = Obj_mapa_enemy.grid;

		var _cell_t = 32;
		var _sizex = sprite_get_width(sprite_index);
		var _sizey = sprite_get_height(sprite_index);

		var number_cell_h = ceil(_sizex / _cell_t);
		var number_cell_v = ceil(_sizey / _cell_t);

		for (var j = 0; j < number_cell_h; j++) {
		    for (var k = 0; k < number_cell_v; k++) {
		        var cell_x = (x div _cell_t) + j;
		        var cell_y = (y div _cell_t) + k;
        
		        mp_grid_add_cell(grid_ref, cell_x, cell_y);
		    }
		}

		
		
		used = true;
	}
}
