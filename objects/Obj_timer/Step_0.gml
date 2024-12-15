
	var _infectado = Obj_player.infectado;
	#region player infectado
		
		if(_infectado >= 0 && _infectado <= 0.3){
			if(alarm[0] <= 0){
				alarm[0] = 5 * 60 *room_speed;
			}
		}
		
		if(_infectado >= 0.4 && _infectado <= 0.6){
			if(controle == false){
				alarm[0] -= alarm[0] * 0.3;
				controle = true;
			}			
		}
		
		if(_infectado >= 0.7 && _infectado <= 0.9){
			if(controle ==  false){
				alarm[0] -= alarm[0] * 0.5;
				controle = true;
			}
		}
		
		if(_infectado > 0.9){
			game_restart();
		}
	
	#endregion
	if (alarm[0] > 0) {
	    var time = alarm[0] / room_speed; 
    
	    var minutos = time div 60;         
	    var segundos = time mod 60;       

	    time_string = string_format(minutos, 2, 0) + ":" + string_format(segundos, 2, 0);
	}
	
	if(alarm[0] <= 0){
		game_restart(); //game over
	}
