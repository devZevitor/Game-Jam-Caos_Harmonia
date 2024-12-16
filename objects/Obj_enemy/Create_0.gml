
	estado = scr_choosed_action;
	alarm[0] = -1;
	
	#region variaveis de movimentação
		dest_x = 0;
		dest_y = 0;
		max_veloc =1;
		veloc = 0;
	
		areax_1 = -1;
		areax_2 = -1;
		areay_1 = -1;
		areay_2 = -1;
		
		caminho = path_add();
	#endregion
	
	dist_min = 100;
	enemy_x = x;
	enemy_y = y;
	
	tempo_ataque = true;
	player_x = 0
	player_y = 0;
	
	tempo_desorientado = 0;
	
	
	
	