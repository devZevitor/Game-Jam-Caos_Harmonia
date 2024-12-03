
	

	if (room == Room1) {
		instance_create_layer(x,y, "Instances_obj", Obj_control);
		instance_destroy(self);
	}
