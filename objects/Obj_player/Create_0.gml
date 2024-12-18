

	estado = scr_player_andando;
	estado_agachado = false;
	barulho = 100;
	#region variaveis da movimentação
		hveloc = 0;
		vveloc = 0;
		veloc_andando = 2;
		veloc = veloc_andando;
		veloc_agachado = 1.25;

		cima = -1;
		baixo = -1;
		esquerda = -1;
		direita = -1;
		
		veloc_dir = -1;
	#endregion
	
	#region variaveis da corrida
		veloc_correndo = 4;
		player_correndo = false;
		max_estamina = 3600/4;
		estamina = max_estamina
	#endregion
	
	#region variaveis de esconderijos
		player_visible = true;
	#endregion
	
	#region variaveis de "vida"
		infectado = 0;
		timer_created = false;
	#endregion
	
	#region variaveis de items
		item_arremessado = "vazio";
	#endregion

	
	