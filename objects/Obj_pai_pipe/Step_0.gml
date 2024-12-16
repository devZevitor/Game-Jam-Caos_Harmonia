
	if(ativado == false) {
		if(object_exists(Obj_player)){
			if((point_distance(x,y, Obj_player.x, Obj_player.y) <= 33) or (place_meeting(x,y,Obj_player))) {
				if(keyboard_check_pressed(ord("E"))){
					Obj_player.estado = scr_player_task;
					instance_create_layer(x,y, "Instances",Obj_skillCheck_Tubulacao)
				}
			}
		}
	}	
	
	if(sucesso == true){
		Obj_control.pipe_ativado = true;
		Obj_control.pipe_name = object_index;
		Obj_control.pipe_destino = destino;
					
		Obj_control.number_x = number_x;
		Obj_control.number_y = number_y;
		
		ds_save_items_room()
									
		room_goto(destino);		
		instance_destroy(self);
		ativado = true;
	}

