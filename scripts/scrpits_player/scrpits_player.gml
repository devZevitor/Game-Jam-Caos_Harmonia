
	function scr_player_andando(){
		#region Movimentação basica
			cima = keyboard_check(ord("W"));
			baixo = keyboard_check(ord("S"))
	
			direita = keyboard_check(ord("D"));
			esquerda = keyboard_check(ord("A"))
	
			hveloc = (direita - esquerda);
			vveloc = (baixo - cima);
	
			veloc_dir = point_direction(x,y ,x +hveloc, y + vveloc);
			
			if hveloc != 0 or vveloc != 0 {
				veloc = 2;
			} else {
				veloc = 0;
			}
				
			hveloc = lengthdir_x(veloc, veloc_dir);
			vveloc = lengthdir_y(veloc, veloc_dir);
	
			if(place_meeting(x + hveloc,y, Obj_parent_block)){
				while(!place_meeting(x +sign(hveloc),y, Obj_parent_block)) {
					x+= sign(hveloc); 
				} 
				hveloc = 0;
			}
	
			x+= hveloc;
	
			if(place_meeting(x,y + vveloc, Obj_parent_block)){
				while(!place_meeting(x,y + sign(vveloc), Obj_parent_block)) {
					y+= sign(vveloc); 
				} 
				vveloc = 0;
			} 
	
			y+= vveloc;
			
		#endregion
		#region Corrida
			if(keyboard_check(vk_space)){	
				if(estamina > 0){
					estamina -= 6
					player_correndo = true;
					veloc = veloc_correndo;
					alarm[0] = 15;
				} 
			} else {
				veloc = veloc_andando;
				player_correndo = false;
				if(estamina < max_estamina){
					if(alarm[0] == 0){
						if(estamina >= max_estamina - 25){
							estamina = max_estamina;
						} else {
							estamina = estamina + 25;
							alarm[0] = 15;
						}
						
					}
				}
			}
		#endregion
		#region Troca de estado -> escondido
			if(object_exists(Obj_armario)){
				var _inst = instance_nearest(x,y,Obj_armario);
				
				if(place_meeting(x,y,_inst) or place_meeting(x + 1, y, _inst) or place_meeting(x, y + 1, _inst)) {
					if(keyboard_check(ord("Q"))) {
						instance_create_layer(x,y,"Instances", Obj_skillCheck_Armario);
						estado = scr_player_task;						
					}
				}
			}
		#endregion
	}
	
	function scr_player_task() {}
	
	function scr_player_escondido() {
		image_alpha = 0;
		player_visible = false;	
		
		if (keyboard_check(ord("W"))or keyboard_check(ord("S")) or keyboard_check(ord("D")) or keyboard_check(ord("A"))) {
			image_alpha = 1;
			player_visible = true;	
			estado = scr_player_andando;
		}
	}