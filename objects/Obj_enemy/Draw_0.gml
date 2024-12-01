	
	draw_self();
	draw_path(caminho, dest_x, dest_y, true);
	
	if(estado == scr_enemy_patrulhando){
		draw_text(x - 16, y - 32, "Patrulha");
	} else {
		draw_text(x - 16, y - 20, "Parado");
	}