	draw_set_color(c_white);
	if (object_exists(Obj_player)) {
	    if (Obj_player.infectado > 0) {       
	        tempo_formatado = string(minutos) + ":" + string(segundos);
	        draw_text(200, 200, tempo_formatado);
	    }
	}
