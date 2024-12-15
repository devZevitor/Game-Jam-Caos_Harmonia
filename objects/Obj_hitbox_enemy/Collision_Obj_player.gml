
	other.infectado += 0.3;
	instance_destroy(self);
	
	if ( instance_exists(Obj_timer)) { Obj_timer.controle = false; }