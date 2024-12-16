
	veloc *= other.desaceleracao;
	tempo_desorientado = other.tempo;
	
	alarm[3] = 70;
	instance_destroy(other);