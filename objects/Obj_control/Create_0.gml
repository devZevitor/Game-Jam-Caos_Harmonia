	
	room_2 = false;
	
	pipe_ativado = -1;
	pipe_name = -1;
	pipe_destino = -1;		
		
	global.inicialize_game = false;
	if(global.inicialize_game == false){
		instance_create_layer(x,y, "Instances_obj", Obj_camera);	
		instance_create_layer(x,y, "Instances_obj", Obj_inventario);
		instance_create_layer(x,y, "Instances_obj", Obj_control_areas);
		#region create items
			var _item1 = instance_create_layer(128,128, "Instances_obj", Obj_item);
			_item1.quantidade = 1;
			_item1.sprite_index = Spr_Items;
			_item1.image_index = Items.faca;
	
	
			var _item2 = instance_create_layer(222,225, "Instances_obj", Obj_item);
			_item2.quantidade = 1;
			_item2.sprite_index = Spr_Items;
			_item2.image_index = Items.alcool;	
		#endregion
	}
	
	enum Item_save {
		Object,
		pos_x,
		pos_y,
		id_room,
		index,
		sprite,
		altura
	}
	
	grid_save = ds_grid_create(3, 1);
	
	