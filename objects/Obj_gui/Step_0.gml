

	tempo_segundos = alarm[0];
	minutos = tempo_segundos div 60;
	segundos = tempo_segundos mod 60;
        
	if(Obj_player.infectado > 0.3){
		alarm[0] = room_speed * (60 * 5);
	}
	
	if(Obj_player.infectado > 0.6){
		alarm[0] = alarm[0] - (alarm[0] *.3);
	}
	
	
	if(Obj_player.infectado > 0.9){
		alarm[0] = alarm[0] - (alarm[0] *.5);
	}
	
	if(Obj_player.infectado > 1.2){
		//game over 
		show_question("Você morreu para o virus!")
	}
