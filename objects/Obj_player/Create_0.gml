

	estado = scr_player_andando;
	#region variaveis da movimentação
		hveloc = 0;
		vveloc = 0;
		veloc_andando = 2;
		veloc = veloc_andando;

		cima = -1;
		baixo = -1;
		esquerda = -1;
		direita = -1;
		
		veloc_dir = -1;
	#endregion
	
	#region variaveis da corrida
		veloc_correndo = 4;
		player_correndo = false;
		max_estamina = 360;
		estamina = max_estamina
	#endregion
	
	#region variaveis de esconderijos
		player_visible = true;
	#endregion

	
	