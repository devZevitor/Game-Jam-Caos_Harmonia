
function A_star_enemy(dest_x, dest_y, veloc) {
	
	var _x1 = x;
	var _y1 = y;
	var _x2 = (dest_x div 32)*32 + 16;
	var _y2 = (dest_y div 32)*32 + 16;
	
	if(mp_grid_path(Obj_mapa_enemy.grid, caminho, _x1, _y1, _x2, _y2, false)){
		path_start(caminho, veloc, path_action_stop, false);
	}
}

function scr_choosed_action(){
	var proximo_estado = choose(scr_enemy_parado,scr_enemy_patrulhando);
	
	if(proximo_estado == scr_enemy_parado){
		veloc = 0;
		estado = scr_enemy_parado;
		alarm[0] = irandom_range(120, 240);
	}
	
	else if(proximo_estado == scr_enemy_patrulhando) {
		
		#region calculo de destino (enemy)

			var dist_left = abs(x - areax_2);
			var dist_right = abs(x - areax_1);
			var dist_top = abs(y - areay_1);
			var dist_down = abs(y - areay_2);
			
			var max_left = x + dist_left;
			var max_right = x - dist_right;
			var max_top = y - dist_top;
			var max_dowm = y + dist_down;
			
			dest_x = random_range(max_right, max_left);
			dest_y = random_range(max_top, max_dowm);
			
			veloc = max_veloc;
			A_star_enemy(dest_x, dest_y, veloc)
			
		#endregion
		
		estado = scr_enemy_patrulhando;
		alarm[0] = irandom_range(300, 420);
	}
}

function scr_enemy_parado(){
	veloc = 0;
	path_end();
}

function scr_enemy_patrulhando(){
	var _dist_x = abs(x - dest_x)
	var _dist_y = abs(y - dest_y)
	
	if(_dist_x < veloc or _dist_y < veloc){
		x = dest_x;
		y = dest_y;
		estado = scr_choosed_action;
	}
}