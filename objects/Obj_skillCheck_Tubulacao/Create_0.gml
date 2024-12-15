
	hud_xx = display_get_gui_width();
	hud_yy = display_get_gui_height();
	
	escala = 2;
	progresso = 0;
	veloc_progresso = 0.2;
	time = 15;
	
	barra_progresso = sprite_get_height(Spr_barra_progresso);
	barra_progresso_escala = barra_progresso;
	
	barra_limite_y = sprite_get_height(Spr_progresso);
	barra_limite_x = sprite_get_width(Spr_progresso);
	sucesso = false;
	
	alarm[1] = 100;