
	if(keyboard_check_pressed(vk_space)){
		progresso+=0.3;
	}
	
	if (alarm[0] <= 0) {
		if(progresso > 0){
			progresso-=0.25;
			alarm[0] = time;
		} else {
			progresso = 0;
		}
	}
	
	
	var _barra = barra_progresso_escala * progresso;	
	if(_barra >= 99 * escala){
		Obj_pai_pipe.sucesso = true;
		instance_destroy(self);
	}
	
	if(alarm[1] <= 0){
		if(_barra < 99 * escala){
			Obj_pai_pipe.sucesso = false;
			instance_destroy(self);
		}
	}