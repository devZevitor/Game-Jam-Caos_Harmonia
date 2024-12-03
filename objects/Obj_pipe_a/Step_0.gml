
		if(ativado == false) {
		if(object_exists(Obj_player)){
			if(point_distance(x,y, Obj_player.x, Obj_player.y <= 3)) {
				if(keyboard_check_pressed(ord("E"))){
					Obj_control.pipe_ativado = true;
					Obj_control.pipe_name = object_index;
					Obj_control.pipe_destino = destino;
					
					
					room_goto(destino);		
					instance_destroy(self);
					ativado = true;
				}
			}
		}
	}	 