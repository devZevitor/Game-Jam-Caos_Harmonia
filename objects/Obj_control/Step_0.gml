
	
	if (pipe_ativado != -1) { 
		if (room == pipe_destino) {
			Obj_player.x = pipe_name.x;
			Obj_player.y = pipe_name.y + 32;
			pipe_name = -1;
			pipe_ativado = -1;
			pipe_destino = -1;	
			
			ds_save_items_exits()
		} 
	} 
	
	if(room == Room2 && room_2 == false){
		instance_create_layer(x,y, "Instances_obj", Obj_control_areas);
		room_2 = true;
	}
	
	