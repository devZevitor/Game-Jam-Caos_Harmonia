// Os recursos de script mudaram para a v2.3.0; veja

function scr_choosed_action(){
	var proximo_estado = choose(scr_enemy_parado,scr_enemy_patrulhando);
	
	if(proximo_estado == scr_enemy_parado){
		veloc = 0;
		estado = scr_enemy_parado;
	}
	else if(proximo_estado == scr_enemy_patrulhando) {
		veloc = 2;
		estado = scr_enemy_patrulhando;
	}
}

function scr_enemy_parado(){

}

function scr_enemy_patrulhando(){

}