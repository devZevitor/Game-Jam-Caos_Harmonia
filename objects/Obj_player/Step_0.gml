
	script_execute(estado);
	
	
	#region Coletando items
		if(instance_exists(Obj_item)){
			var _inst = instance_nearest(x,y, Obj_item);
			if(distance_to_point(_inst.x, _inst.y) < 15){
				if(keyboard_check_pressed(ord("F"))){
					ds_grid_add_item(_inst.nome,_inst.image_index, _inst.quantidade, _inst.sprite_index, _inst.arremessavel);
					instance_destroy(_inst);
				}
			}
		}
	#endregion
	
	#region player infectado
	
		if(infectado > 0){
			if(timer_created == false){
				instance_create_layer(x,y, "Instances_obj", Obj_timer);
				timer_created = true;
			}
		}
	
	#endregion
	
	
	