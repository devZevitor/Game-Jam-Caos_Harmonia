
	x += bar_c_speed * bar_c_dir;

	if (x <= bar_right || (x + size_ct_x ) >= bar_left) {
	    bar_c_dir *= -1;
		bar_c_speed = bar_c_speed + (bar_c_speed * 0.2)
	}
	
	if (keyboard_check_pressed(vk_space)) {
	bar_c_speed = bar_c_speed + (bar_c_speed * 0.2)
	
		if (place_meeting(x,y, Obj_ponteiro)) {
		    Obj_ponteiro.image_index = Spr_ponteiro_acerto;
		    acertos++;
		} else {
		    // Falha de colisão
		    Obj_ponteiro.image_index = Spr_ponteiro_erro;
		    show_message("Falha!");
		}
	}