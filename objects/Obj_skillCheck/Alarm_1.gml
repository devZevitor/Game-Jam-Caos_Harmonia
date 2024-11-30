
	if(acertos < 3) {
		instance_destroy(self);
		Obj_player.estado = scr_player_andando;
	} else {
		Obj_player.estado = scr_player_escondido;
	}