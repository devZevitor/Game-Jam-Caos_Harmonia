	
	draw_self();
	draw_path(caminho, dest_x, dest_y, true);
	
	if(estado == scr_enemy_patrulhando){
		draw_text(x - 16, y - 32, "Patrulha");
	} else if (estado == scr_enemy_parado) {
		draw_text(x - 16, y - 20, "Parado");
	}  else if (estado == scr_enemy_perseguindo) {
		draw_text(x - 16, y - 20, "Perseguindo");
	}  else if (estado == scr_enemy_retornando_perseguicao) {
		draw_text(x - 16, y - 20, "retornando");
	}  else if (estado == scr_enemy_desorientado) {
		draw_text(x - 16, y - 20, "Desorientado");
	}
	
	draw_set_color(c_white)
	draw_rectangle(x - dist_min/2, y - dist_min/2, x + dist_min/2, y + dist_min/2, true);