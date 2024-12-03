
	
	if (pipe_ativado != -1) { 
		if (room == pipe_destino) {
			Obj_player.x = pipe_name.x;
			Obj_player.y = pipe_name.y + 32; 
			pipe_name = -1;
			pipe_ativado = -1;
			pipe_destino = -1;
		} 
	} 