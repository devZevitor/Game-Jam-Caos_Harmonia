
	var _barra_limite = barra_limite_y * escala;
	var _xx = barra_limite_x*0.5;
	var _yy = hud_yy - ((barra_limite_y*0.2) * escala )- (barra_limite_y * escala);

	var _time = alarm[1] / 60; 
	draw_text(_xx + (barra_limite_x  * 1.2)* escala, _yy + _barra_limite, string(_time) + " segundos");
	draw_sprite_ext(Spr_progresso,0,_xx, _yy, escala, escala, 0, c_white, 1);
	draw_sprite_ext(Spr_barra_progresso,0,_xx, _yy + _barra_limite, escala, progresso, 0, c_white, 1);