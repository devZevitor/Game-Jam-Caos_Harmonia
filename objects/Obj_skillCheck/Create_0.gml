	escala = 2;
	escala_2 = escala

	hud_xx = display_get_gui_width();
	hud_yy = display_get_gui_height();

	size_bg_x = sprite_get_width(Spr_bar_background_skillCheck) * escala;
	size_ct_x =  sprite_get_width(Spr_bar_control_skillCheck) * escala_2;
	size_point_x = sprite_get_width(Spr_ponteiro) * escala;
	
	_xx = (hud_xx / 2) - size_bg_x/2;
	_yy = hud_yy / 2;
	
	bar_right = _xx; 
	bar_left = _xx + (size_bg_x); 

	bar_c_xx = _xx; 
	bar_c_speed = 3; 
	bar_c_dir = 1;
	
	
	point_x1 = hud_xx/2 - size_point_x/2;
	point_x2 = hud_xx/2 + size_point_x/2;
	
	acertos = 0;
	
	ponteiro = Spr_ponteiro;
	alarm[1] = 360;
	
	
