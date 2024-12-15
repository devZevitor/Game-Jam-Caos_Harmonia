	
	pipe_ativado = -1;
	pipe_name = -1;
	pipe_destino = -1;		
		
	global.inicialize_game = false;
	if(global.inicialize_game == false){
		instance_create_layer(x,y, "Instances_obj", Obj_camera);	
		instance_create_layer(x,y, "Instances_obj", Obj_control_areas);
	}