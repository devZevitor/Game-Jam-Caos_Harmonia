	
	escala = 2;
	escala_2 = escala

	hud_xx = display_get_gui_width();
	hud_yy = display_get_gui_height();

	size_bg_y = sprite_get_height(Spr_bar_background_skillCheck) * escala;
	size_bg_x = sprite_get_width(Spr_bar_background_skillCheck) * escala;
	size_ct_x =  sprite_get_width(Spr_bar_control_skillCheck) * escala_2;
	size_point_x = sprite_get_width(Spr_ponteiro) * escala;
	
	ponteiro = Spr_ponteiro;
	
	barra_largura = hud_xx;  
	barra_altura = hud_yy*.2;       
	barra_valor = barra_largura; 
	
	_xx = (hud_xx / 2) - size_bg_x/2;
	_yy = hud_yy - barra_altura/4 - size_bg_y;
	
	bar_right = _xx; 
	bar_left = _xx + (size_bg_x/escala)*escala_2; 

	bar_c_xx = _xx; 
	bar_c_speed = 4; 
	bar_c_dir = 1;
	
	
	point_x1 = hud_xx/2 - size_point_x/2;
	point_x2 = hud_xx/2 + size_point_x/2;
	pointer_alpha= 1;
	
	acertos = 0;
	speed_veloc = 0.3;
	
	barra_x = 0;
	barra_y = hud_yy - barra_altura/6;
	
	alarm[1] = 360;

	
	
