
	if(acertos < 5) {
		instance_destroy();
		Obj_player.estado = scr_player_andando;
	} else {
		Obj_player.estado = scr_player_escondido;
	}